//
//  HelloWorldScene.m
//
//  Created by : Mr.Right
//  Project    : SuperMario
//  Date       : 2018/1/5
//
//  Copyright (c) 2018年 Mr.Right.
//  All rights reserved.
//
// -----------------------------------------------------------------

#import "IntroScene.h"
#import "MainScene.h"

// -----------------------------------------------------------------------

@implementation IntroScene

// -----------------------------------------------------------------------

- (id)init
{
    // Apple recommend assigning self with supers return value
    self = [super init];
    
    // The thing is, that if this fails, your app will 99.99% crash anyways, so why bother
    // Just make an assert, so that you can catch it in debug
    NSAssert(self, @"Whoops");
    
    // Background
    CCSprite9Slice *background = [CCSprite9Slice spriteWithImageNamed:@"white_square.png"];
    background.anchorPoint = CGPointZero;
    background.contentSize = [CCDirector sharedDirector].viewSize;
    background.color = [CCColor blackColor];
    background.opacity = 0.5;
    [self addChild:background];

//    // The standard Hello World text
//    CCLabelTTF *label = [CCLabelTTF labelWithString:@"Hello World" fontName:@"ArialMT" fontSize:64];
//    label.positionType = CCPositionTypeNormalized;
//    label.position = (CGPoint){0.5, 0.5};
//    [self addChild:label];
    CCButton *startBtn = [CCButton buttonWithTitle:@"[ Start Game ]" fontName:@"ArialMT" fontSize:40];
    [startBtn setPositionType:CCPositionTypeNormalized];
    [startBtn setPosition:ccp(0.5, 0.5)];
    [startBtn setTarget:self selector:@selector(startGame:)];
    
    [self addChild:startBtn];
    // done
    return self;
}

-(void)onEnter{
    [super onEnter];
    NSLog(@"onEnter........");
    //加载音频
}
-(void)onExit{
    [super onExit];
    NSLog(@"onExit........");
    //加载音频
}
-(void)startGame:(id)sender{
    
//    [self setVisible:NO];
    MainScene *mainScene = [MainScene new];
    [[CCDirector sharedDirector] replaceScene:mainScene];
}

// -----------------------------------------------------------------------

@end























// why not add a few extra lines, so we dont have to sit and edit at the bottom of the screen ...
