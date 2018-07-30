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
  return @[[DDUnitDetails newUnitWithDisplayName:@"Circle" symbol:@"circle" unit:DDAngleUnitCircles],
           [DDUnitDetails newUnitWithDisplayName:@"Degree" symbol:@"°" unit:DDAngleUnitDegrees],
           [DDUnitDetails newUnitWithDisplayName:@"Gon" symbol:@"g" unit:DDAngleUnitGons],
           [DDUnitDetails newUnitWithDisplayName:@"Grade/Gradian" symbol:@"g" unit:DDAngleUnitGrades],
           [DDUnitDetails newUnitWithDisplayName:@"Minute" symbol:@"min" unit:DDAngleUnitMinutes],
           [DDUnitDetails newUnitWithDisplayName:@"Milliradian" symbol:@"mil/mrad" unit:DDAngleUnitMils],
           [DDUnitDetails newUnitWithDisplayName:@"Nautical Rhumb" symbol:@"" unit:DDAngleUnitNauticalRhumbs],
           [DDUnitDetails newUnitWithDisplayName:@"Quadrant" symbol:@"quad" unit:DDAngleUnitQuadrants],
           [DDUnitDetails newUnitWithDisplayName:@"Radian" symbol:@"rad" unit:DDAngleUnitRadians],
           [DDUnitDetails newUnitWithDisplayName:@"Revolution" symbol:@"rev" unit:DDAngleUnitRevolutions],
           [DDUnitDetails newUnitWithDisplayName:@"Second" symbol:@"sec" unit:DDAngleUnitSeconds],
           [DDUnitDetails newUnitWithDisplayName:@"Turn" symbol:@"tr" unit:DDAngleUnitTurns]];
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
