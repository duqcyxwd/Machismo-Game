//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Du Yongqinchuan on 4/18/13.
//  Copyright (c) 2013 Du Yongqinchuan. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (strong, nonatomic) Deck *deck;

@end

@implementation CardGameViewController

- (Deck *)deck
{
    if (!_deck) _deck = [[PlayingCardDeck alloc] init];
    
    return _deck;
}

- (void) setCardButtons:(NSArray *)cardButtons
{
    _cardButtons = cardButtons;
    for (UIButton *cardButtons in self.cardButtons) {
        Card *card = [self.deck drawRandomCard];
        [cardButtons setTitle:card.contents forState:UIControlStateSelected];
    }
}

- (void) setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
        NSLog(@"Flips updated to %d", self.flipCount);
}

- (IBAction)flipCard:(UIButton *)sender
{
    sender.selected = !sender.isSelected;
    self.flipCount++;
}
/*- (IBAction)flipCard:(UIButton *)sender {
    // Only draw on face up (ie. on button not selected)
    if (!sender.isSelected) {
        NSLog(@"Draw card");
        Card *card = [self.playingCardDeck drawRandomCard];
        if (!card) {
            NSLog(@"Re-initialize deck and draw card again");
            card = [[self.playingCardDeck init] drawRandomCard];
            self.flipCount = 0;
        }
        
        NSLog(@"Card: %@", card.contents);
        [sender setTitle:card.contents forState:UIControlStateSelected];
        self.flipCount++;
    }
    
    sender.selected = !sender.isSelected;
}  */

@end
