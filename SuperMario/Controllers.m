//
//  Controllers.m
//
//  Created by : Mr.Right
//  Project    : SuperMario
//  Date       : 2018/1/5
//
//  Copyright (c) 2018年 Mr.Right.
//  All rights reserved.
//
// -----------------------------------------------------------------

#import "Controllers.h"
#import "Mario.h"
#import "MainScene.h"
// -----------------------------------------------------------------

@implementation Controllers{
    CCButton *m_jumpBtn;
    CCButton *m_backwardBtn;
    CCButton *m_forwardBtn;
    CCButton *m_downBtn;
};

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
//    CCSprite *controlSprites = [CCSprite new];
//    controlSprites.positionType = CCPositionTypeNormalized;
//    controlSprites.position = ccp(0.2, 0.2);
    
    m_jumpBtn = [CCButton buttonWithTitle:@"[UP]" spriteFrame:[CCSpriteFrame frameWithImageNamed:@"white_square.png"] highlightedSpriteFrame:[CCSpriteFrame frameWithImageNamed:@"white_square.png"] disabledSpriteFrame:[CCSpriteFrame frameWithImageNamed:@"white_square.png"]];
    m_jumpBtn.color = [CCColor redColor];
    m_jumpBtn.positionType = CCPositionTypeNormalized;
    m_jumpBtn.position = ccp(0.2, 0.1);
    [m_jumpBtn setTarget:self selector:@selector(goJump:)];
    
    m_forwardBtn = [CCButton buttonWithTitle:@"[-->]" spriteFrame:[CCSpriteFrame frameWithImageNamed:@"white_square.png"] highlightedSpriteFrame:[CCSpriteFrame frameWithImageNamed:@"white_square.png"] disabledSpriteFrame:[CCSpriteFrame frameWithImageNamed:@"white_square.png"]];
    m_forwardBtn.color = [CCColor blueColor];
    m_forwardBtn.positionType = CCPositionTypeNormalized;
    m_forwardBtn.position = ccp(0.3, 0.1);
    [m_forwardBtn setTarget:self selector:@selector(goForward:)];
    
    m_backwardBtn = [CCButton buttonWithTitle:@"[<--]" spriteFrame:[CCSpriteFrame frameWithImageNamed:@"white_square.png"] highlightedSpriteFrame:[CCSpriteFrame frameWithImageNamed:@"white_square.png"] disabledSpriteFrame:[CCSpriteFrame frameWithImageNamed:@"white_square.png"]];
    m_backwardBtn.color = [CCColor yellowColor];
    m_backwardBtn.positionType = CCPositionTypeNormalized;
    m_backwardBtn.position = ccp(0.4, 0.1);
    [m_backwardBtn setTarget:self selector:@selector(goBack:)];
    
    m_downBtn = [CCButton buttonWithTitle:@"[Down]" spriteFrame:[CCSpriteFrame frameWithImageNamed:@"white_square.png"] highlightedSpriteFrame:[CCSpriteFrame frameWithImageNamed:@"white_square.png"] disabledSpriteFrame:[CCSpriteFrame frameWithImageNamed:@"white_square.png"]];
    m_downBtn.color = [CCColor greenColor];
    m_downBtn.positionType = CCPositionTypeNormalized;
    m_downBtn.position = ccp(0.5, 0.1);
    [m_downBtn setTarget:self selector:@selector(goDown:)];
    
    [self addChild:m_jumpBtn];
    [self addChild:m_forwardBtn];
    [self addChild:m_backwardBtn];
    [self addChild:m_downBtn];
    
//    [self addChild:controlSprites];
    return self;
}

-(void)goJump:(id)sender{
    NSLog(@"Mario Jump.....");
    Mario *mario = [Mario createMario];
    CGPoint poisiton = mario.position;
    CCActionJumpTo *jumpTo = [CCActionJumpTo actionWithDuration:0.3 position:poisiton height:0.2 jumps:1];
    [mario runAction:jumpTo];
}

-(void)goForward:(id)sender{
    NSLog(@"Mario Forward.....");
    Mario *mario = [Mario createMario];
    CGPoint position = mario.position;
    if(position.x < 0.4){
        position.x += 0.05;
        CCActionMoveTo *moveTo = [CCActionMoveTo actionWithDuration:0.3 position:position];
        [mario runAction:moveTo];
    }
    if(position.x > mario.getLastPosition.x){
        MainScene *mainScene = [MainScene sharedMainScene];
        [mainScene updateBackground];
    }
}

-(void)goBack:(id)sender{
    NSLog(@"Mario Back.....");
    Mario *mario = [Mario createMario];
    CGPoint position = mario.position;
    position.x -= 0.05;
    if(position.x <= 0){
        position.x = 0.05;
    }
    [mario setLastPosition:position];
    CCActionMoveTo *moveTo = [CCActionMoveTo actionWithDuration:0.3 position:position];
    [mario runAction:moveTo];
}

-(void)goDown:(id)sender{
    NSLog(@"Mario Down.....");
    Mario *mario = [Mario createMario];
    CGPoint poisiton = mario.position;
    poisiton.y -= 0.05;
    CCActionMoveTo *moveTo = [CCActionMoveTo actionWithDuration:0.5 position:poisiton];
    [mario runAction:moveTo];
}
// -----------------------------------------------------------------

@end





