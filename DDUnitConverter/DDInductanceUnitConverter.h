//
//  DDInductanceUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDInductanceUnitConverter)

+ (instancetype)newInductanceUnitConverter;

@end

typedef NS_ENUM(NSInteger, DDInductanceUnit) {
  DDInductanceUnitElectromagneticUnits = 0,
	DDInductanceUnitElectrostaticUnits,
	DDInductanceUnitHenrys,
	DDInductanceUnitMillihenrys,
	DDInductanceUnitMicrohenrys
};

@interface DDInductanceUnitConverter : DDUnitConverter

@end
