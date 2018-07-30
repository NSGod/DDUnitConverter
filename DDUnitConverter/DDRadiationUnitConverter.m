//
//  DDRadiationUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDRadiationUnitConverter.h"

@implementation DDUnitConverter (DDRadiationUnitConverter)

+ (instancetype)newRadiationUnitConverter {
	return [[DDRadiationUnitConverter alloc] init];
}

@end


@implementation DDRadiationUnitConverter

- (NSString *)title {
  return NSLocalizedString(@"Radiation", @"Title for Radiation unit converter");
}

- (NSArray<DDUnitDetails *> *)allUnitsListInternal {
  return @[[DDUnitDetails newUnitWithDisplayName:@"Becquerel" symbol:@"Bq" unit:DDRadiationUnitBecquerels],
           [DDUnitDetails newUnitWithDisplayName:@"Curie" symbol:@"Ci" unit:DDRadiationUnitCuries],
           [DDUnitDetails newUnitWithDisplayName:@"Rutherford" symbol:@"Rd" unit:DDRadiationUnitRutherfords]];
}

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDRadiationUnitBecquerels:
			break;
		case DDRadiationUnitCuries:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:37 exponent:9 isNegative:NO]; break;
    case DDRadiationUnitRutherfords:
      multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:6 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

@end
