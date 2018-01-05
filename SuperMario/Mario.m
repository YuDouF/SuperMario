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
    enum STATUS m_status;
    enum DIRECTION m_direction;
    CGPoint m_lastPosition;
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
    m_direction = FORWARD;
    m_lastPosition = CGPointMake(0, 0);
    
    m_bullet = nil;
    self = [CCSprite spriteWithImageNamed:@"white_square.png"];
//    return [self initWithImageNamed:@"white_square.png"];

    return self;
}
+(Mario*) createMario{
    
    if(sharedMario == nil){
        sharedMario = [Mario new];
    }
    return sharedMario;
}

- (CGPoint)getLastPosition{
    return m_lastPosition;
}
- (void)setLastPosition:(CGPoint)point{
    m_lastPosition = point;
}
//- (STATUS)getStatus{
//    return m_status;
//}
//- (void)setStatus:(STATUS)status{
//    m_status = status;
//}
// -----------------------------------------------------------------

@end





