//
//  DDMagnitudeUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDMagnitudeUnitConverter.h"

@implementation DDUnitConverter (DDMagnitudeUnitConverter)

+ (instancetype)newMagnitudeUnitConverter {
	return [[DDMagnitudeUnitConverter alloc] init];
}

@end


@implementation DDMagnitudeUnitConverter

- (NSString *)title {
  return NSLocalizedString(@"Magnitude", @"Title for Magnitude unit converter");
}

- (NSArray<DDUnitDetails *> *)allUnitsList {
  return @[[DDUnitDetails newUnitWithDisplayName:@"Yocto" symbol:@"" unit:DDMagnitudeUnitYocto],
           [DDUnitDetails newUnitWithDisplayName:@"Zepto" symbol:@"" unit:DDMagnitudeUnitZepto],
           [DDUnitDetails newUnitWithDisplayName:@"Atto" symbol:@"" unit:DDMagnitudeUnitAtto],
           [DDUnitDetails newUnitWithDisplayName:@"Femto" symbol:@"" unit:DDMagnitudeUnitFemto],
           [DDUnitDetails newUnitWithDisplayName:@"Pico" symbol:@"" unit:DDMagnitudeUnitPico],
           [DDUnitDetails newUnitWithDisplayName:@"Nano" symbol:@"" unit:DDMagnitudeUnitNano],
           [DDUnitDetails newUnitWithDisplayName:@"Micro" symbol:@"" unit:DDMagnitudeUnitMicro],
           [DDUnitDetails newUnitWithDisplayName:@"Milli" symbol:@"" unit:DDMagnitudeUnitMilli],
           [DDUnitDetails newUnitWithDisplayName:@"Centi" symbol:@"" unit:DDMagnitudeUnitCenti],
           [DDUnitDetails newUnitWithDisplayName:@"Deci" symbol:@"" unit:DDMagnitudeUnitDeci],
           [DDUnitDetails newUnitWithDisplayName:@"Normal" symbol:@"" unit:DDMagnitudeUnitNormal],
           [DDUnitDetails newUnitWithDisplayName:@"Deka" symbol:@"" unit:DDMagnitudeUnitDeka],
           [DDUnitDetails newUnitWithDisplayName:@"Hecto" symbol:@"" unit:DDMagnitudeUnitHecto],
           [DDUnitDetails newUnitWithDisplayName:@"Kilo" symbol:@"" unit:DDMagnitudeUnitKilo],
           [DDUnitDetails newUnitWithDisplayName:@"Mega" symbol:@"" unit:DDMagnitudeUnitMega],
           [DDUnitDetails newUnitWithDisplayName:@"Giga" symbol:@"" unit:DDMagnitudeUnitGiga],
           [DDUnitDetails newUnitWithDisplayName:@"Tera" symbol:@"" unit:DDMagnitudeUnitTera],
           [DDUnitDetails newUnitWithDisplayName:@"Peta" symbol:@"" unit:DDMagnitudeUnitPeta],
           [DDUnitDetails newUnitWithDisplayName:@"Exa" symbol:@"" unit:DDMagnitudeUnitExa],
           [DDUnitDetails newUnitWithDisplayName:@"Zetta" symbol:@"" unit:DDMagnitudeUnitZetta],
           [DDUnitDetails newUnitWithDisplayName:@"Yotta" symbol:@"" unit:DDMagnitudeUnitYotta]];
}

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDMagnitudeUnitYocto:
			return [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-24 isNegative:NO]; break;
		case DDMagnitudeUnitZepto:
			return [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-21 isNegative:NO]; break;
		case DDMagnitudeUnitAtto:
			return [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-18 isNegative:NO]; break;
		case DDMagnitudeUnitFemto:
			return [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-15 isNegative:NO]; break;
		case DDMagnitudeUnitPico:
			return [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-12 isNegative:NO]; break;
		case DDMagnitudeUnitNano:
			return [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-9 isNegative:NO]; break;
		case DDMagnitudeUnitMicro:
			return [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-6 isNegative:NO]; break;
		case DDMagnitudeUnitMilli:
			return [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-3 isNegative:NO]; break;
		case DDMagnitudeUnitCenti:
			return [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-2 isNegative:NO]; break;
		case DDMagnitudeUnitDeci:
			return [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-1 isNegative:NO]; break;
		case DDMagnitudeUnitNormal:
			break;
		case DDMagnitudeUnitDeka:
			return [NSDecimalNumber decimalNumberWithMantissa:1 exponent:1 isNegative:NO]; break;
		case DDMagnitudeUnitHecto:
			return [NSDecimalNumber decimalNumberWithMantissa:1 exponent:2 isNegative:NO]; break;
		case DDMagnitudeUnitKilo:
			return [NSDecimalNumber decimalNumberWithMantissa:1 exponent:3 isNegative:NO]; break;
		case DDMagnitudeUnitMega:
			return [NSDecimalNumber decimalNumberWithMantissa:1 exponent:6 isNegative:NO]; break;
		case DDMagnitudeUnitGiga:
			return [NSDecimalNumber decimalNumberWithMantissa:1 exponent:9 isNegative:NO]; break;
		case DDMagnitudeUnitTera:
			return [NSDecimalNumber decimalNumberWithMantissa:1 exponent:12 isNegative:NO]; break;
		case DDMagnitudeUnitPeta:
			return [NSDecimalNumber decimalNumberWithMantissa:1 exponent:15 isNegative:NO]; break;
		case DDMagnitudeUnitExa:
			return [NSDecimalNumber decimalNumberWithMantissa:1 exponent:18 isNegative:NO]; break;
		case DDMagnitudeUnitZetta:
			return [NSDecimalNumber decimalNumberWithMantissa:1 exponent:21 isNegative:NO]; break;
		case DDMagnitudeUnitYotta:
			return [NSDecimalNumber decimalNumberWithMantissa:1 exponent:24 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

@end
