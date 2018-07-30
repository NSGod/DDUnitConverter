//
//  DDUnitDetails.h
//  DDUnitConverter
//
//  Created by Agarwal, Udit on 7/29/17.
//

#import <Foundation/Foundation.h>

typedef NSInteger DDUnit;

@interface DDUnitDetails : NSObject

@property (nonatomic, assign) NSString *displayName;
@property (nonatomic, assign) NSString *symbol;
- (DDUnit)unit;

+ (instancetype)newUnitWithDisplayName:(NSString *)displayName
                                symbol:(NSString *)symbol
                                  unit:(DDUnit)unit;

@end
