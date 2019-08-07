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

-(NSString *) scoreCount{
    
    NSString *result= [NSString stringWithFormat:@"score :%d wrong,  %d right",_wrongCount ,_rightCount];
    return result;
    
}
@end
