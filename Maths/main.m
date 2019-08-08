//
//  main.m
//  Maths
//
//  Created by Mona Shamsolebad on 2019-07-31.
//  Copyright © 2019 Mona Shamsolebad. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        
        ScoreKeeper *scorekeeper = [[ScoreKeeper alloc] init];
        
        while (YES)
        {
            QuestionManager *questions = [[QuestionManager alloc]init];
            AdditionQuestion *question = [questions question];
            if ([[[question userInput] uppercaseString] isEqualToString:@"QUIT"])
            {
                break;
            } else
            {
                if ([question isAnswer])
                {
                    [scorekeeper setRightCount:[scorekeeper rightCount]+1];
                } else
                {
                    [scorekeeper setWrongCount:[scorekeeper wrongCount]+1];
                }
                
                [scorekeeper printScore];
                [scorekeeper setLastTime:[question answerTime]];
                [scorekeeper printAverageTime];
            }
        }
        
    }
    return 0;

}
