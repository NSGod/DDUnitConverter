//
//  DDTorqueUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDTorqueUnitConverter.h"
#import "NSDecimalNumber+DDConstants.h"

@implementation DDUnitConverter (DDTorqueUnitConverter)

+ (instancetype)newTorqueUnitConverter {
	return [[DDTorqueUnitConverter alloc] init];
}

@end


@implementation DDTorqueUnitConverter

- (NSString *)title {
  return NSLocalizedString(@"Torque", @"Title for Torque unit converter");
}

- (NSArray<DDUnitDetails *> *)allUnitsListInternal {
  return @[[DDUnitDetails newUnitWithDisplayName:@"Dyne Centimeter" symbol:@"" unit:DDTorqueUnitDyneCentimeters],
           [DDUnitDetails newUnitWithDisplayName:@"Gram Force Centimeter" symbol:@"" unit:DDTorqueUnitGramForceCentimeters],
           [DDUnitDetails newUnitWithDisplayName:@"Kg Force Centimeter" symbol:@"kgf.cm" unit:DDTorqueUnitKilogramForceCentimeters],
           [DDUnitDetails newUnitWithDisplayName:@"Kg Force Meter" symbol:@"kgf.m" unit:DDTorqueUnitKilogramForceMeters],
           [DDUnitDetails newUnitWithDisplayName:@"Newton Centimeter" symbol:@"Ncm" unit:DDTorqueUnitNewtonCentimeters],
           [DDUnitDetails newUnitWithDisplayName:@"Newter Meter" symbol:@"Nm" unit:DDTorqueUnitNewtonMeters],
           [DDUnitDetails newUnitWithDisplayName:@"Ounce Force Inch" symbol:@"" unit:DDTorqueUnitOunceForceInches],
           [DDUnitDetails newUnitWithDisplayName:@"Poundal Feet" symbol:@"" unit:DDTorqueUnitPoundalFeet],
           [DDUnitDetails newUnitWithDisplayName:@"Pound Force Foot" symbol:@"lbsf.ft" unit:DDTorqueUnitPoundForceFeet],
           [DDUnitDetails newUnitWithDisplayName:@"Pound Force Inch" symbol:@"lbsf.in" unit:DDTorqueUnitPoundForceInches]];
}

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDTorqueUnitDyneCentimeters:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-7 isNegative:NO]; break;
		case DDTorqueUnitGramForceCentimeters:
			multiplier = [[NSDecimalNumber gConstant_dd] decimalNumberByMultiplyingByPowerOf10:-5]; break;
		case DDTorqueUnitKilogramForceCentimeters:
			multiplier = [[NSDecimalNumber gConstant_dd] decimalNumberByMultiplyingByPowerOf10:-2]; break;
		case DDTorqueUnitKilogramForceMeters:
			multiplier = [NSDecimalNumber gConstant_dd]; break;
		case DDTorqueUnitNewtonCentimeters:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-2 isNegative:NO]; break;
		case DDTorqueUnitNewtonMeters:
			break;
		case DDTorqueUnitOunceForceInches:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:7061551540454 exponent:-15 isNegative:NO]; break;
		case DDTorqueUnitPoundalFeet:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:4214011 exponent:-8 isNegative:NO]; break;
		case DDTorqueUnitPoundForceFeet:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:135581795 exponent:-8 isNegative:NO]; break;
		case DDTorqueUnitPoundForceInches:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:112984824647273 exponent:-15 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

@end
