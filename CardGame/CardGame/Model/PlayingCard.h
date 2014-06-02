//
//  PlayingCard.h
//  CardGame
//
//  Created by Chung-Chan Wu on 2014/5/31.
//  Copyright (c) 2014年 Chung-Chan Wu. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *) validSuits;
+ (NSUInteger) maxRank;

@end
