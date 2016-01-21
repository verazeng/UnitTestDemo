//
//  Answer.h
//  UnitTestDemo
//
//  Created by Heng Zeng on 1/18/16.
//  Copyright © 2016 verazeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Answer : NSObject

@property (copy, nonatomic) NSString *question;
@property (copy, nonatomic) NSString *answerText;

- (instancetype)initWithQuestion:(NSString *)question answer:(NSString *)answerText;

@end
