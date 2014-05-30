//
//  Card.h
//  CardGame
//
//  Created by Chung-Chan Wu on 2014/5/31.
//  Copyright (c) 2014年 Chung-Chan Wu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (nonatomic, strong) NSString *contents;
@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

- (int) match:(NSArray *)otherCards;
@end
