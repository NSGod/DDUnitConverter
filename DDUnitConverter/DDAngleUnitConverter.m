//
//  DDAngleUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/25/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDAngleUnitConverter.h"
#import "NSDecimalNumber+DDConstants.h"

@implementation DDUnitConverter (DDAngleUnitConverter)

+ (instancetype)newAngleUnitConverter {
	return [[DDAngleUnitConverter alloc] init];
}

@end


@implementation DDAngleUnitConverter

- (NSArray<DDUnitDetails *> *)allUnitsList {
  return @[[DDUnitDetails unitWithDisplayName:@"Circle" symbol:@"circle" unit:DDAngleUnitCircles],
           [DDUnitDetails unitWithDisplayName:@"Degree" symbol:@"°" unit:DDAngleUnitDegrees],
           [DDUnitDetails unitWithDisplayName:@"Gon" symbol:@"g" unit:DDAngleUnitGons],
           [DDUnitDetails unitWithDisplayName:@"Grade/Gradian" symbol:@"g" unit:DDAngleUnitGrades],
           [DDUnitDetails unitWithDisplayName:@"Minute" symbol:@"min" unit:DDAngleUnitMinutes],
           [DDUnitDetails unitWithDisplayName:@"Milliradian" symbol:@"mil/mrad" unit:DDAngleUnitMils],
           [DDUnitDetails unitWithDisplayName:@"Nautical Rhumb" symbol:@"" unit:DDAngleUnitNauticalRhumbs],
           [DDUnitDetails unitWithDisplayName:@"Quadrant" symbol:@"quad" unit:DDAngleUnitQuadrants],
           [DDUnitDetails unitWithDisplayName:@"Radian" symbol:@"rad" unit:DDAngleUnitRadians],
           [DDUnitDetails unitWithDisplayName:@"Revolution" symbol:@"rev" unit:DDAngleUnitRevolutions],
           [DDUnitDetails unitWithDisplayName:@"Second" symbol:@"sec" unit:DDAngleUnitSeconds],
           [DDUnitDetails unitWithDisplayName:@"Turn" symbol:@"tr" unit:DDAngleUnitTurns]];
}

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDAngleUnitCircles:
		case DDAngleUnitRevolutions:
		case DDAngleUnitTurns:
			//circles, revolutions, and turns are all a multipler of 360
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:360 exponent:0 isNegative:NO]; break;
		case DDAngleUnitDegrees:
			break;
		case DDAngleUnitGons:
		case DDAngleUnitGrades:
			//gons and grades are both a multiplier of 0.9
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:9 exponent:-1 isNegative:NO]; break;
		case DDAngleUnitMinutes:
			multiplier = [[NSDecimalNumber one] decimalNumberByDividingBy:[NSDecimalNumber decimalNumberWithMantissa:60 exponent:0 isNegative:NO]]; break;
		case DDAngleUnitMils:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:5625 exponent:-5 isNegative:NO]; break;
		case DDAngleUnitNauticalRhumbs:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1125 exponent:-2 isNegative:NO]; break;
		case DDAngleUnitQuadrants:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:90 exponent:0 isNegative:NO]; break;
		case DDAngleUnitRadians:
			multiplier = [[NSDecimalNumber decimalNumberWithMantissa:180 exponent:0 isNegative:NO] decimalNumberByDividingBy:[NSDecimalNumber piConstant_dd]]; break;
		case DDAngleUnitSeconds:
			multiplier = [[NSDecimalNumber one] decimalNumberByDividingBy:[NSDecimalNumber decimalNumberWithMantissa:3600 exponent:0 isNegative:NO]]; break;			
		default:
			break;
	}
	return multiplier;
}

- (NSString *)title {
  return NSLocalizedString(@"Angle", @"Title for Angle unit converter");
}

@end
