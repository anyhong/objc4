//
//  Person.m
//  objc-debug
//
//  Created by anyhong on 2021/2/4.
//

#import "Person.h"
#import "Dog.h"
#import "PersonProtocol.h"

@interface Person ()<PersonProtocol>
@property (nonatomic, strong) Dog *strongObj;
@property (nonatomic, weak) Dog *weakObj;
@property (nonatomic, assign) NSInteger assignCount;
@property (nonatomic, strong) NSMutableArray *mArray;
@end

@implementation Person

- (void)dealloc {
    
}

+ (void)initialize {
    
}

+ (void)load {
    
}

- (instancetype)init {
    self = [super init];
    if (self) {
        Dog *dog = [[Dog alloc] init];
        
        NSLog(@"dog:%p--%p", dog, &dog);
        
        __unused __weak Dog *weakDog = dog;
        
        NSLog(@"weakDog:%p--%p", weakDog, &weakDog);
        
        _strongObj = dog;
        
        NSLog(@"_strongObj:%p--%p", _strongObj, &_strongObj);
        
        _strongObj = nil;
        
//        _strongObj = person;
//        _weakObj = person;
        
        
//        __unused __weak Person *obj2 = _weakObj;
        
    
    }
    return self;
}

- (void)pTest {
    
}

- (void)eat {
    
}

- (void)sleep {
    
}

@end


@interface Person (Inner)

@end

@implementation Person (Inner)

+ (void)load {
    
}

@end
