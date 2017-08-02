//
//  DDVelocityUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDVelocityUnitConverter.h"
#import "NSDecimalNumber+DDConstants.h"

@implementation DDUnitConverter (DDVelocityUnitConverter)

+ (instancetype)velocityUnitConverter {
	return [[DDVelocityUnitConverter alloc] init];
}

@end


@implementation DDVelocityUnitConverter

- (NSString *)title {
  return NSLocalizedString(@"Speed/Velocity", @"Title for Velocity unit converter");
}

- (NSArray<DDUnitDetails *> *)allUnitsList {
  return @[[DDUnitDetails unitWithDisplayName:@"Centimeter Per Hour" symbol:@"cm/h" unit:DDVelocityUnitCentimetersPerHour],
           [DDUnitDetails unitWithDisplayName:@"Centimeter Per Minute" symbol:@"cm/m" unit:DDVelocityUnitCentimetersPerMinute],
           [DDUnitDetails unitWithDisplayName:@"Centimeter Per Second" symbol:@"cm/s" unit:DDVelocityUnitCentimetersPerSecond],
           [DDUnitDetails unitWithDisplayName:@"Foot Per Hour" symbol:@"ft/h" unit:DDVelocityUnitFeetPerHour],
           [DDUnitDetails unitWithDisplayName:@"Foot Per Minute" symbol:@"ft/m" unit:DDVelocityUnitFeetPerMinute],
           [DDUnitDetails unitWithDisplayName:@"Foot Per Second" symbol:@"ft/s" unit:DDVelocityUnitFeetPerSecond],
           [DDUnitDetails unitWithDisplayName:@"Inch Per Hour" symbol:@"in/h" unit:DDVelocityUnitInchesPerHour],
           [DDUnitDetails unitWithDisplayName:@"Inch Per Minute" symbol:@"in/m" unit:DDVelocityUnitInchesPerMinute],
           [DDUnitDetails unitWithDisplayName:@"Inch Per Second" symbol:@"in/s" unit:DDVelocityUnitInchesPerSecond],
           [DDUnitDetails unitWithDisplayName:@"Kilometer Per Hour" symbol:@"km/h" unit:DDVelocityUnitKilometersPerHour],
           [DDUnitDetails unitWithDisplayName:@"Kilometer Per Minute" symbol:@"km/m" unit:DDVelocityUnitKilometersPerMinute],
           [DDUnitDetails unitWithDisplayName:@"Kilometer Per Second" symbol:@"km/s" unit:DDVelocityUnitKilometersPerSecond],
           [DDUnitDetails unitWithDisplayName:@"Knot" symbol:@"" unit:DDVelocityUnitKnots],
           [DDUnitDetails unitWithDisplayName:@"Light" symbol:@"" unit:DDVelocityUnitLight],
           [DDUnitDetails unitWithDisplayName:@"Mach" symbol:@"" unit:DDVelocityUnitMach],
           [DDUnitDetails unitWithDisplayName:@"Meter Per Hour" symbol:@"m/s" unit:DDVelocityUnitMetersPerHour],
           [DDUnitDetails unitWithDisplayName:@"Meter Per Minute" symbol:@"m/m" unit:DDVelocityUnitMetersPerMinute],
           [DDUnitDetails unitWithDisplayName:@"Meter Per Second" symbol:@"m/s" unit:DDVelocityUnitMetersPerSecond],
           [DDUnitDetails unitWithDisplayName:@"Mile Per Hour" symbol:@"mi/h" unit:DDVelocityUnitMilesPerHour],
           [DDUnitDetails unitWithDisplayName:@"Mile Per Minute" symbol:@"mi/m" unit:DDVelocityUnitMilesPerMinute],
           [DDUnitDetails unitWithDisplayName:@"Mile Per Second" symbol:@"mi/s" unit:DDVelocityUnitMilesPerSecond],
           [DDUnitDetails unitWithDisplayName:@"Furlong Per Fortnight" symbol:@"" unit:DDVelocityUnitFurlongsPerFortnight]];
}

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDVelocityUnitCentimetersPerHour:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:2777777778 exponent:-15 isNegative:NO]; break;
		case DDVelocityUnitCentimetersPerMinute:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:166666666667 exponent:-15 isNegative:NO]; break;
		case DDVelocityUnitCentimetersPerSecond:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-2 isNegative:NO]; break;
		case DDVelocityUnitFeetPerHour:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:84666666667 exponent:-15 isNegative:NO]; break;
		case DDVelocityUnitFeetPerMinute:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:508 exponent:-5 isNegative:NO]; break;
		case DDVelocityUnitFeetPerSecond:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:3048 exponent:-4 isNegative:NO]; break;
		case DDVelocityUnitInchesPerHour:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:7055555556 exponent:-15 isNegative:NO]; break;
		case DDVelocityUnitInchesPerMinute:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:423333333333 exponent:-15 isNegative:NO]; break;
		case DDVelocityUnitInchesPerSecond:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:254 exponent:-4 isNegative:NO]; break;
		case DDVelocityUnitKilometersPerHour:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:277777777777778 exponent:-15 isNegative:NO]; break;
		case DDVelocityUnitKilometersPerMinute:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:16666666666666667 exponent:-15 isNegative:NO]; break;
		case DDVelocityUnitKilometersPerSecond:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:3 isNegative:NO]; break;
		case DDVelocityUnitKnots:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:514444444444444 exponent:-15 isNegative:NO]; break;
		case DDVelocityUnitLight:
			multiplier = [NSDecimalNumber cConstant_dd]; break;
		case DDVelocityUnitMach:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:34028 exponent:-2 isNegative:NO]; break;
		case DDVelocityUnitMetersPerHour:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:277777777778 exponent:-15 isNegative:NO]; break;
		case DDVelocityUnitMetersPerMinute:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:16666666666667 exponent:-15 isNegative:NO]; break;
		case DDVelocityUnitMetersPerSecond:
			break;
		case DDVelocityUnitMilesPerHour:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:44704 exponent:-5 isNegative:NO]; break;
		case DDVelocityUnitMilesPerMinute:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:268224 exponent:-4 isNegative:NO]; break;
		case DDVelocityUnitMilesPerSecond:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1609344 exponent:-3 isNegative:NO]; break;
		case DDVelocityUnitFurlongsPerFortnight:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1663 exponent:-7 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

@end
