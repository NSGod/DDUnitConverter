//
//  DDUnitDetails.h
//  DDUnitConverter
//
//  Created by Agarwal, Udit on 7/29/17.
//

#import <Foundation/Foundation.h>

typedef NSInteger DDUnit;

@interface DDUnitDetails : NSObject

@property (nonatomic) NSString *displayName;
@property (nonatomic) NSString *symbol;
- (DDUnit)unit;

+ (instancetype)unitWithDisplayName:(NSString *)displayName
                             symbol:(NSString *)symbol
                               unit:(DDUnit)unit;

@end
