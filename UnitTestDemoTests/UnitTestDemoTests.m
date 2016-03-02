//
//  UnitTestDemoTests.m
//  UnitTestDemoTests
//
//  Created by Heng Zeng on 1/18/16.
//  Copyright © 2016 verazeng. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Answer.h"
#import "Criterion.h"

@interface UnitTestDemoTests : XCTestCase

@end

@implementation UnitTestDemoTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testParseAnswer {
    Answer *answer = [[Answer alloc] initWithQuestion:@"quest" answer:@"answer"];
    
    XCTAssertEqualObjects(answer.question, @"quest");
    XCTAssertEqualObjects(answer.answerText, @"answer");
}

- (void)testIsAnswerMatched {
    Answer *answer = [[Answer alloc] initWithQuestion:@"quest" answer:@"answer"];
    Criterion *c = [[Criterion alloc] initWithAnswer:answer weight:eCriterionMustMatch];
    
    BOOL isMatched = [c isAnswerMatched:answer];
    
    XCTAssertTrue(isMatched);
}

@end
