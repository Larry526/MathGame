//
//  AdditionalQuestion.m
//  MathGame
//
//  Created by Larry Luk on 2017-10-31.
//  Copyright © 2017 App App Studio. All rights reserved.
//

#import "AdditionalQuestion.h"

@implementation AdditionalQuestion

- (instancetype)init {
    if (self = [super init]) {
        
        _num1 = 10 + arc4random_uniform(90);
        _num2 = 10 + arc4random_uniform(90);
        _question = [NSString stringWithFormat: @"What is the sum of %ld and %ld?",_num1,_num2];
        _answer = _num1 + _num2;
    
    }
    
    return self;
}

@end
