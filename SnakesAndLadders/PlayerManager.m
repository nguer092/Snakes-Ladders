//
//  PlayerManager.m
//  SnakesAndLadders
//
//  Created by Nicolas Guerrero on 9/9/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "PlayerManager.h"

@implementation PlayerManager

-(instancetype) init {
    if (self = [super init]) {
        
        _players = [[NSMutableArray alloc] init];
        
    } return self;
}

-(void)createPlayers:(NSUInteger)numberOfPlayers{
    
    for (int i = 1; i <= numberOfPlayers; i ++){
   Player *player = [[Player alloc] init];
    player.name = [NSString stringWithFormat:@"player%d", i];
    [self.players addObject:player];
        
    }
}

@end
