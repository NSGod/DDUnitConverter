//
//  DDAreaUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/25/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDAreaUnitConverter.h"

@implementation DDUnitConverter (DDAreaUnitConverter)

+ (instancetype)newAreaUnitConverter {
	return [[DDAreaUnitConverter alloc] init];
}

@end


@implementation DDAreaUnitConverter

- (NSString *)title {
  return NSLocalizedString(@"Area", @"Title for Area unit converter");
}

- (NSArray<DDUnitDetails *> *)allUnitsListInternal {
  return @[[DDUnitDetails newUnitWithDisplayName:@"Hectare" symbol:@"ha" unit:DDAreaUnitHectares],
           [DDUnitDetails newUnitWithDisplayName:@"Acre" symbol:@"acre" unit:DDAreaUnitAcres],
           [DDUnitDetails newUnitWithDisplayName:@"Are" symbol:@"a" unit:DDAreaUnitAres],
           [DDUnitDetails newUnitWithDisplayName:@"Barn" symbol:@"b" unit:DDAreaUnitBarns],
           [DDUnitDetails newUnitWithDisplayName:@"Rood" symbol:@"rood" unit:DDAreaUnitRoods],
           [DDUnitDetails newUnitWithDisplayName:@"Square Kilometer" symbol:@"km²" unit:DDAreaUnitSquareKilometers],
           [DDUnitDetails newUnitWithDisplayName:@"Square Meter" symbol:@"m²" unit:DDAreaUnitSquareMeters],
           [DDUnitDetails newUnitWithDisplayName:@"Square Decimeter" symbol:@"dm²" unit:DDAreaUnitSquareDecimeters],
           [DDUnitDetails newUnitWithDisplayName:@"Square Centimeter" symbol:@"cm²" unit:DDAreaUnitSquareCentimeters],
           [DDUnitDetails newUnitWithDisplayName:@"Square Milimeter" symbol:@"mm²" unit:DDAreaUnitSquareMillimeters],
           [DDUnitDetails newUnitWithDisplayName:@"Square Mile" symbol:@"mile²" unit:DDAreaUnitSquareMiles],
           [DDUnitDetails newUnitWithDisplayName:@"Square Yard" symbol:@"yd²" unit:DDAreaUnitSquareYards],
           [DDUnitDetails newUnitWithDisplayName:@"Square Feet" symbol:@"ft²" unit:DDAreaUnitSquareFeet],
           [DDUnitDetails newUnitWithDisplayName:@"Square Inch" symbol:@"in²" unit:DDAreaUnitSquareInches],
           [DDUnitDetails newUnitWithDisplayName:@"Square Rod" symbol:@"rod²" unit:DDAreaUntiSquareRods]];
}

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDAreaUnitAcres:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:40468564224 exponent:-7 isNegative:NO]; break;
    case DDAreaUnitAres:
      multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:2 isNegative:NO]; break;
		case DDAreaUnitBarns:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-28 isNegative:NO]; break;
		case DDAreaUnitHectares:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:10000 exponent:0 isNegative:NO]; break;
		case DDAreaUnitRoods:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:101171 exponent:-2 isNegative:NO]; break;
		case DDAreaUnitSquareCentimeters:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-4 isNegative:NO]; break;
		case DDAreaUnitSquareDecimeters:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-2 isNegative:NO]; break;
		case DDAreaUnitSquareFeet:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:9290304 exponent:-8 isNegative:NO]; break;
		case DDAreaUnitSquareInches:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:64516 exponent:-8 isNegative:NO]; break;
		case DDAreaUnitSquareKilometers:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:6 isNegative:NO]; break;
		case DDAreaUnitSquareMeters:
			break;
		case DDAreaUnitSquareMiles:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:258998811 exponent:-2 isNegative:NO]; break;
		case DDAreaUnitSquareMillimeters:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-6 isNegative:NO]; break;
		case DDAreaUntiSquareRods:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:25292953811512 exponent:-12 isNegative:NO]; break;
		case DDAreaUnitSquareYards:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:83612736 exponent:-8 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

@end
