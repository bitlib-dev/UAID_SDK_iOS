//
//  WKUidHelper.h
//  UAID
//
//  Created by bitlib on 2021/3/23.
//

#import <Foundation/Foundation.h>

typedef void (^WKResultListener)(NSDictionary * _Nonnull data);

typedef NS_ENUM(NSUInteger, OperatorType) {
    OperatorTypeUnknow = 0, //未知
    OperatorTypeCMCC   = 1, //移动
    OperatorTypeCTCC   = 2, //电信
    OperatorTypeCUCC   = 3  //联通
};

@interface UAidHelper : NSObject

+(UAidHelper *_Nonnull) getInstance;

/**
 SDK初始化，只需执行一次初始化
 @param key 平台分配的appKey
 */
- (void) initWithKey:(NSString *_Nullable)key;


/**
 预授权获取token
 @param timeout 超时时间
 @param type 运营商类型
 @param listener 回调监听
 */
- (void)getToken:(double)timeout operatorType:(OperatorType)type listener:(WKResultListener _Nonnull) listener;


@end
