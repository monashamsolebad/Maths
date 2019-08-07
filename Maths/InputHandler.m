//
//  InputHandler.m
//  Maths
//
//  Created by Mona Shamsolebad on 2019-08-06.
//  Copyright © 2019 Mona Shamsolebad. All rights reserved.
//

#import "InputHandler.h"
NSString * getUserInput(int maxLength, NSString *prompt) {
    NSLog(@"%@ ",prompt);
    char inputChars[maxLength];
    char *result = fgets(inputChars, maxLength, stdin);
    if (result != NULL){
        NSString *inputStr = [NSString stringWithUTF8String:inputChars];
        // NSString.sringWithUTF8String(inputChars);
        
        return [inputStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
    }
    return NULL;
}
@implementation InputHandler
-(NSString *) getInput{
    NSString *input= getUserInput(200, @"");
    return input;
  
}
@end
