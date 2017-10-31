//
//  main.m
//  MathGame
//
//  Created by Larry Luk on 2017-10-31.
//  Copyright © 2017 App App Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionalQuestion.h"

int main(int argc, const char * argv[]) {
    
    BOOL run = YES;
    
    while (run == YES) {
        
        AdditionalQuestion *question1 = [[AdditionalQuestion alloc]init];
        NSLog(@"%@",question1.question);
        
        
        char inputChars[255];
        printf("Input answer: ");
        fgets(inputChars, 255, stdin);
        NSString *result = [NSString stringWithCString:inputChars encoding: NSUTF8StringEncoding];
        result = [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSInteger resultInt = [result intValue];
        NSLog(@"%li", resultInt);
        
        if (resultInt == question1.answer) {
            NSLog(@"Right!");
        } else if ([result  isEqual: @"quit"]) {
            run = NO;
        } else {
            NSLog(@"Wrong!");
        }
        
        

        
        
        
        
    }
    
    return 0;
}
