//
//  Player.m
//  SnakesAndLadders
//
//  Created by Nicolas Guerrero on 9/9/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "Player.h"

@implementation Player

//We have to set the initial currentSquare property to 0. We do this by overriding the Player's init method.

//Inside our Player's init method set an NSDictionary property called, something like, gameLogic. Set it using the _ to be sure you are setting the backing store . Do not call self inside init. Create a key for the foot of each ladder and a key for each snake head. Make each key's associated value correspond to the top of the ladder or the snake tail

-(instancetype)init {
    if (self = [super init])
    {
        _currentSquare = 0;
        _gameLogic = @{@4 : @14 , @9 : @31, @20 : @38, @28 : @84, @40 : @59, @51 : @67, @63 : @81, @17 : @7, @64 : @60, @89 : @26, @95 : @75, @99 : @78};
        _gameOver = NO;

    } return self;
}

//Roll should return void. To start, let's just create a random value between 1 and 6 in roll using arc4random_uniform() to do this. Log this dice value to the console. When the user types "roll" increment the currentSquare's value inside roll. Do this by adding the random value to currentSquare.

//Check whether the player has landed on a square corresponding to a key in the dictionary. Do this inside the implementation of roll. If the roll matches a key then set the currentSquare property to the associated value. If there is no match set currentSquare to the new rolled value.

-(void)roll {
    
    int diceValue = arc4random_uniform(6)+1;
    NSLog(@"You have rolled a %d", diceValue);
    self.currentSquare += diceValue;
    NSLog(@"Current square is %lu", (unsigned long)self.currentSquare);
    
    //    Current square must bs NSNubmer (an object) to be compared by isEqualTo

    NSNumber *destination = [_gameLogic objectForKey:@(self.currentSquare)];
    NSNumber *currentSquareNum = @(self.currentSquare);
    
    if (destination != nil) {
        currentSquareNum = destination;
        NSLog(@"Your new square is %@", currentSquareNum);
        NSInteger convertedNewSquare = [currentSquareNum intValue];
        self.currentSquare = convertedNewSquare;
    }
    
    NSNumber *winningScore = @100;
    if (currentSquareNum >= winningScore) {
        _gameOver = YES;
        NSLog(@"You have won!");
    }
}

@end
