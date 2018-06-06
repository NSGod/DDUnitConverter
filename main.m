#import <Foundation/Foundation.h>
#import "DDUnitConversion.h"

int main (int argc, const char *argv[]) {
    @autoreleasepool {
        DDUnitConverter *c = [DDUnitConverter newVelocityUnitConverter];
        
        NSNumber *value = [c convertNumber:@100
                                   fromUnit:DDVelocityUnitMilesPerHour
                                     toUnit:DDVelocityUnitFurlongsPerFortnight];
        NSLog(@"%@", value);
        
        c = [DDUnitConverter newCurrencyUnitConverter];
        
        value = [c convertNumber:@1
                        fromUnit:DDCurrencyUnitNorwegianKrone 
                          toUnit:DDCurrencyUnitUSDollar];
        NSLog(@"%@", value);
    }
    return 0;
}
