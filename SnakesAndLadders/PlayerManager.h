//
//  PlayerManager.h
//  SnakesAndLadders
//
//  Created by Nicolas Guerrero on 9/9/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface PlayerManager : NSObject

//PlayerManager will need an NSMutableArray property to hold the player instances. We can call this players. We will need to initialize this array in our init override.

@property (nonatomic) NSMutableArray *players;

-(void)createPlayers:(NSUInteger)numberOfPlayers;

@end

