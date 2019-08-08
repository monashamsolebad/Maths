//
//  QuestionManager.m
//  Maths
//
//  Created by Mona Shamsolebad on 2019-08-08.
//  Copyright © 2019 Mona Shamsolebad. All rights reserved.
//

#import "QuestionManager.h"

NSArray *questionsArray;
@implementation QuestionManager
NSArray *questionsArray;


- (instancetype)init
{
    self = [super init];
    if (self)
    {
        questionsArray = [NSArray arrayWithObjects: @"+", @"-", @"*", @"/", nil];
        _question = [[AdditionQuestion alloc] initWithController:[self randomOperator]];
    }
    return self;
}

- (NSString *) randomOperator
{
    return questionsArray[arc4random_uniform(4)];
}
@end
