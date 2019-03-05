//
// Created by Jiangmingz on 2017/3/10.
// Copyright (c) 2017 GymChina inc. All rights reserved.
//


#import "MCDataVM.h"


@implementation MCDataVM

- (instancetype)init {
    self = [super init];
    if (self) {
        self.currentPos = @0;
    }
    return self;
}

- (BOOL)hasMore {
    return [self.currentPos integerValue] != -1;
}

- (void)refresh {
    self.isRefresh = YES;
    self.currentPos = @0;
}

- (void)more {
    self.isRefresh = NO;
}

- (NSMutableArray *)dataList {
    if (!_dataList) {
        _dataList = [NSMutableArray new];
    }
    return _dataList;
}

@end
