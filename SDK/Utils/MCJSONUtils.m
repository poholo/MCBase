
#import "MCJSONUtils.h"

@implementation MCJSONUtils

+ (id)objectFromJSONString:(NSString *)string {
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    return [self objectFromJSONData:data];
}

+ (id)mutableObjectFromJSONString:(NSString *)string {
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    return [self mutableObjectFromJSONData:data];
}

+ (id)objectFromJSONData:(NSData *)data {
    return [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
}

+ (id)mutableObjectFromJSONData:(NSData *)data {
    return [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
}

+ (NSString *)stringWithObject:(id)object {
    NSString *string = nil;
    NSData *data = [self dataWithObject:object];
    if (data) {
        string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    }
    return string;
}

+ (NSData *)dataWithObject:(id)object {
    NSData *data = nil;
    if ([NSJSONSerialization isValidJSONObject:object]) {
        data = [NSJSONSerialization dataWithJSONObject:object options:NSJSONWritingPrettyPrinted error:nil];
    } else {
        NSLog(@"--->>object %@ not a json object", object);
    }
    return data;
}
@end


@implementation NSString (MCJSONDeserializing)
- (id)objectFromJSONString {
    return [MCJSONUtils objectFromJSONString:self];
}

- (id)mutableObjectFromJSONString {
    return [MCJSONUtils mutableObjectFromJSONString:self];
}
@end

@implementation NSData (MCJSONDeserializing)
// The NSData MUST be UTF8 encoded JSON.
- (id)objectFromJSONData {
    return [MCJSONUtils objectFromJSONData:self];
}

- (id)mutableObjectFromJSONData {
    return [MCJSONUtils mutableObjectFromJSONData:self];
}
@end


@implementation NSString (MCJSONSerializing)
- (NSData *)JSONData {
    return [MCJSONUtils dataWithObject:self];
}

- (NSString *)JSONString {
    return [MCJSONUtils stringWithObject:self];
}
@end

@implementation NSArray (MCJSONSerializing)
- (NSData *)JSONData {
    return [MCJSONUtils dataWithObject:self];
}

- (NSString *)JSONString {
    return [MCJSONUtils stringWithObject:self];
}
@end

@implementation NSDictionary (MCJSONSerializing)
- (NSData *)JSONData {
    return [MCJSONUtils dataWithObject:self];
}

- (NSString *)JSONString {
    return [MCJSONUtils stringWithObject:self];
}
@end
