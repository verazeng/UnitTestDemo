//
//  Profile.h
//  UnitTestDemo
//
//  Created by Heng Zeng on 1/18/16.
//  Copyright © 2016 verazeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Answer;
@class Criteria;

@interface Profile : NSObject

- (void)addAnswer:(Answer *)answer;

- (BOOL)match:(Criteria *)criteria;

@end
