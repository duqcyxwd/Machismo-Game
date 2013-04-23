//
//  PlayingCard.h
//  Matchismo
//
//  Created by Du Yongqinchuan on 4/19/13.
//  Copyright (c) 2013 Du Yongqinchuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card
@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *) validSuits;
+ (NSUInteger)maxRank;

@end
