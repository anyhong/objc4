//
//  Runner.h
//  objc4-debug
//
//  Created by anyhong on 2021/5/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Runner : NSObject
@property (nonatomic, strong) NSString *propertyStrongString;
@property (nonatomic, copy) NSString *propertyCopyString;
@property (nonatomic, strong) NSMutableString *mPropertyStrongString;
@property (nonatomic, copy) NSMutableString *mPropertyCopyString;
@end

NS_ASSUME_NONNULL_END