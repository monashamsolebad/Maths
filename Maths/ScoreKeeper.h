//
//  ScoreKeeper.h
//  Maths
//
//  Created by Mona Shamsolebad on 2019-08-06.
//  Copyright © 2019 Mona Shamsolebad. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ScoreKeeper : NSObject
-(NSString *) scoreCount;
@property (nonatomic, assign) int wrongCount;
@property (nonatomic, assign) int rightCount;
@end


