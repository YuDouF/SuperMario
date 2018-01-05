//
//  Mario.m
//
//  Created by : Mr.Right
//  Project    : SuperMario
//  Date       : 2018/1/5
//
//  Copyright (c) 2018年 Mr.Right.
//  All rights reserved.
//
// -----------------------------------------------------------------

#import "Mario.h"
#import "Bullet.h"

// -----------------------------------------------------------------

@implementation Mario{
//    int m_bool;
    enum STATUS{
        SMALL = 0,
        BIG,
        STRONG,
    };
    enum DIRECTION{
        FORWARD = 0,
        BACKWARD,
    };
    enum STATUS m_status;
    enum DIRECTION m_direction;
    CGPoint lastPosition;
    Bullet *m_bullet;
};
static Mario *sharedMario = nil;
// -----------------------------------------------------------------
+ (instancetype)node
{
    return [[self alloc] init];
}

- (instancetype)init
{
    self = [super init];
    NSAssert(self, @"Unable to create class %@", [self class]);
    // class initalization goes here
    NSLog(@"init init init");
    m_status = SMALL;
    m_bullet = nil;
    self = [CCSprite spriteWithImageNamed:@"white_square.png"];
//    return [self initWithImageNamed:@"white_square.png"];

    return self;
}
+(Mario*) createMario{
    NSLog(@"createMario");
    if(sharedMario == nil){
        sharedMario = [[Mario alloc] init];
    }
    return sharedMario;
}
// -----------------------------------------------------------------

@end





