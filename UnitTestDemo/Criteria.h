//
//  Criteria.h
//  UnitTestDemo
//
//  Created by Heng Zeng on 1/18/16.
//  Copyright © 2016 verazeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Criterion;

@interface Criteria : NSObject
- (void)addCriterion:(Criterion *)criterion;
- (NSArray *)criterions;
@end
