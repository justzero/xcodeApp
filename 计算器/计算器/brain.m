//
//  brain.m
//  计算器
//
//  Created by ice on 13-7-23.
//  Copyright (c) 2013年 ice. All rights reserved.
//

#import "brain.h"

@interface brain()

@property (strong, nonatomic) NSMutableArray *list;

@end


@implementation brain

@synthesize list = _list;

- (NSMutableArray *)list {
    if (_list == nil) {
        _list = [[NSMutableArray alloc] init];
    }
    return _list;
}

- (double)popStack {
    NSNumber *num = [self.list lastObject];
    NSLog(@"num is : %@", [num stringValue]);
    if (self.list) [self.list removeLastObject];
    return [num doubleValue];
}

- (void)pushStack:(double) num {
    NSNumber *nObj = [[NSNumber alloc] initWithDouble:num];
    [self.list addObject:nObj];
}

- (double)getVal:(NSString *) opration {
    double result = 0;
    NSLog(@"opration is %@", opration);
    if ([opration isEqualToString:@"+"]) {
        result = [self popStack] + [self popStack];
    }
    else if ([opration isEqualToString:@"-"]) {
        result = [self popStack] - [self popStack];
    }
    [self pushStack:result];
    return result;
}


@end
