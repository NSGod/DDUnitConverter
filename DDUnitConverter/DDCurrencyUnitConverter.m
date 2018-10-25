//
//  DDCurrencyUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDCurrencyUnitConverter.h"
#import <dispatch/dispatch.h>

NSString * const DDHTTPErrorDomain = @"DDHTTPErrorDomain";
NSString * const DDHTTPResponseKey = @"DDHTTPResponseKey";
static NSMutableDictionary *_DDCurrencyExchangeRates = nil;
static NSMutableArray *_DDCurrencyNames = nil;

@interface DDCurrencyFetcher : NSObject

@property (nonatomic, strong) NSMutableArray *pendingHandlers;

+ (instancetype)sharedCurrencyFetcher;

- (void)fetchWithCompletionHandler:(void(^)(NSError *error))handler;
- (void)fetchInitialRatesAndWaitIfNecessary;

@end

@implementation DDCurrencyFetcher {
    BOOL _currentlyFetching;
    dispatch_queue_t _fetchQueue;
}

+ (instancetype)sharedCurrencyFetcher {
    static DDCurrencyFetcher *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[DDCurrencyFetcher alloc] init];
    });
    return shared;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _pendingHandlers =[@[] mutableCopy];
        _fetchQueue = dispatch_queue_create("com.davedelong.currencyFetcher", DISPATCH_QUEUE_SERIAL);
    }
    return self;
}

- (void)fetchWithCompletionHandler:(void (^)(NSError *))handler {
    dispatch_async(_fetchQueue, ^{
        if (handler != nil) {
            [self.pendingHandlers addObject:[handler copy]];
        }
        
        if (_currentlyFetching == NO) {
            [self _onqueue_fetchCurrencies];
        }
    });
}

- (void)fetchInitialRatesAndWaitIfNecessary {
    dispatch_semaphore_t signal = dispatch_semaphore_create(0);
    
    dispatch_sync(_fetchQueue, ^{
        if (_currentlyFetching == YES || _DDCurrencyExchangeRates.count == 0) {
            [self fetchWithCompletionHandler:^(NSError *error) {
                dispatch_semaphore_signal(signal);
            }];
        } else {
            dispatch_semaphore_signal(signal);
        }
    });
    
    dispatch_semaphore_wait(signal, DISPATCH_TIME_FOREVER);
}

- (void)_onqueue_fetchCurrencies {
    _currentlyFetching = YES;
    NSURL *imfURL = [NSURL URLWithString:@"http://www.imf.org/external/np/fin/data/rms_five.aspx?tsvflag=Y"];
    NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithURL:imfURL completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
        dispatch_async(_fetchQueue, ^{
            NSError *callbackError = nil;
            
            if (error != nil) {
                callbackError = error;
            } else if (httpResponse.statusCode < 200 || httpResponse.statusCode >= 300) {
                // turn the response into an error
                NSDictionary *userInfo = @{DDHTTPResponseKey: httpResponse};
                callbackError = [NSError errorWithDomain:DDHTTPErrorDomain code:httpResponse.statusCode userInfo:userInfo];
            } else {
                NSAssert(data.length > 0, @"Received empty data but did not receive an error?");
                NSString *rawCurrencyTSV = [[NSString alloc] initWithData:data encoding:NSMacOSRomanStringEncoding];
                [self _onqueue_handleString:rawCurrencyTSV];
            }
            [self _onqueue_performCallbacks:callbackError];
            _currentlyFetching = NO;
        });
    }];
    [task resume];
}

