//
//  main.m
//  SnakesAndLadders
//
//  Created by Nicolas Guerrero on 9/9/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Welcome to Snakes & Ladders. The virtual board game experience.");
        BOOL gameON = YES;
    
//        PlayerManager *playerManager = [[PlayerManager alloc] init];
        
        Player *playerOne = [[Player alloc] init];
        
    //        Create a while loop inside main.m to keep the game going.
        while (gameON){
            
            
//            NSLog(@"How many players do you wish to enter into the game?");
//
//            char userPlayers [255];
//            fgets(userPlayers, 255, stdin);
//            NSString *usersPlayers = [NSString stringWithCString:userPlayers encoding:NSUTF8StringEncoding];
//            usersPlayers = [usersPlayers stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
//            if ([usersPlayers intValue]) {
//                NSLog(@"Please enter a number amount of players.");
//            } else {
//                [playerManager createPlayers:([usersPlayers intValue])];
//            }
            
            NSLog(@"Type in the command 'roll' to roll your dice.");
            
            char userRoll [255];
            fgets(userRoll, 255, stdin);
            NSString *usersRoll = [NSString stringWithCString:userRoll encoding:NSUTF8StringEncoding];
            usersRoll = [usersRoll stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([usersRoll isEqualToString:@"roll"]){
                [playerOne roll];
                }
            if (playerOne.gameOver == YES){
                break;
            }
        }
    }
    return 0;
}
