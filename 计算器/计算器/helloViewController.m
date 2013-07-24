//
//  helloViewController.m
//  计算器
//
//  Created by ice on 13-7-23.
//  Copyright (c) 2013年 ice. All rights reserved.
//

#import "helloViewController.h"
#import "brain.h"

@interface helloViewController ()

@property (nonatomic) BOOL userisinmiddleenternum;
@property (nonatomic, strong) brain *myBrain;

@end

@implementation helloViewController

@synthesize display = _display;
@synthesize myBrain = _myBrain;
@synthesize userisinmiddleenternum = _userisinmiddleenternum;


- (brain *)myBrain {
    if (_myBrain == nil) _myBrain = [[brain alloc] init];
    return _myBrain;
}

- (IBAction)num:(UIButton *)sender {
    
    if (self.userisinmiddleenternum) {
        self.display.text = [self.display.text stringByAppendingString:sender.currentTitle];
    }
    else {
        self.display.text = sender.currentTitle;
        self.userisinmiddleenternum = YES;
    }
}

- (IBAction)entering {
    NSLog(@"this is a test!!");
    [self.myBrain pushStack:[self.display.text doubleValue]];
    _userisinmiddleenternum = NO;
}

- (IBAction)operat:(UIButton *)sender {
    NSLog(@"this is about %@!!", sender.currentTitle);
    if (_userisinmiddleenternum) [self entering];
    double result = [self.myBrain getVal:sender.currentTitle];
    NSLog(@"result is %g", result);
    self.display.text = [NSString stringWithFormat:@"%g", result];
}

@end
