//
//  DDUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/25/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitDetails.h"

//All converters

#import "DDAccelerationUnitConverter.h"
#import "DDAngleUnitConverter.h"
#import "DDAreaUnitConverter.h"
#import "DDByteUnitConverter.h"
#import "DDCurrentUnitConverter.h"
#import "DDCurrentUnitConverter.h"
#import "DDEnergyUnitConverter.h"
#import "DDForceUnitConverter.h"
#import "DDIlluminationUnitConverter.h"
#import "DDInductanceUnitConverter.h"
#import "DDLengthUnitConverter.h"
#import "DDMagnitudeUnitConverter.h"
#import "DDMassUnitConverter.h"
#import "DDPowerUnitConverter.h"
#import "DDPressureUnitConverter.h"
#import "DDRadiationUnitConverter.h"
#import "DDTemperatureUnitConverter.h"
#import "DDTemperatureUnitConverter.h"
#import "DDTimeUnitConverter.h"
#import "DDTorqueUnitConverter.h"
#import "DDVelocityUnitConverter.h"
#import "DDVolumeUnitConverter.h"

//All converters imports end here.

@interface DDUnitConverter : NSObject

- (NSNumber *)convertNumber:(NSNumber *)number fromUnit:(DDUnit)fromUnit toUnit:(DDUnit)toUnit;
- (NSArray<DDUnitDetails *> *)allUnitsList;
- (NSString *)title;

@end
