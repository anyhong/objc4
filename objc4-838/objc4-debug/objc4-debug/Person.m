//
//  Person.m
//  objc4-debug
//
//  Created by anyhong on 2021/5/29.
//

#import "Person.h"

@implementation Person

- (void)dealloc {
    
}

+ (void)load {
    
}

+ (void)initialize {
    
}

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

+ (instancetype)alloc {
    Person *person = [super alloc];
    return person;
}

@end
