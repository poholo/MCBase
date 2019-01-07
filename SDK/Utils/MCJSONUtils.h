
#import <Foundation/Foundation.h>

/*!
 *	@class	JSON的简单适配器,5.0以上使用系统的
 */

@interface MCJSONUtils : NSObject

+ (id)objectFromJSONString:(NSString *)string;

+ (id)mutableObjectFromJSONString:(NSString *)string;

+ (id)objectFromJSONData:(NSData *)data;

+ (id)mutableObjectFromJSONData:(NSData *)data;

+ (NSString *)stringWithObject:(id)object;

+ (NSData *)dataWithObject:(id)object;
@end


//category，like JSONKit
@interface NSString (MCJSONDeserializing)
- (id)objectFromJSONString;

- (id)mutableObjectFromJSONString;
@end

@interface NSData (MCJSONDeserializing)
// The NSData MUST be UTF8 encoded JSON.
- (id)objectFromJSONData;

- (id)mutableObjectFromJSONData;
@end


@interface NSString (MCJSONSerializing)
- (NSData *)JSONData;

- (NSString *)JSONString;
@end

@interface NSArray (MCJSONSerializing)
- (NSData *)JSONData;

- (NSString *)JSONString;
@end

@interface NSDictionary (MCJSONSerializing)
- (NSData *)JSONData;

- (NSString *)JSONString;
@end