//
//  PlayingCard.m
//  CardGame
//
//  Created by Chung-Chan Wu on 2014/5/31.
//  Copyright (c) 2014年 Chung-Chan Wu. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

// inherit from Card.h
- (NSString *) contents
{
    NSArray *rankString = [PlayingCard rankString];
    return [rankString[self.rank] stringByAppendingString:self.suit];
}

// make it private.
+ (NSArray *) rankString
{
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSArray *) validSuits
{
    return @[@"♠️", @"♥️", @"♣️", @"♦️"];
}

+ (NSUInteger) maxRank
{
    return [[self rankString] count] - 1;
}

- (void) setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@synthesize suit = _suit;
- (void) setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *) suit
{
    return _suit ? _suit : @"";
}

@end
