//
// Created by Jiangmingz on 2018/6/5.
// Copyright (c) 2018 GymChina inc. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef void (^CallBackTwo)(id value0, id value1);

typedef void (^CallBackThree)(id value0, id value1, id value2);

typedef void (^CallBackOne)(id value);

typedef void (^CallBackBOOL)(BOOL b);

typedef void (^CallBackText)(NSString *text);

typedef void (^CallbackNone)(void);

typedef void (^CallbackFinish)(BOOL finish, id value);

typedef id(^CallBackReturnOne)(void);
