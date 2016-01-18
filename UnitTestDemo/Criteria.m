//
//  Criteria.m
//  UnitTestDemo
//
//  Created by Heng Zeng on 1/18/16.
//  Copyright © 2016 verazeng. All rights reserved.
//

#import "Criteria.h"
#import "Criterion.h"

@interface Criteria ()
@property (nonatomic) NSMutableArray *criterions;
@end

@implementation Criteria

- (instancetype)init {
    if (self = [super init]) {
        _criterions = [@[] mutableCopy];
    }
    return self;
}

- (void)addCriterion:(Criterion *)criterion {
    [_criterions addObject:criterion];
}

- (NSArray *)criterions {
    return _criterions;
}


@end
