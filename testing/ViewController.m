//
//  ViewController.m
//  Small Calculator
//
//  Created by Konstantin Davidenko on 27.03.16.
//  Copyright © 2016 Konstantin Davidenko. All rights reserved.
//

#import "ViewController.h"
#import "OperationsHandler.h"

@interface ViewController ()

@property (weak) IBOutlet NSTextField *firstNumber;
@property (weak) IBOutlet NSTextField *secondNumber;
@property (weak) IBOutlet NSTextField *result;
- (IBAction)onOperationPressed:(NSButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
    // Update the view, if already loaded.
}

- (IBAction)onOperationPressed:(NSButton *)sender {
    NSLog(@"performing: %@ operation", sender.title);
    CGFloat res = [OperationsHandler performOperation:sender.title onFirstOperand:[_firstNumber floatValue] andSecondOperand:[_secondNumber floatValue]];
    [_result setFloatValue:res];
}

@end
