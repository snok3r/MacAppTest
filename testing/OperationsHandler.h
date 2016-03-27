//
//  OperationsHandler.h
//  Small Calculator
//
//  Created by Konstantin Davidenko on 27.03.16.
//  Copyright © 2016 Konstantin Davidenko. All rights reserved.
//

#import "ViewController.h"

@interface OperationsHandler : NSObject

+ (CGFloat)performOperation:(NSString *)operation onFirstOperand:(CGFloat)firstOperand andSecondOperand:(CGFloat)secondOperand;

@end
