//
//  OperationsHandler.m
//  Small Calculator
//
//  Created by Konstantin Davidenko on 27.03.16.
//  Copyright © 2016 Konstantin Davidenko. All rights reserved.
//

#import "OperationsHandler.h"

@implementation OperationsHandler

+ (NSNumber *)resultOfOperationWith:(NSNumber *)firstArg andSecondArgument:(NSNumber *)secondArg operation:(NSString *)operation {
    
    double res;
    if ([operation isEqualToString:@"+"])
        res = [firstArg doubleValue] + [secondArg doubleValue];
    else if ([operation isEqualToString:@"-"])
        res = [firstArg doubleValue] - [secondArg doubleValue];
    else if ([operation isEqualToString:@"*"])
        res = [firstArg doubleValue] * [secondArg doubleValue];
    
    return [NSNumber numberWithDouble:(res)];
}

+ (NSNumber *)resultOfOperationWith:(NSTextField *)firstField andSecondField:(NSTextField *)secondField operation:(NSString *)operation {
    
    NSNumber *firstArg, *secondArg;
    @try {
        firstArg = [NSNumber numberWithDouble:[firstField doubleValue]];
        secondArg = [NSNumber numberWithDouble:[secondField doubleValue]];
        
        return [OperationsHandler resultOfOperationWith:firstArg andSecondArgument:secondArg operation:operation];
        
    } @catch (NSException *exception) {
        
    } @finally {
        firstArg = NULL, secondArg = NULL;
    }
    
}

@end
