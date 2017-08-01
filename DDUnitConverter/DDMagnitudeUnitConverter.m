//
//  DDMagnitudeUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDMagnitudeUnitConverter.h"

@implementation DDUnitConverter (DDMagnitudeUnitConverter)

+ (instancetype)magnitudeUnitConverter {
	return [[DDMagnitudeUnitConverter alloc] init];
}

@end


@implementation DDMagnitudeUnitConverter

- (NSString *)title {
  return NSLocalizedString(@"Magnitude", @"Title for Magnitude unit converter");
}

- (NSArray<DDUnitDetails *> *)allUnitsList {
  return @[[DDUnitDetails unitWithDisplayName:@"Yocto" symbol:@"" unit:DDMagnitudeUnitYocto],
           [DDUnitDetails unitWithDisplayName:@"Zepto" symbol:@"" unit:DDMagnitudeUnitZepto],
           [DDUnitDetails unitWithDisplayName:@"Atto" symbol:@"" unit:DDMagnitudeUnitAtto],
           [DDUnitDetails unitWithDisplayName:@"Femto" symbol:@"" unit:DDMagnitudeUnitFemto],
           [DDUnitDetails unitWithDisplayName:@"Pico" symbol:@"" unit:DDMagnitudeUnitPico],
           [DDUnitDetails unitWithDisplayName:@"Nano" symbol:@"" unit:DDMagnitudeUnitNano],
           [DDUnitDetails unitWithDisplayName:@"Micro" symbol:@"" unit:DDMagnitudeUnitMicro],
           [DDUnitDetails unitWithDisplayName:@"Milli" symbol:@"" unit:DDMagnitudeUnitMilli],
           [DDUnitDetails unitWithDisplayName:@"Centi" symbol:@"" unit:DDMagnitudeUnitCenti],
           [DDUnitDetails unitWithDisplayName:@"Deci" symbol:@"" unit:DDMagnitudeUnitDeci],
           [DDUnitDetails unitWithDisplayName:@"Normal" symbol:@"" unit:DDMagnitudeUnitNormal],
           [DDUnitDetails unitWithDisplayName:@"Deka" symbol:@"" unit:DDMagnitudeUnitDeka],
           [DDUnitDetails unitWithDisplayName:@"Hecto" symbol:@"" unit:DDMagnitudeUnitHecto],
           [DDUnitDetails unitWithDisplayName:@"Kilo" symbol:@"" unit:DDMagnitudeUnitKilo],
           [DDUnitDetails unitWithDisplayName:@"Mega" symbol:@"" unit:DDMagnitudeUnitMega],
           [DDUnitDetails unitWithDisplayName:@"Giga" symbol:@"" unit:DDMagnitudeUnitGiga],
           [DDUnitDetails unitWithDisplayName:@"Tera" symbol:@"" unit:DDMagnitudeUnitTera],
           [DDUnitDetails unitWithDisplayName:@"Peta" symbol:@"" unit:DDMagnitudeUnitPeta],
           [DDUnitDetails unitWithDisplayName:@"Exa" symbol:@"" unit:DDMagnitudeUnitExa],
           [DDUnitDetails unitWithDisplayName:@"Zetta" symbol:@"" unit:DDMagnitudeUnitZetta],
           [DDUnitDetails unitWithDisplayName:@"Yotta" symbol:@"" unit:DDMagnitudeUnitYotta]];
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
