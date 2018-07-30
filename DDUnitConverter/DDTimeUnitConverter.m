//
//  DDTimeUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDTimeUnitConverter.h"

@implementation DDUnitConverter (DDTimeUnitConverter)

+ (instancetype)newTimeUnitConverter {
	return [[DDTimeUnitConverter alloc] init];
}

@end


@implementation DDTimeUnitConverter

- (NSString *)title {
  return NSLocalizedString(@"Time", @"Title for Time unit converter");
}

- (NSArray<DDUnitDetails *> *)allUnitsListInternal {
  return @[[DDUnitDetails newUnitWithDisplayName:@"Blink" symbol:@"" unit:DDTimeUnitBlinks],
           [DDUnitDetails newUnitWithDisplayName:@"Century" symbol:@"" unit:DDTimeUnitCenturies],
           [DDUnitDetails newUnitWithDisplayName:@"Cesium 133" symbol:@"" unit:DDTimeUnitCesium133],
           [DDUnitDetails newUnitWithDisplayName:@"Day" symbol:@"d" unit:DDTimeUnitDays],
           [DDUnitDetails newUnitWithDisplayName:@"Day (Sidereal)" symbol:@"" unit:DDTimeUnitSiderealDays],
           [DDUnitDetails newUnitWithDisplayName:@"Decade" symbol:@"" unit:DDTimeUnitDecades],
           [DDUnitDetails newUnitWithDisplayName:@"Fortnight" symbol:@"" unit:DDTimeUnitFortnights],
           [DDUnitDetails newUnitWithDisplayName:@"Hour" symbol:@"h" unit:DDTimeUnitHours],
           [DDUnitDetails newUnitWithDisplayName:@"Hour (Sidereal)" symbol:@"" unit:DDTimeUnitSiderealHours],
           [DDUnitDetails newUnitWithDisplayName:@"Lunar year" symbol:@"" unit:DDTimeUnitLunarYears],
           [DDUnitDetails newUnitWithDisplayName:@"Microfortnight" symbol:@"" unit:DDTimeUnitMicrofortnights],
           [DDUnitDetails newUnitWithDisplayName:@"Microsecond" symbol:@"µs" unit:DDTimeUnitMicroseconds],
           [DDUnitDetails newUnitWithDisplayName:@"Millenia" symbol:@"" unit:DDTimeUnitMillenia],
           [DDUnitDetails newUnitWithDisplayName:@"Millisecond" symbol:@"ms" unit:DDTimeUnitMilliseconds],
           [DDUnitDetails newUnitWithDisplayName:@"Minute" symbol:@"m" unit:DDTimeUnitMinutes],
           [DDUnitDetails newUnitWithDisplayName:@"Minute (Sidereal)" symbol:@"" unit:DDTimeUnitSiderealMinutes],
           [DDUnitDetails newUnitWithDisplayName:@"Month" symbol:@"" unit:DDTimeUnitMonths],
           [DDUnitDetails newUnitWithDisplayName:@"Nanosecond" symbol:@"ns" unit:DDTimeUnitNanoseconds],
           [DDUnitDetails newUnitWithDisplayName:@"Picosecond" symbol:@"ps" unit:DDTimeUnitPicoseconds],
           [DDUnitDetails newUnitWithDisplayName:@"Second" symbol:@"s" unit:DDTimeUnitSeconds],
           [DDUnitDetails newUnitWithDisplayName:@"Second (Sidereal)" symbol:@"" unit:DDTimeUnitSiderealSeconds],
           [DDUnitDetails newUnitWithDisplayName:@"Tick" symbol:@"" unit:DDTimeUnitTicks],
           [DDUnitDetails newUnitWithDisplayName:@"Week" symbol:@"w" unit:DDTimeUnitWeeks],
           [DDUnitDetails newUnitWithDisplayName:@"Week (Sidereal)" symbol:@"" unit:DDTimeUnitSiderealWeeks],
           [DDUnitDetails newUnitWithDisplayName:@"Year" symbol:@"y" unit:DDTimeUnitYears],
           [DDUnitDetails newUnitWithDisplayName:@"Year (Sidereal)" symbol:@"" unit:DDTimeUnitSiderealYears]];
}

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDTimeUnitBlinks:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:864 exponent:-3 isNegative:NO]; break;
		case DDTimeUnitCenturies:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:3155692551 exponent:0 isNegative:NO]; break;
		case DDTimeUnitCesium133:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1087827757078 exponent:-22 isNegative:NO]; break;
		case DDTimeUnitDays:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:86400 exponent:0 isNegative:NO]; break;
		case DDTimeUnitDecades:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:3155692551 exponent:-1 isNegative:NO]; break;
		case DDTimeUnitFortnights:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1209600 exponent:0 isNegative:NO]; break;
		case DDTimeUnitHours:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:3600 exponent:0 isNegative:NO]; break;
		case DDTimeUnitMicroseconds:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-6 isNegative:NO]; break;
		case DDTimeUnitMillenia:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:3155692551 exponent:1 isNegative:NO]; break;
		case DDTimeUnitMilliseconds:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-3 isNegative:NO]; break;
		case DDTimeUnitMinutes:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:60 exponent:0 isNegative:NO]; break;
		case DDTimeUnitMonths:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:2548979939168 exponent:-6 isNegative:NO]; break;
		case DDTimeUnitNanoseconds:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-9 isNegative:NO]; break;
    case DDTimeUnitPicoseconds:
      multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-12 isNegative:NO]; break;
		case DDTimeUnitSeconds:
			break;
		case DDTimeUnitTicks:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:16666666666666 exponent:-15 isNegative:NO]; break;
		case DDTimeUnitWeeks:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:604800 exponent:0 isNegative:NO]; break;
		case DDTimeUnitYears:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:3155692551 exponent:-2 isNegative:NO]; break;
		case DDTimeUnitLunarYears:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:3058775927002 exponent:-5 isNegative:NO]; break;
		case DDTimeUnitSiderealSeconds:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:997269476174 exponent:-12 isNegative:NO]; break;
		case DDTimeUnitSiderealMinutes:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:59836168570454 exponent:-12 isNegative:NO]; break;
		case DDTimeUnitSiderealHours:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:3590170114227246 exponent:-12 isNegative:NO]; break;
		case DDTimeUnitSiderealDays:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:86164082741453904 exponent:-12 isNegative:NO]; break;
		case DDTimeUnitSiderealWeeks:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:603148579190177328 exponent:-12 isNegative:NO]; break;
		case DDTimeUnitSiderealYears:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:3147075857303 exponent:-5 isNegative:NO]; break;
		case DDTimeUnitMicrofortnights:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:12096 exponent:-4 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

@end
