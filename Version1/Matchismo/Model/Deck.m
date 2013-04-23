//
//  Deck.m
//  Matchismo
//
//  Created by Du Yongqinchuan on 4/18/13.
//  Copyright (c) 2013 Du Yongqinchuan. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray *cards;

@end

@implementation Deck

- (NSMutableArray *) cards
{
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else{
        [self.cards addObject:card];
    }
}

- (Card *)drawRandomCard
{
    Card *randomCard = nil;
    if (self.cards.count) {
        unsigned index = arc4random() % self.cards.count;
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
        NSLog(@"Cards Count: %d", self.cards.count);
    }
    return randomCard;
}


- (Card *)pickTopCard
{
    Card * randomCard = nil;
    if (self.cards.count) {
        randomCard = self.cards[self.cards.count-1];
        [self.cards removeObjectAtIndex:self.cards.count-1];
        NSLog(@"Cards Count: %d", self.cards.count);
    }
    return randomCard;
}
@end
