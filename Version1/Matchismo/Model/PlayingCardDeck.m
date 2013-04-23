//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by Du Yongqinchuan on 4/19/13.
//  Copyright (c) 2013 Du Yongqinchuan. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"
#import "Deck.h"
@implementation PlayingCardDeck

- (id) init
{
    self = [super init];
    int count = 0;
    if (self) {
        for(NSString *suit in [PlayingCard validSuits]) {
            for(NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank= rank;
                card.suit= suit;
                [self addCard:card atTop:YES];
                NSLog(@"Add one Card: %@", [card contents]);
                count++;
            }
        }
        
        NSLog(@"We have %d cards", count);
    }
    
    return self;
}

@end
