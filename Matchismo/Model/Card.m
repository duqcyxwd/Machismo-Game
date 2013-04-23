//
//  Card.m
//  Matchismo
//
//  Created by Du Yongqinchuan on 4/18/13.
//  Copyright (c) 2013 Du Yongqinchuan. All rights reserved.
// 

#import "Card.h"

@interface Card()

@end

@implementation Card



- (int) match:(NSArray *)otherCards
{
    int score = 0;
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score ++;
        }
    }
    return score;
}


@end