- (void)_onqueue_handleString:(NSString *)tsvString {
    NSArray *lines = [tsvString componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    BOOL parsingExchangeRateSection = NO;
    
    for (NSString *line in lines) {
        if (line.length == 0) { continue; }
        
        if (parsingExchangeRateSection == NO ) {
            if ([line hasPrefix:@"Currency"]) {
                // A row starting with "Currency" is how we find the start of the exchange rate section
                parsingExchangeRateSection = YES;
            }
            continue;
        }
        
        if (parsingExchangeRateSection == YES && [line hasPrefix:@"Currency"]) {
            // we've reached the end of the exchange rate section, so we're done parsing
            break;
        }
        
        
        NSArray *fields = [line componentsSeparatedByString:@"\t"];
        NSString *currencyName = fields[0];
        
        double conversionValue = 0.0f;
        for (NSInteger fieldIndex = 1; fieldIndex < fields.count; ++fieldIndex) {
            NSString *field = fields[fieldIndex];
            if (field.length > 0) {
                conversionValue = field.doubleValue;
                break;
            }
        }
        
        if (conversionValue - 0.0 <= 0.0000001 ) {
            continue;
        }
        _DDCurrencyExchangeRates[currencyName] = [NSDecimalNumber decimalNumberWithDecimal:@(conversionValue).decimalValue];
    }
    
    [self _onqueue_performCallbacks:nil];
}

- (void)_onqueue_performCallbacks:(NSError *)error {
    NSArray *handlers = [self.pendingHandlers copy];
    [self.pendingHandlers removeAllObjects];
    
    dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INTERACTIVE, 0), ^{
        for (void(^handler)(NSError *) in handlers) {
            handler(error);
        }
    });
}

@end

@implementation DDUnitConverter (DDCurrencyUnitConverter)

+ (instancetype)newCurrencyUnitConverter {
    return [[DDCurrencyUnitConverter alloc] init];
}

@end


@implementation DDCurrencyUnitConverter

- (NSArray<DDUnitDetails *> *)allUnitsListInternal {
    NSMutableArray *list = [@[] mutableCopy];
    DDCurrencyUnit unit= 0;
    
    NSArray *allCurrencies =
    [_DDCurrencyExchangeRates.allKeys sortedArrayUsingComparator:^NSComparisonResult(NSString *obj1, NSString * obj2) {
        return [obj1 compare:obj2];
    }];
    
    for (NSString *currencyName in allCurrencies) {
        [_DDCurrencyNames addObject:currencyName];
        DDUnitDetails *unitDetails = [DDUnitDetails newUnitWithDisplayName:currencyName
                                                                    symbol:@""
                                                                      unit:unit];
        [list addObject:unitDetails];
        unit++;
    }
    
    return list;
}

+ (void)initialize {
    if (self == [DDCurrencyUnitConverter class]) {
        _DDCurrencyExchangeRates = [[NSMutableDictionary alloc] init];
        _DDCurrencyNames = [[NSMutableArray alloc] init];
        [[DDCurrencyFetcher sharedCurrencyFetcher] fetchWithCompletionHandler:nil];
    }
}

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
    NSDecimalNumber *multiplier = [NSDecimalNumber one];
    if (unit < DDCurrencyUnitSDR) {
        NSString *name = _DDCurrencyNames[unit];
        multiplier = [_DDCurrencyExchangeRates objectForKey:name];
        if (multiplier == nil) {
            NSLog(@"unknown currency: %@ (%lu)", name, unit);
            multiplier = [NSDecimalNumber one];
        }
    }
    return multiplier;
}

- (NSNumber *)convertNumber:(NSNumber *)number fromUnit:(DDUnit)from toUnit:(DDUnit)to {
    [[DDCurrencyFetcher sharedCurrencyFetcher] fetchInitialRatesAndWaitIfNecessary];
    return [super convertNumber:number fromUnit:from toUnit:to];
}

- (void)refreshExchangeRates {
    [[DDCurrencyFetcher sharedCurrencyFetcher] fetchWithCompletionHandler:nil];
}

- (void)refreshExchangeRatesWithCompletion:(void (^)(NSError *))completionHandler {
    [[DDCurrencyFetcher sharedCurrencyFetcher] fetchWithCompletionHandler:completionHandler];
}

- (NSString *)title {
    return NSLocalizedString(@"Currency", @"Title for Currency unit converter");
}

@end
