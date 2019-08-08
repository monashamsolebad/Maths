//
//  ScoreKeeper.m
//  Maths
//
//  Created by Mona Shamsolebad on 2019-08-06.
//  Copyright © 2019 Mona Shamsolebad. All rights reserved.
//

#import "ScoreKeeper.h"
#import "AdditionQuestion.h"
@implementation ScoreKeeper
- (instancetype)init
{
    if ((self = [super init]))
    {
        _rightCount = 0;
        _wrongCount = 0;
        _totalTime = 0.0;
        _lastTime = 0.0;
    }
    
    return self;
}

- (NSInteger) rightPecentage
{
    return (100 * _rightCount) / (_rightCount + _wrongCount);
}

- (void) printScore
{
    NSLog(@"score: %ld right, %ld wrong ---- %ld%%", _rightCount, _wrongCount, [self rightPecentage]);
}

- (void) printAverageTime
{
    NSLog(@"time spent on the question: %.0fs, average time: %.0fs", _lastTime, _totalTime/(_rightCount+_wrongCount));
    [self setTotalTime:_totalTime + _lastTime];
}
@end
