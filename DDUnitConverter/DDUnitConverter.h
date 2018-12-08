//
//  DDUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/25/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitDetails.h"

@interface DDUnitConverter : NSObject

- (NSNumber *)convertNumber:(NSNumber *)number fromUnit:(DDUnit)fromUnit toUnit:(DDUnit)toUnit;
- (NSArray<DDUnitDetails *> *)allUnitsList;
- (NSString *)title;

/**
 This is put in header just so that it become visible swift subclasses for overriding.
 This is not intended to be called publically.
 **/
- (NSArray<DDUnitDetails *> *)allUnitsListInternal;

@end
