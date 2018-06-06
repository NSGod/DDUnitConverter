//
//  DDUnitDetails.m
//  DDUnitConverter
//
//  Created by Agarwal, Udit on 7/29/17.
//

#import "DDUnitDetails.h"

@interface DDUnitDetails ()

@property (nonatomic) NSNumber *unitNumber;

@end

@implementation DDUnitDetails

+ (instancetype)newUnitWithDisplayName:(NSString *)displayName
                                symbol:(NSString *)symbol
                                  unit:(DDUnit)unit {
  DDUnitDetails *unitDetails = [DDUnitDetails new];
  unitDetails.displayName = displayName;
  unitDetails.symbol = symbol;
  unitDetails.unitNumber = @(unit);
  return unitDetails;
}

- (DDUnit)unit {
  return self.unitNumber.integerValue;
}

@end
