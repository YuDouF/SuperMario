//
//  MainScene.m
//
//  Created by : Mr.Right
//  Project    : SuperMario
//  Date       : 2018/1/5
//
//  Copyright (c) 2018年 Mr.Right.
//  All rights reserved.
//
// -----------------------------------------------------------------

#import "MainScene.h"
#import "Mario.h"
#import "Controllers.h"

// -----------------------------------------------------------------

@implementation MainScene{
    Mario *m_mario;
    CCSprite9Slice *m_background1;
    CCSprite9Slice *m_background2;
    Controllers *m_controllers;
};
static MainScene *mainScene = nil;
// -----------------------------------------------------------------

+ (instancetype)node
{
    return [[self alloc] init];
}

- (instancetype)init
{
    self = [super init];
    NSAssert(self, @"Unable to create class %@", [self class]);
    
    [self loadBackground];
    [self loadMario];
    [self loadControllers];
    // class initalization goes here
    return self;
}
+(MainScene*)sharedMainScene{
    if(mainScene == nil){
        mainScene = [MainScene new];
    }
    return mainScene;
}
-(void) loadBackground{
    m_background1 = [CCSprite9Slice spriteWithImageNamed:@"white_square.png"];
    m_background1.anchorPoint = ccp(0.5, 0.5);
    m_background1.positionType = CCPositionTypeNormalized;
    m_background1.position = ccp(0.5, 0.5);
    m_background1.contentSize = [CCDirector sharedDirector].viewSize;
    m_background1.color = [CCColor greenColor];
    [self addChild:m_background1];
//
    m_background2 = [CCSprite9Slice spriteWithImageNamed:@"white_square.png"];
    m_background2.anchorPoint = ccp(0.5, 0.5);
    m_background2.positionType = CCPositionTypeNormalized;
    m_background2.position = ccp(1.5, 0.5);
    m_background2.contentSize = [CCDirector sharedDirector].viewSize;
    m_background2.color = [CCColor blueColor];
    [self addChild:m_background2];
    
}
- (void) loadMario{
    m_mario = [Mario createMario];
    m_mario.positionType = CCPositionTypeNormalized;
//    m_mario.position = ccp(0.1, 1);
    m_mario.position = ccp(0.1, 0.25);
    m_mario.anchorPoint = ccp(0.5, 0);
//    CCActionMoveTo *moveTo = [CCActionMoveTo actionWithDuration:1 position:ccp(0.1, 0.25)];
//    [m_mario runAction:moveTo];
    [self addChild:m_mario];
}
- (void)loadControllers{
    m_controllers = [Controllers new];
    m_controllers.positionType = CCPositionTypeNormalized;
    m_controllers.position = ccp(0.5, 0);
    m_controllers.anchorPoint = ccp(0.5, 0);
//    CGSize size = [CCDirector sharedDirector].viewSize;
//    size.height /= 5;
//    m_controllers.contentSize = size;
    [self addChild:m_controllers];
}

//-(void)update:(CCTime) dt{
//    [self updateBackground];
//}
-(void)updateBackground{
    CGPoint position1 = m_background1.position;
    position1.x -= 0.05;
    if(position1.x <= -0.5){
        position1.x = 1.5;
        [m_background1 setPosition:position1];
    }
    if(position1.x != 1.5){
        CCActionMoveTo *moveTo1 = [CCActionMoveTo actionWithDuration:0.3 position:position1];
        [m_background1 runAction:moveTo1];
    }
    
    
    CGPoint position2 = m_background2.position;
    position2.x -= 0.05;
    if(position2.x <= -0.5){
        position2.x = 1.5;
        [m_background2 setPosition:position2];
    }
    if(position2.x != 1.5){
        CCActionMoveTo *moveTo2 = [CCActionMoveTo actionWithDuration:0.3 position:position2];
        [m_background2 runAction:moveTo2];
    }
   
}
-(void)onEnter{
    [super onEnter];
    NSLog(@"Main Scene Enter......");
}
-(void)onExit{
    [super onExit];
    NSLog(@"Main Scene Exit.......");
}
// -----------------------------------------------------------------

@end





