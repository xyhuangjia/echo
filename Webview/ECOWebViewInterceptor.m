//
//  ECOWebViewInterceptor.m
//  BSBacktraceLogger
//
//  Created by huangj on 2021/1/14.
//

#import "ECOWebViewInterceptor.h"

@implementation ECOWebViewInterceptor
+ (instancetype)sharedInstance {
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        instance = [[ECONetworkInterceptor alloc] init];
    });
    return instance;
}
@end
