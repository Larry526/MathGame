//
//  main.m
//  MathGame
//
//  Created by Larry Luk on 2017-10-31.
//  Copyright © 2017 App App Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionalQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    
    BOOL run = YES;
    
    InputHandler *inputHandler = [[InputHandler alloc]init];
    ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc]init];

    
    while (run == YES) {
        
        
        
        AdditionalQuestion *question1 = [[AdditionalQuestion alloc]init];
        NSLog(@"%@",question1.question);
        
        NSString *userAnswer = [inputHandler getInput];
        
        
        NSInteger resultInt = [userAnswer intValue];

        
        if (resultInt == question1.answer) {
            NSLog(@"Right!");
            scoreKeeper.rightCount += 1;
        } else if ([userAnswer  isEqual: @"quit"]) {
            run = NO;
        } else {
            NSLog(@"Wrong!");
            scoreKeeper.wrongCount +=1;
        }
        
        NSLog(@"You got %li right, %li wrong.",scoreKeeper.rightCount, scoreKeeper.wrongCount);
    }
    
    return 0;
}
