//
//  DDUnitDetails.h
//  DDUnitConverter
//
//  Created by Agarwal, Udit on 7/29/17.
//

#import <Foundation/Foundation.h>

typedef NSInteger DDUnit;

@interface DDUnitDetails : NSObject

@property (nonatomic, copy) NSString *displayName;
@property (nonatomic, copy) NSString *symbol;
- (DDUnit)unit;

+ (instancetype)unitWithDisplayName:(NSString *)displayName
                             symbol:(NSString *)symbol
                               unit:(DDUnit)unit;

@end
