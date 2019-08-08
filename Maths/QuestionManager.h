//
//  QuestionManager.h
//  Maths
//
//  Created by Mona Shamsolebad on 2019-08-08.
//  Copyright © 2019 Mona Shamsolebad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject
@property (nonatomic) AdditionQuestion *question;
- (instancetype)init;
@end

NS_ASSUME_NONNULL_END
