//
//  Runner+Cus.m
//  objc4-debug
//
//  Created by manbang on 2022/2/10.
//

#import "Runner+Cus.h"
#import <objc/runtime.h>

@implementation Runner (Cus)

+ (void)load {
    
}

//// 会覆盖原来的
//+ (void)initialize {
//    
//}


- (void)setCusName:(NSString *)cusName {
    objc_setAssociatedObject(self, "cusName", cusName, OBJC_ASSOCIATION_COPY);
}

- (NSString *)cusName {
    NSString *nameObject = objc_getAssociatedObject(self, "cusName");
    return nameObject;
}

@end
