//
//  Player.m
//  SnakesAndLadders
//
//  Created by Nicolas Guerrero on 9/9/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "Player.h"

@implementation Player

//roll should return void. To start, let's just create a random value between 1 and 6 in roll using arc4random_uniform() to do this. Log this dice value to the console.

-(void)roll {
    int diceValue = arc4random_uniform(7);
    NSLog(@"You have rolled a %d", diceValue);
}

@end
