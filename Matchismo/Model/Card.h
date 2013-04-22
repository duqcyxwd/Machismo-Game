//
//  Card.h
//  Matchismo
//
//  Created by Du Yongqinchuan on 4/18/13.
//  Copyright (c) 2013 Du Yongqinchuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter=isFaceUp) BOOL faceUp;
@property (nonatomic, getter=isUnplayable) BOOL unplayable;

- (int)match: (NSArray *)otherCards;
@end
