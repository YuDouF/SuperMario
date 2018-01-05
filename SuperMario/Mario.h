//
//  Mario.h
//
//  Created by : Mr.Right
//  Project    : SuperMario
//  Date       : 2018/1/5
//
//  Copyright (c) 2018年 Mr.Right.
//  All rights reserved.
//
// -----------------------------------------------------------------

#import <Foundation/Foundation.h>
#import "cocos2d.h"

// -----------------------------------------------------------------

@interface Mario : CCSprite

// -----------------------------------------------------------------
// properties

// -----------------------------------------------------------------
// methods

+ (instancetype)node;
- (instancetype)init;
+ (Mario*)createMario;
- (CGPoint)getLastPosition;
- (void)setLastPosition:(CGPoint)point;
// -----------------------------------------------------------------

@end




