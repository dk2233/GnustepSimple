#import <Foundation/Foundation.h>
#include <stdio.h>

@interface SimpleOne: NSObject {

@public 
BOOL IsThisTrue;
NSString *String;
}
-(BOOL)IsSet;
-(NSString *)string;
-(void)setIsThisTrue:(BOOL)var;


@end

