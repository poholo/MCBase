//
// Created by Jiangmingz on 2018/6/11.
// Copyright (c) 2018 GymChina inc. All rights reserved.
//


#import "MCDeviceUtils.h"

#import <MCVersion/SDVersion.h>
#import <sys/utsname.h>

@implementation MCDeviceUtils

+ (BOOL)iPhoneX {
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *code = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    NSArray *devices = @[@"iPhone10,3", @"iPhone10,6", @"iPhone11,8", @"iPhone11,2", @"iPhone11,4", @"iPhone11,6", @"iPhone12,1", @"iPhone12,3", @"iPhone12,5", @"iPhone12,8", @"iPhone13,2", @"iPhone13,3", @"iPhone13,4", @"iPhone13,1"];
    for (NSString *d in devices) {
        if ([d isEqualToString:code]) {
            return YES;
        }
    }
    return NO;
}

+ (CGFloat)xTop {
    if ([MCDeviceUtils iPhoneX]) {
        return 24.0f;
    }

    return 0.0f;
}

+ (CGFloat)xBottom {
    if ([MCDeviceUtils iPhoneX]) {
        return 34.0f;
    }

    return 0.0f;
}

+ (CGFloat)xStatusBarHeight {
    if ([MCDeviceUtils iPhoneX]) {
        return 24.0f + 20.0f;
    }

    return 20.0f;
}

+ (CGFloat)xNavBarHeight {
    if ([MCDeviceUtils iPhoneX]) {
        return 44.0f + 44.0f;
    }

    return 20.0f + 44;
}

+ (CGFloat)xTabBarHeight {
    if ([MCDeviceUtils iPhoneX]) {
        return 49.0f + 34.0f;
    }

    return 49;
}

+ (CGFloat)xVideoLeftRight {
    if ([MCDeviceUtils iPhoneX]) {
        return ([MCDeviceUtils xMax] - [MCDeviceUtils xVideoLandscapeWidth]) * 0.5f;
    }

    return 0.0f;
}

//竖屏高度
+ (CGFloat)xVideoPortraitHeight {
    return [MCDeviceUtils xMax] - [MCDeviceUtils xTop] - [MCDeviceUtils xBottom];
}

//横屏宽度
+ (CGFloat)xVideoLandscapeWidth {
    return (16.0f * [MCDeviceUtils xMin]) / 9.0f;
}

+ (CGFloat)xMin {
    CGFloat w = CGRectGetWidth([UIScreen mainScreen].bounds);
    CGFloat h = CGRectGetHeight([UIScreen mainScreen].bounds);
    return MIN(h, w);
}

+ (CGFloat)xMax {
    CGFloat w = CGRectGetWidth([UIScreen mainScreen].bounds);
    CGFloat h = CGRectGetHeight([UIScreen mainScreen].bounds);
    return MAX(h, w);
}

+ (CGFloat)xProgress {
    if ([MCDeviceUtils iPhoneX]) {
        return 8.0f;
    }

    return 0.0f;
}

@end
