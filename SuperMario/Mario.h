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
enum STATUS{
    SMALL = 0,
    BIG,
    STRONG,
};
enum DIRECTION{
    FORWARD = 0,
    BACKWARD,
};
// -----------------------------------------------------------------
// properties

// -----------------------------------------------------------------
// methods

+ (instancetype)node;
- (instancetype)init;
+ (Mario*)createMario;
- (CGPoint)getLastPosition;
- (void)setLastPosition:(CGPoint)point;
//- (STATUS)getStatus;
//- (void)setStatus:(STATUS)status;

// -----------------------------------------------------------------

@end




