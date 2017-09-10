//
//  Player.h
//  SnakesAndLadders
//
//  Created by Nicolas Guerrero on 9/9/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject


//The Player class needs at least 2 things. An NSInteger property called something like currentSquare and a roll method.

@property (nonatomic, assign) NSInteger currentSquare;
@property (nonatomic, copy) NSDictionary * gameLogic;
@property (nonatomic) BOOL gameOver;
@property (nonatomic, assign) NSString *name;

-(void)roll;

@end
