//
//  Card.m
//  CardGame
//
//  Created by Chung-Chan Wu on 2014/5/31.
//  Copyright (c) 2014年 Chung-Chan Wu. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;  // TODO: does this "if" would be set true?
        }
    }
    
    return score;
}

@end
