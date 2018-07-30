//
//  DDLengthUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/25/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDLengthUnitConverter.h"

@implementation DDUnitConverter (DDLengthUnitConverter)

+ (instancetype)newLengthUnitConverter {
	return [[DDLengthUnitConverter alloc] init];
}

@end

@implementation DDLengthUnitConverter

- (NSString *)title {
  return NSLocalizedString(@"Length", @"Title for Length unit converter");
}

- (NSArray<DDUnitDetails *> *)allUnitsListInternal {
  return @[[DDUnitDetails newUnitWithDisplayName:@"Meter" symbol:@"m" unit:DDLengthUnitMeters],
           [DDUnitDetails newUnitWithDisplayName:@"Centimeter" symbol:@"cm" unit:DDLengthUnitCentimeters],
           [DDUnitDetails newUnitWithDisplayName:@"Kilometer" symbol:@"km" unit:DDLengthUnitKilometers],
           [DDUnitDetails newUnitWithDisplayName:@"Inch" symbol:@"in" unit:DDLengthUnitInches],
           [DDUnitDetails newUnitWithDisplayName:@"Feet" symbol:@"ft" unit:DDLengthUnitFeet],
           [DDUnitDetails newUnitWithDisplayName:@"Mile" symbol:@"mile" unit:DDLengthUnitMiles],
           [DDUnitDetails newUnitWithDisplayName:@"Milimeter" symbol:@"mm" unit:DDLengthUnitMillimeters],
           [DDUnitDetails newUnitWithDisplayName:@"Yard" symbol:@"yard" unit:DDLengthUnitYards],
           [DDUnitDetails newUnitWithDisplayName:@"Astronomical Unit" symbol:@"au" unit:DDLengthUnitAstronomicUnits],
           [DDUnitDetails newUnitWithDisplayName:@"Nautical Mile" symbol:@"nm | nmi" unit:DDLengthUnitInternationalNauticalMiles],
           [DDUnitDetails newUnitWithDisplayName:@"UK Nautical Mile" symbol:@"UK nm | UK nmi" unit:DDLengthUnitUKNauticalMiles],
           [DDUnitDetails newUnitWithDisplayName:@"Parsec" symbol:@"pc" unit:DDLengthUnitParsecs],
           [DDUnitDetails newUnitWithDisplayName:@"Angstrom" symbol:@"Å" unit:DDLengthUnitAngstroms],
           [DDUnitDetails newUnitWithDisplayName:@"Fathom" symbol:@"fathom" unit:DDLengthUnitFathoms],
           [DDUnitDetails newUnitWithDisplayName:@"Furlong" symbol:@"furlong" unit:DDLengthUnitFurlongs],
           [DDUnitDetails newUnitWithDisplayName:@"Chain" symbol:@"chain" unit:DDLengthUnitChains],
           [DDUnitDetails newUnitWithDisplayName:@"Light year" symbol:@"light year" unit:DDLengthUnitLightyears]];
}

+ (NSDecimalNumber *) multiplierForUnit:(DDLengthUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDLengthUnitAstronomicUnits:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:14959787 exponent:4 isNegative:NO]; break;
		case DDLengthUnitCentimeters:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-2 isNegative:NO]; break;
		case DDLengthUnitChains:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:201168 exponent:-4 isNegative:NO]; break;
		case DDLengthUnitInches:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:254 exponent:-4 isNegative:NO]; break;
		case DDLengthUnitFathoms:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:18288 exponent:-4 isNegative:NO]; break;
		case DDLengthUnitFeet:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:3048 exponent:-4 isNegative:NO]; break;
		case DDLengthUnitFurlongs:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:201168 exponent:-3 isNegative:NO]; break;
		case DDLengthUnitKilometers:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:3 isNegative:NO]; break;
		case DDLengthUnitLightyears:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:94607 exponent:11 isNegative:NO]; break;
		case DDLengthUnitMeters:
			break;
		case DDLengthUnitMillimeters:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-3 isNegative:NO]; break;
		case DDLengthUnitMiles:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1609344 exponent:-3 isNegative:NO]; break;
		case DDLengthUnitInternationalNauticalMiles:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1852 exponent:0 isNegative:NO]; break;
		case DDLengthUnitUKNauticalMiles:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1853184 exponent:-3 isNegative:NO]; break;
		case DDLengthUnitParsecs:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:930857 exponent:12 isNegative:NO]; break;
		case DDLengthUnitYards:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:9144 exponent:-4 isNegative:NO]; break;
		case DDLengthUnitAngstroms:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-10 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

@end
