//
//  MainScene.h
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
#import "cocos2d-ui.h"

// -----------------------------------------------------------------

@interface MainScene : CCScene

// -----------------------------------------------------------------
// properties

// -----------------------------------------------------------------
// methods

+ (instancetype)node;
+ (MainScene*)sharedMainScene;
- (instancetype)init;
- (void)loadMario;
- (void)loadBackground;
- (void)updateBackground;
- (void)loadControllers;
// -----------------------------------------------------------------

@end




