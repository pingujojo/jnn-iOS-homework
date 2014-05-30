//
//  Card.m
//  CardGame
//
//  Created by Chung-Chan Wu on 2014/5/30.
//  Copyright (c) 2014年 Chung-Chan Wu. All rights reserved.
//

#import "Card.h"

@implementation Card

- (BOOL) isChosen
{
    return _chosen;
}

- (BOOL) isMatched
{
    return _matched;
}

/*- (int) match:(Card *)card
{
    int score = 0;
    
    if ([card.contents isEqualToString:self.contents]) {
        score = 1;
    }
    
    return score;
}*/

- (int) match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards) {    // fast enumeration
        if ([card.contents isEqualToString:self.contents])
            score++;
    }
    
    return score;
}

@end
