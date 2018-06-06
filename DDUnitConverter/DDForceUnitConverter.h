//
//  DDForceUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDForceUnitConverter)

+ (instancetype)newForceUnitConverter;

@end

typedef NS_ENUM(NSInteger, DDForceUnit) {
  DDForceUnitDynes = 0,
	DDForceUnitKilogramForces,
	DDForceUnitNewtons,
	DDForceUnitPoundals,
	DDForceUnitPoundForces,
	DDForceUnitSthenes,
  DDForceUnitAtomicWeight,
  DDForceUnitKiloNewtons,
  DDForceUnitMiliNewtons,
  DDForceUnitKip,
  DDForceUnitMicroNewtons,
  DDForceUnitTonOfForce,
  DDForceUnitOunceForce,
};

@interface DDForceUnitConverter : DDUnitConverter

@end
