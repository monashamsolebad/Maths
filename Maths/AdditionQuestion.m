//
//  AdditionQuestion.m
//  Maths
//
//  Created by Mona Shamsolebad on 2019-08-02.
//  Copyright © 2019 Mona Shamsolebad. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

-(instancetype) init {
    
    if (self =[super init]){
        int rand1 = (arc4random() %(11))+10;
        int rand2 = (arc4random() %(11))+10;
        _question = [NSString stringWithFormat:@"%i + " "%i ?",rand1,rand2];
        _answer = rand1 + rand2;
      
    }
    return self;
}
@end
