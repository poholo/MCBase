//
// Created by 赵江明 on 15/11/11.
// Copyright (c) 2015 GymChina inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MCDto : NSObject

@property(nonatomic, copy) NSString *dtoId;

/**
 * 创建对象并且赋值一个随机主键值
 */
+ (__kindof MCDto *)createDtoId;

/**
 * 通过NSDictionary的key,value直接转化为一个对象
 */
+ (instancetype)createDto:(NSDictionary *)dict;

/**
 * 通过NSDictionary的手动new一个对象
 */
+ (instancetype)createWithDict:(NSDictionary *)dict;

- (void)changeDto:(NSDictionary *)dict;

- (BOOL)isOriginEqual:(id)other;

- (BOOL)isEqual:(id)other;

- (BOOL)isEqualToDto:(MCDto *)dto;

- (NSUInteger)hash;

@end
