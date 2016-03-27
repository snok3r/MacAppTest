//
//  OperationsHandler.m
//  Small Calculator
//
//  Created by Konstantin Davidenko on 27.03.16.
//  Copyright © 2016 Konstantin Davidenko. All rights reserved.
//

#import "OperationsHandler.h"

@implementation OperationsHandler

+ (CGFloat)performOperation:(NSString *)operation onFirstOperand:(CGFloat)firstOperand andSecondOperand:(CGFloat)secondOperand {
    
    CGFloat res;
    if ([operation isEqualToString:@"+"])
        res = firstOperand + secondOperand;
    else if ([operation isEqualToString:@"-"])
        res = firstOperand - secondOperand;
    else if ([operation isEqualToString:@"*"])
        res = firstOperand * secondOperand;
    
    return res;
}

@end
