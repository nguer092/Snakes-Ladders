//
//  main.m
//  SnakesAndLadders
//
//  Created by Nicolas Guerrero on 9/9/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        Outside the while loop let's welcome the user and give them some simple instructions. For now just tell them to type "roll" or "r".
        
        NSLog(@"Welcome to Snakes & Ladders. The virtual board game experience. Ready Player One.");
        NSLog(@"Type in the command 'roll' to roll your dice.");
        
//        We only need to create 1 player. So we should do this outside the while loop in main.m
        
        Player *playerOne = [[Player alloc] init];

        
//        Create a while loop inside main.m to keep the game going.
        
        BOOL gameON = YES;
        while (gameON){
          
            //        Using fgets parse the user's input
            
            char userRoll [255];
            fgets(userRoll, 255, stdin);
            NSString *usersRoll = [NSString stringWithCString:userRoll encoding:NSUTF8StringEncoding];
            usersRoll = [usersRoll stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
//            int rollInput = [usersRoll intValue];
            
            if ([usersRoll isEqualToString:@"roll"]) {
                
                [playerOne roll];
            }
            
            
        }
    }
    return 0;
}
