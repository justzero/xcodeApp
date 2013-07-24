//
//  brain.h
//  计算器
//
//  Created by ice on 13-7-23.
//  Copyright (c) 2013年 ice. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface brain : NSObject

- (void)pushStack:(double) num;
- (double)getVal:(NSString *) opration;

@end

