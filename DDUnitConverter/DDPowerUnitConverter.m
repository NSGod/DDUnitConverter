//
//  DDPowerUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDPowerUnitConverter.h"
#import "NSDecimalNumber+DDConstants.h"

@implementation DDUnitConverter (DDPowerUnitConverter)

+ (instancetype)newPowerUnitConverter {
	return [[DDPowerUnitConverter alloc] init];
}

@end


@implementation DDPowerUnitConverter

- (NSString *)title {
  return NSLocalizedString(@"Power", @"Title for Power unit converter");
}

- (NSArray<DDUnitDetails *> *)allUnitsList {
  return @[[DDUnitDetails newUnitWithDisplayName:@"Calorie Per Second" symbol:@"cal/s" unit:DDPowerUnitCaloriePerSecond],
           [DDUnitDetails newUnitWithDisplayName:@"Foot Pound Force Per Second" symbol:@"lbf/s" unit:DDPowerUnitFootPoundForcesPerSecond],
           [DDUnitDetails newUnitWithDisplayName:@"Horsepower" symbol:@"hp" unit:DDPowerUnitHorsepower],
           [DDUnitDetails newUnitWithDisplayName:@"Joules Per Second" symbol:@"J/s" unit:DDPowerUnitJoulesPerSecond],
           [DDUnitDetails newUnitWithDisplayName:@"Kilogram Force Meter Per Second"
                                       symbol:@"kgf/s"
                                         unit:DDPowerUnitKilogramForceMetersPerSecond],
           [DDUnitDetails newUnitWithDisplayName:@"Kilowatt" symbol:@"" unit:DDPowerUnitKilowatts],
           [DDUnitDetails newUnitWithDisplayName:@"Lusec" symbol:@"" unit:DDPowerUnitLusec],
           [DDUnitDetails newUnitWithDisplayName:@"Megawatt" symbol:@"" unit:DDPowerUnitMegawatts],
           [DDUnitDetails newUnitWithDisplayName:@"Metric Horsepower" symbol:@"" unit:DDPowerUnitMetricHorsepower],
           [DDUnitDetails newUnitWithDisplayName:@"Microwatt" symbol:@"" unit:DDPowerUnitMicrowatts],
           [DDUnitDetails newUnitWithDisplayName:@"Milliwatt" symbol:@"" unit:DDPowerUnitMilliwatts],
           [DDUnitDetails newUnitWithDisplayName:@"Watt" symbol:@"" unit:DDPowerUnitWatts]];
}

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDPowerUnitFootPoundForcesPerSecond:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:135582 exponent:-5 isNegative:NO]; break;
		case DDPowerUnitHorsepower:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:7457 exponent:-1 isNegative:NO]; break;
		case DDPowerUnitMetricHorsepower:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:735499 exponent:-3 isNegative:NO]; break;
		case DDPowerUnitJoulesPerSecond:
		case DDPowerUnitWatts:
			break;
		case DDPowerUnitKilogramForceMetersPerSecond:
			multiplier = [NSDecimalNumber gConstant_dd]; break;
    case DDPowerUnitKilowatts:
      multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:3 isNegative:NO]; break;
    case DDPowerUnitMegawatts:
      multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:6 isNegative:NO]; break;
    case DDPowerUnitMilliwatts:
      multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-2 isNegative:NO]; break;
    case DDPowerUnitMicrowatts:
      multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-6 isNegative:NO]; break;
    case DDPowerUnitCaloriePerSecond:
      multiplier = [NSDecimalNumber decimalNumberWithMantissa:41868 exponent:-4 isNegative:NO]; break;
    case DDPowerUnitLusec:
      multiplier = [NSDecimalNumber decimalNumberWithMantissa:133 exponent:-6 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

@end
