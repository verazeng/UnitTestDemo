//
//  Criterion.m
//  UnitTestDemo
//
//  Created by Heng Zeng on 1/18/16.
//  Copyright © 2016 verazeng. All rights reserved.
//

#import "Criterion.h"

@implementation Criterion

- (instancetype)initWithAnswer:(Answer *)answer {
    return [self initWithAnswer:answer weight:eCriterionMustMatch];
}

- (instancetype)initWithAnswer:(Answer *)answer weight:(CriterionWeight)weight {
    if (self = [super init]) {
        _answer = answer;
        _weight = weight;
    }
    return self;
}

@end
