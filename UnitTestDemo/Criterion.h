//
//  Criterion.h
//  UnitTestDemo
//
//  Created by Heng Zeng on 1/18/16.
//  Copyright © 2016 verazeng. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, CriterionWeight) {
    eCriterionNotCare = 0,
    eCriterionMustMatch
};

@class Answer;

@interface Criterion : NSObject

@property (nonatomic) Answer *answer;
@property (nonatomic) CriterionWeight weight;

- (instancetype)initWithAnswer:(Answer *)answer weight:(CriterionWeight)weight;

@end
