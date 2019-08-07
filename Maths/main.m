//
//  main.m
//  Maths
//
//  Created by Mona Shamsolebad on 2019-07-31.
//  Copyright © 2019 Mona Shamsolebad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    BOOL gameOn = YES;
    @autoreleasepool {
        ScoreKeeper *scoreKeeper =[[ScoreKeeper alloc] init];
        while (gameOn == YES) {
            
            AdditionQuestion *additionQuestion =[[AdditionQuestion alloc] init];
            InputHandler *inputHandler =[[InputHandler alloc] init];
           
            NSLog(@"%@", additionQuestion.question);
            NSString *input= inputHandler.getInput;
            int iValue = [[input stringByReplacingOccurrencesOfString:@" " withString:@""] intValue];
            
            if ([input  isEqual: @"quit"]) {
                gameOn = NO ;
                continue;
            }
            if (iValue == additionQuestion.answer) {
                NSLog(@"Right!");
                scoreKeeper.rightCount += 1;
            }
            else {
                NSLog(@"Wrong!");
                scoreKeeper.wrongCount += 1;
            }
            NSLog(@"%@", scoreKeeper.scoreCount);
        }
        
    }
    return 0;
}
