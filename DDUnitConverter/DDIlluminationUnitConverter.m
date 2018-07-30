//
//  DDIlluminationUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDIlluminationUnitConverter.h"

@implementation DDUnitConverter (DDIlluminationUnitConverter)

+ (instancetype)newIlluminationUnitConverter {
	return [[DDIlluminationUnitConverter alloc] init];
}

@end


@implementation DDIlluminationUnitConverter

- (NSArray<DDUnitDetails *> *)allUnitsListInternal {
  return @[[DDUnitDetails newUnitWithDisplayName:@"Foot Candle" symbol:@"fc" unit:DDIlluminationUnitFootCandles],
           [DDUnitDetails newUnitWithDisplayName:@"Lumen Per Square Meter" symbol:@"lm/m²" unit:DDIlluminationUnitLumensPerSquareMeter],
           [DDUnitDetails newUnitWithDisplayName:@"Lumen Per Square Foot" symbol:@"lm/ft²" unit:DDIlluminationUnitLumensPerSquareFoot],
           [DDUnitDetails newUnitWithDisplayName:@"Lumen Per Square Centimeter" symbol:@"lm/cm²" unit:DDIlluminationUnitLumensPerSquareCentimeter],
           [DDUnitDetails newUnitWithDisplayName:@"Nox" symbol:@"nox" unit:DDIlluminationUnitNox],
           [DDUnitDetails newUnitWithDisplayName:@"Phot" symbol:@"ph" unit:DDIlluminationUnitPhots],
           [DDUnitDetails newUnitWithDisplayName:@"Day Light" symbol:@"" unit:DDIlluminationUnitClearDaySunIllumination],
           [DDUnitDetails newUnitWithDisplayName:@"Lux" symbol:@"lx" unit:DDIlluminationUnitLux]];
}

- (NSString *)title {
  return NSLocalizedString(@"Illumination", @"Title for Illumination unit converter");
}

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDIlluminationUnitFootCandles:
		case DDIlluminationUnitLumensPerSquareFoot:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:107639104167097 exponent:-13 isNegative:NO]; break;
        case DDIlluminationUnitLumensPerSquareCentimeter:
            multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:4 isNegative:NO]; break;
        case DDIlluminationUnitNox:
            multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-3 isNegative:NO]; break;
		case DDIlluminationUnitPhots:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:4 isNegative:NO]; break;
		case DDIlluminationUnitLumensPerSquareMeter:
			break;
		case DDIlluminationUnitClearDaySunIllumination:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:5 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

@end
