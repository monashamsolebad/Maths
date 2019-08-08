//
//  ScoreKeeper.h
//  Maths
//
//  Created by Mona Shamsolebad on 2019-08-06.
//  Copyright © 2019 Mona Shamsolebad. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ScoreKeeper : NSObject
@property (nonatomic) NSInteger rightCount;
@property (nonatomic) NSInteger wrongCount;
@property (nonatomic, assign) double lastTime;
@property (nonatomic, assign) double totalTime;

- (void) printScore;
- (void) printAverageTime;
@end


