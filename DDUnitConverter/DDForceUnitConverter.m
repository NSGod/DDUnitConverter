//
//  DDForceUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDForceUnitConverter.h"
#import "NSDecimalNumber+DDConstants.h"

@implementation DDUnitConverter (DDForceUnitConverter)

+ (instancetype)newForceUnitConverter {
	return [[DDForceUnitConverter alloc] init];
}

@end


@implementation DDForceUnitConverter

- (NSString *)title {
  return NSLocalizedString(@"Force", @"Title for Force unit converter");
}

- (NSArray<DDUnitDetails *> *)allUnitsListInternal {
  return @[[DDUnitDetails newUnitWithDisplayName:@"Dyne" symbol:@"dyn" unit:DDForceUnitDynes],
           [DDUnitDetails newUnitWithDisplayName:@"Kg Force | Kilopond" symbol:@"kgf" unit:DDForceUnitKilogramForces],
           [DDUnitDetails newUnitWithDisplayName:@"Newton" symbol:@"N" unit:DDForceUnitNewtons],
           [DDUnitDetails newUnitWithDisplayName:@"Kilonewton" symbol:@"kN" unit:DDForceUnitKiloNewtons],
           [DDUnitDetails newUnitWithDisplayName:@"Poundal" symbol:@"pdl" unit:DDForceUnitPoundals],
           [DDUnitDetails newUnitWithDisplayName:@"Pound Force" symbol:@"lbf" unit:DDForceUnitPoundForces],
           [DDUnitDetails newUnitWithDisplayName:@"Sthene" symbol:@"" unit:DDForceUnitSthenes],
           [DDUnitDetails newUnitWithDisplayName:@"Millinewton" symbol:@"mN" unit:DDForceUnitMiliNewtons],
           [DDUnitDetails newUnitWithDisplayName:@"Micronewton" symbol:@"μN" unit:DDForceUnitMicroNewtons],
           [DDUnitDetails newUnitWithDisplayName:@"Kip" symbol:@"" unit:DDForceUnitKip],
           [DDUnitDetails newUnitWithDisplayName:@"Atomic Weight" symbol:@"" unit:DDForceUnitAtomicWeight],
           [DDUnitDetails newUnitWithDisplayName:@"Ton Of Force" symbol:@"tnf" unit:DDForceUnitTonOfForce],
           [DDUnitDetails newUnitWithDisplayName:@"Ounce Force" symbol:@"ozf" unit:DDForceUnitOunceForce],];
}

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDForceUnitDynes:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-5 isNegative:NO]; break;
		case DDForceUnitKilogramForces:
			multiplier = [NSDecimalNumber gConstant_dd]; break;
		case DDForceUnitNewtons:
			break;
		case DDForceUnitPoundals:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:138255 exponent:-6 isNegative:NO]; break;
		case DDForceUnitPoundForces:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:44822 exponent:-4 isNegative:NO]; break;
		case DDForceUnitSthenes:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:3 isNegative:NO]; break;
    case DDForceUnitAtomicWeight:
      multiplier = [NSDecimalNumber decimalNumberWithMantissa:16283353926 exponent:-36 isNegative:NO]; break;
    case DDForceUnitKiloNewtons:
      multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:3 isNegative:NO]; break;
    case DDForceUnitMiliNewtons:
      multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-3 isNegative:NO]; break;
    case DDForceUnitMicroNewtons:
      multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-6 isNegative:NO]; break;
    case DDForceUnitKip:
      multiplier = [NSDecimalNumber decimalNumberWithMantissa:4448221615 exponent:-6 isNegative:NO]; break;
    case DDForceUnitTonOfForce:
      multiplier = [NSDecimalNumber decimalNumberWithMantissa:8896443231 exponent:-6 isNegative:NO]; break;
    case DDForceUnitOunceForce:
      multiplier = [NSDecimalNumber decimalNumberWithMantissa:278014 exponent:-6 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

@end
