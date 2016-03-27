//
//  OperationsHandler.h
//  Small Calculator
//
//  Created by Konstantin Davidenko on 27.03.16.
//  Copyright © 2016 Konstantin Davidenko. All rights reserved.
//

#import "ViewController.h"

@interface OperationsHandler : NSObject

+ (NSNumber *)resultOfOperationWith:(NSNumber *)firstArg andSecondArgument:(NSNumber *)secondArg operation:(NSString *)operation;
+ (NSNumber *)resultOfOperationWith:(NSTextField *)firstField andSecondField:(NSTextField *)secondField operation:(NSString *)operation;

@end
