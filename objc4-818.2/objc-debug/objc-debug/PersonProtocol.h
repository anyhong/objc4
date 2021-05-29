//
//  PersonProtocol.h
//  objc-debug
//
//  Created by anyhong on 2021/2/4.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PersonProtocol <NSObject>

@optional
- (void)eat;
- (void)sleep;

@end

NS_ASSUME_NONNULL_END
