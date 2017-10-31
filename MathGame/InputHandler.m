//
//  InputHandler.m
//  MathGame
//
//  Created by Larry Luk on 2017-10-31.
//  Copyright © 2017 App App Studio. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(NSString*) getInput {
    
    
    char inputChars[255];
    printf("Input answer: ");
    fgets(inputChars, 255, stdin);
    NSString *result = [[NSString stringWithCString:inputChars encoding: NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return result;
    
    }



@end
