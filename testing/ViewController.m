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
- (IBAction)performOperation:(id)sender;

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

- (IBAction)performOperation:(id)sender {
    if ([sender isKindOfClass:[NSButton class]]){
        NSButton *button = sender;
        NSLog(@"performing: %@ operation", button.title);
        NSNumber *res = [OperationsHandler resultOfOperationWith:_firstNumber andSecondField:_secondNumber operation:button.title];
        [_result setDoubleValue:[res doubleValue]];
    }
}

@end
