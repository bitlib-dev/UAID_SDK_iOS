# iOS UAID SDK对接文档

## 1.导入SDK

*可以直接导入下载的SDK或通过Cocoapods安装SDK*

### 1.1 手动导入

直接导入UAID_iOS.framework

### 1.2 通过Cocoapods导入SDK
通过[CocoaPods](https://cocoapods.org)获取。安装它，编辑Podfile文件并添加以下代码

```ruby
pod 'UAID'
```

`> 执行 pod install`
`> 从现在开始使用 .xcworkspace 打开项目，而不是 .xcodeproj`


## 2.初始化SDK
**接口**

```java
/**
  * SDK初始化，只需执行一次初始化
  * @param key 平台分配的appKey
  */
- (void) initWithKey:(NSString *_Nullable)key;
```
**参数说明**

| 参数 | 类型 | 说明 |
| --- | --- | --- |
| key | String | 分配的Key |

**示例**

```java
#import <UAID/UAidHelper.h>

...

[[UAidHelper getInstance] initWithKey:@"分配的key"];

```

## 3.获取token

**接口**

```java
/**
 * 预授权获取accessCode
 * @param timeout 超时时间
 * @param type 运营商类型
 * @param listener 回调监听
 */
 
- (void)getToken:(double)timeout operatorType:(OperatorType)type listener:(WKResultListener _Nonnull) listener;

```
**参数说明**

| 参数 | 类型 | 说明 |
| --- | --- | --- |
| timeout | double | 请求超时时间 |
| type | ENUM | 运营商类型 <br> 中国移动: OperatorTypeCMCC  <br> 中国联通 :OperatorTypeCUCC <br> 中国电信 : OperatorTypeCTCC <br>无法确定 : OperatorTypeUnknow |
| listener | WKResultListener | 回调 |



**示例**

```

#import <UAID/UAidHelper.h>

...

[[UAidHelper getInstance] getToken:100 operatorType:OperatorTypeUnknow listener:^(NSDictionary * _Nonnull data) {
     /**
      * 成功时回调
      *
      * @param resultCode   0：成功，其他状态码为失败
      * @param msg          成功信息
      * @param operatorType 运营商类型，CM：中国移动 CU：中国联通  CT:中国电信
      * @param token        置换token
      * @param auth         校验信息
      * @param os           0：iOS
      */
      
       /**
      * 失败时回调
      *
      * @param resultCode  xx：非0状态码为失败
      * @param msg         失败原因
      */
    }];
}

```

**参数说明**

| 参数 | 类型 | 说明 |
| --- | --- | --- |
| resultCode | int | token获取成功时回调，0：成功，其他状态码为失败 |
| msg | String | 失败信息 |
| operatorType | String | 成功时返回，运营商类型，CM：中国移动 CU：中国联通 CT：中国电信|
| token | String | 成功时返回，置换token|
| auth | String | 成功时返回，校验信息|
| os | int | 当前系统，0：iOS|






