//
//  DDPressureUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDPressureUnitConverter)

+ (instancetype)newPressureUnitConverter;

@end

typedef NS_ENUM(NSInteger, DDPressureUnit) {
  DDPressureUnitAtmospheres = 0,
  DDPressureUnitBarie,
	DDPressureUnitBars,
	DDPressureUnitInchesOfMercury,
	DDPressureUnitInchesOfWater,
	DDPressureUnitMillimetersOfMercury,
	DDPressureUnitNewtonsPerSquareMeter,
	DDPressureUnitPascals,
  DDPressureUnitPieze,
	DDPressureUnitPoundForcesPerSquareFoot,
	DDPressureUnitPoundForcesPerSquareInch,
	DDPressureUnitTorrs
};

@interface DDPressureUnitConverter : DDUnitConverter

@end
