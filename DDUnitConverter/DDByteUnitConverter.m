//
//  DDByteUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDByteUnitConverter.h"

@implementation DDUnitConverter (DDByteUnitConverter)

+ (instancetype)newByteUnitConverter {
	return [[DDByteUnitConverter alloc] init];
}

@end


@implementation DDByteUnitConverter

- (NSArray<DDUnitDetails *> *)allUnitsList {
  return @[[DDUnitDetails unitWithDisplayName:@"Bit" symbol:@"b" unit:DDByteUnitBit],
           [DDUnitDetails unitWithDisplayName:@"Crumb" symbol:@"crumb" unit:DDByteUnitCrumb],
           [DDUnitDetails unitWithDisplayName:@"Nibble" symbol:@"nibble" unit:DDByteUnitNibble],
           [DDUnitDetails unitWithDisplayName:@"Byte" symbol:@"B" unit:DDByteUnitByte],
           [DDUnitDetails unitWithDisplayName:@"Decabyte" symbol:@"DB" unit:DDByteUnitDecabyte],
           [DDUnitDetails unitWithDisplayName:@"Hectobyte" symbol:@"HB" unit:DDByteUnitHectobyte],
           [DDUnitDetails unitWithDisplayName:@"Kilobyte" symbol:@"KB" unit:DDByteUnitKilobyte],
           [DDUnitDetails unitWithDisplayName:@"Megabyte" symbol:@"MB" unit:DDByteUnitMegabyte],
           [DDUnitDetails unitWithDisplayName:@"Gigabyte" symbol:@"GB" unit:DDByteUnitGigabyte],
           [DDUnitDetails unitWithDisplayName:@"Terabyte" symbol:@"TB" unit:DDByteUnitTerabyte],
           [DDUnitDetails unitWithDisplayName:@"Petabyte" symbol:@"PB" unit:DDByteUnitPetabyte],
           [DDUnitDetails unitWithDisplayName:@"Exabyte" symbol:@"EB" unit:DDByteUnitExabyte],
           [DDUnitDetails unitWithDisplayName:@"Zettabyte" symbol:@"ZB" unit:DDByteUnitZettabyte],
           [DDUnitDetails unitWithDisplayName:@"Yottabyte" symbol:@"YB" unit:DDByteUnitYottabyte],
           [DDUnitDetails unitWithDisplayName:@"Kibibyte" symbol:@"Ki" unit:DDByteUnitKibibyte],
           [DDUnitDetails unitWithDisplayName:@"Mebibyte" symbol:@"Mi" unit:DDByteUnitMebibyte],
           [DDUnitDetails unitWithDisplayName:@"Gibibyte" symbol:@"Gi" unit:DDByteUnitGibibyte],
           [DDUnitDetails unitWithDisplayName:@"Tebibyte" symbol:@"Ti" unit:DDByteUnitTebibyte],
           [DDUnitDetails unitWithDisplayName:@"Pebibyte" symbol:@"Pi" unit:DDByteUnitPebibyte],
           [DDUnitDetails unitWithDisplayName:@"Exbibyte" symbol:@"Ei" unit:DDByteUnitExbibyte]];
}

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDByteUnitBit:
			break;
		case DDByteUnitCrumb:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:2 exponent:0 isNegative:NO]; break;
		case DDByteUnitNibble:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:4 exponent:0 isNegative:NO]; break;
		case DDByteUnitByte:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:8 exponent:0 isNegative:NO]; break;
			
		case DDByteUnitDecabit:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:1 isNegative:NO]; break;
		case DDByteUnitHectobit:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:2 isNegative:NO]; break;
		case DDByteUnitKilobit:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:3 isNegative:NO]; break;
		case DDByteUnitMegabit:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:6 isNegative:NO]; break;
		case DDByteUnitGigabit:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:9 isNegative:NO]; break;
		case DDByteUnitTerabit:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:12 isNegative:NO]; break;
		case DDByteUnitPetabit:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:15 isNegative:NO]; break;
		case DDByteUnitExabit:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:18 isNegative:NO]; break;
		case DDByteUnitZettabit:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:21 isNegative:NO]; break;
		case DDByteUnitYottabit:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:24 isNegative:NO]; break;
			
		case DDByteUnitDecabyte:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:8 exponent:1 isNegative:NO]; break;
		case DDByteUnitHectobyte:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:8 exponent:2 isNegative:NO]; break;
		case DDByteUnitKilobyte:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:8 exponent:3 isNegative:NO]; break;
		case DDByteUnitMegabyte:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:8 exponent:6 isNegative:NO]; break;
		case DDByteUnitGigabyte:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:8 exponent:9 isNegative:NO]; break;
		case DDByteUnitTerabyte:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:8 exponent:12 isNegative:NO]; break;
		case DDByteUnitPetabyte:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:8 exponent:15 isNegative:NO]; break;
		case DDByteUnitExabyte:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:8 exponent:18 isNegative:NO]; break;
		case DDByteUnitZettabyte:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:8 exponent:21 isNegative:NO]; break;
		case DDByteUnitYottabyte:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:8 exponent:24 isNegative:NO]; break;
			
		case DDByteUnitKibibit:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:(1ULL << 10) exponent:0 isNegative:NO]; break;
		case DDByteUnitMebibit:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:(1ULL << 20) exponent:0 isNegative:NO]; break;
		case DDByteUnitGibibit:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:(1ULL << 30) exponent:0 isNegative:NO]; break;
		case DDByteUnitTebibit:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:(1ULL << 40) exponent:0 isNegative:NO]; break;
		case DDByteUnitPebibit:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:(1ULL << 50) exponent:0 isNegative:NO]; break;
		case DDByteUnitExbibit:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:(1ULL << 60) exponent:0 isNegative:NO]; break;
//		case DDByteUnitZebibit:
//			multiplier = [NSDecimalNumber decimalNumberWithMantissa:(1ULL << 70) exponent:0 isNegative:NO]; break; //overflows, unreliable
//		case DDByteUnitYobibit:
//			multiplier = [NSDecimalNumber decimalNumberWithMantissa:(1ULL << 80) exponent:0 isNegative:NO]; break; //overflows, unreliable
			
		case DDByteUnitKibibyte:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:(8ULL << 10) exponent:0 isNegative:NO]; break;
		case DDByteUnitMebibyte:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:(8ULL << 20) exponent:0 isNegative:NO]; break;
		case DDByteUnitGibibyte:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:(8ULL << 30) exponent:0 isNegative:NO]; break;
		case DDByteUnitTebibyte:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:(8ULL << 40) exponent:0 isNegative:NO]; break;
		case DDByteUnitPebibyte:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:(8ULL << 50) exponent:0 isNegative:NO]; break;
		case DDByteUnitExbibyte:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:(8ULL << 60) exponent:0 isNegative:NO]; break;
//		case DDByteUnitZebibyte:
//			multiplier = [NSDecimalNumber decimalNumberWithMantissa:(8ULL << 70) exponent:0 isNegative:NO]; break; //overflows, unreliable
//		case DDByteUnitYobibyte:
//			multiplier = [NSDecimalNumber decimalNumberWithMantissa:(8ULL << 80) exponent:0 isNegative:NO]; break; //overflows, unreliable
		default:
			break;
	}
	return multiplier;
}

- (NSString *)title {
  return NSLocalizedString(@"Computer Data", @"Title for Byte unit converter");
}

@end
