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
@property (nonatomic, getter=isRandomPick) BOOL randomPick;
@end

@implementation CardGameViewController

- (BOOL) randomPick{
    if (_randomPick == nil) {
        _randomPick = NO;
    }
    return _randomPick;
}


- (IBAction)RandomPickSwitcher:(UISwitch *)sender {

}

- (Deck *)deck
{
    if (!_deck) _deck = [[PlayingCardDeck alloc] init];
    
    return _deck;
}

- (void) setCardButtons:(NSArray *)cardButtons
{
    _cardButtons = cardButtons;
}

- (void) setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"Flips updated to %d", self.flipCount);
}

- (IBAction)flipAndHaha:(UIButton *)sender
{
    
}

- (IBAction)flipCard:(UIButton *)sender
{
    //sender.selected = !sender.isSelected;
    if (!sender.isSelected)
    {
        //Card *card = [self.deck drawRandomCard];
        Card *card = [self.deck pickTopCard];
        if (!card) {
            NSLog(@"There is no Card");
            [sender setTitle: @"X" forState:UIControlStateSelected];
            [sender setTitle: @"X" forState:UIControlStateNormal];
        } else {
            [sender setTitle:card.contents forState:UIControlStateSelected];
            self.flipCount++;
        }
    }
    
    
    sender.selected = !sender.isSelected;

}
@end
