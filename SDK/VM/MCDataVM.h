//
// Created by Jiangmingz on 2017/3/10.
// Copyright (c) 2017 GymChina inc. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MCDataVM : NSObject

@property(nonatomic, strong) NSMutableArray *dataList;

@property(nonatomic, strong) NSNumber *currentPos;
@property(nonatomic, assign) BOOL isRefresh;

- (void)refresh;

- (void)more;

- (BOOL)hasMore;

@end
