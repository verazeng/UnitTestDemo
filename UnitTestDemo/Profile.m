//
//  Profile.m
//  UnitTestDemo
//
//  Created by Heng Zeng on 1/18/16.
//  Copyright © 2016 verazeng. All rights reserved.
//

#import "Profile.h"
#import "Answer.h"
#import "Criteria.h"
#import "Criterion.h"

@interface Profile ()
@property (nonatomic) NSMutableArray *answers;
@end

@implementation Profile

- (instancetype)init {
    if (self = [super init]) {
        _answers = [@[] mutableCopy];
    }
    return self;
}

- (void)addAnswer:(Answer *)answer {
    [_answers addObject:answer];
}

- (Answer *)answerForQuestion:(NSString *)question {
    NSUInteger index = [_answers indexOfObjectPassingTest:^BOOL(Answer *answer, NSUInteger idx, BOOL * _Nonnull stop) {
        return [answer.question isEqualToString:question];
    }];
    return index != NSNotFound ? [_answers objectAtIndex:index] : nil;
}

- (BOOL)match:(Criteria *)criteria {
    __block BOOL match;
    [[criteria criterions] enumerateObjectsUsingBlock:^(Criterion *criterion, NSUInteger idx, BOOL * _Nonnull stop) {
        Answer *myAnswer = [self answerForQuestion:criterion.answer.question];
        if (![myAnswer.answer isEqualToString:criterion.answer.answer]){
            match = NO;
            *stop = YES;
        };
    }];
    return match;
}

@end
