//
//  InputHandler.m
//  Maths
//
//  Created by Mona Shamsolebad on 2019-08-06.
//  Copyright © 2019 Mona Shamsolebad. All rights reserved.
//

#import "InputHandler.h"
@implementation InputHandler

 NSString *getUserInput(NSString *prompt)
{
    
    int maxLength = 255;
    NSLog(@"%@ ", prompt);
    char inputChars[maxLength];
    char *result = fgets(inputChars, maxLength, stdin);
    
    if (result != NULL)
    {
        NSString *inputStr = [NSString stringWithUTF8String: inputChars];
        return [inputStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    
    return NULL;
}
@end
