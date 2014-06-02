//
//  PlayingCardDeck.m
//  CardGame
//
//  Created by Chung-Chan Wu on 2014/6/1.
//  Copyright (c) 2014年 Chung-Chan Wu. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (instancetype) init
{
    self = [super init];
    
    for (NSString *suit in [PlayingCard validSuits]) {
        for (NSUInteger rank = 0; rank < [PlayingCard maxRank]; rank++) {
            PlayingCard *card = [[PlayingCard alloc] init];
            card.suit = suit;
            card.rank = rank;
            [self addCard:card];
        }
    }

    return self;
}

@end
