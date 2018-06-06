//
//  DDCurrentUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDCurrentUnitConverter.h"

@implementation DDUnitConverter (DDCurrentUnitConverter)

+ (instancetype)newCurrentUnitConverter {
	return [[DDCurrentUnitConverter alloc] init];
}

@end


@implementation DDCurrentUnitConverter

- (NSArray<DDUnitDetails *> *)allUnitsList {
  return @[[DDUnitDetails unitWithDisplayName:@"Ampere" symbol:@"A" unit:DDCurrentUnitAmperes],
           [DDUnitDetails unitWithDisplayName:@"ElectromagneticUnit" symbol:@"" unit:DDCurrentUnitElectromagneticUnits],
           [DDUnitDetails unitWithDisplayName:@"Kiloampere" symbol:@"kA" unit:DDCurrentUnitKiloamperes],
           [DDUnitDetails unitWithDisplayName:@"Milliampere" symbol:@"mA" unit:DDCurrentUnitMilliamperes],
           [DDUnitDetails unitWithDisplayName:@"Microampere" symbol:@"μA" unit:DDCurrentUnitMicroamperes],
           [DDUnitDetails unitWithDisplayName:@"Nanoampere" symbol:@"nA" unit:DDCurrentUnitNanoamperes],
           [DDUnitDetails unitWithDisplayName:@"Statampere" symbol:@"statA" unit:DDCurrentUnitStatamperes],
           [DDUnitDetails unitWithDisplayName:@"Abampere" symbol:@"abA" unit:DDCurrentUnitAbamperes],
           [DDUnitDetails unitWithDisplayName:@"Colombo Per Second" symbol:@"" unit:DDCurrentUnitColomboPerSeconds]];
}

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDCurrentUnitAmperes:
    case DDCurrentUnitColomboPerSeconds:
			break;
		case DDCurrentUnitElectromagneticUnits:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:1 isNegative:NO]; break;
		case DDCurrentUnitMilliamperes:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-3 isNegative:NO]; break;
    case DDCurrentUnitKiloamperes:
      multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:3 isNegative:NO]; break;
    case DDCurrentUnitMicroamperes:
      multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-6 isNegative:NO]; break;
    case DDCurrentUnitNanoamperes:
      multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-9 isNegative:NO]; break;
    case DDCurrentUnitStatamperes:
      multiplier = [NSDecimalNumber decimalNumberWithMantissa:333333333 exponent:-18 isNegative:NO]; break;
    case DDCurrentUnitAbamperes:
      multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:1 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

- (NSString *)title {
  return NSLocalizedString(@"Current", @"Title for Current unit converter");
}

@end
