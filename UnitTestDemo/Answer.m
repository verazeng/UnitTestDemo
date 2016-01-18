//
//  Answer.m
//  UnitTestDemo
//
//  Created by Heng Zeng on 1/18/16.
//  Copyright © 2016 verazeng. All rights reserved.
//

#import "Answer.h"

@implementation Answer

- (instancetype)initWithQuestion:(NSString *)question answer:(NSString *)answer {
    if (self = [super init]) {
        _question = question;
        _answer = answer;
    }
    return self;
}

@end
