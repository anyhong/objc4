//
//  Runner.m
//  objc4-debug
//
//  Created by anyhong on 2021/5/29.
//

#import "Runner.h"
#import "Person.h"
#import "Action.h"

@interface Runner ()<Action>
@property (nonatomic, strong) NSMutableArray *strongArray;
@property (nonatomic, strong) NSMutableArray *weakArray;
@property (nonatomic, weak) Person *weakPerson;

@end

@implementation Runner

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    Runner *runner = [super allocWithZone:zone];
    return runner;
}

+ (instancetype)alloc {
    Runner *runner = [super alloc];
    return runner;
}

+ (void)load {
    
}

- (void)dealloc {
    NSLog(@"Runner dealloc [%@]", [NSThread currentThread]);
}

+ (void)initialize {
    
}

//+ (instancetype)new {
//    Runner *runner = [super new];
//    if (runner) {
//        
//    }
//    return runner;
//}

- (instancetype)init {
    self = [super init];
    if (self) {
//        Person *nicePersion = [[Person alloc] init];
//        [self.strongArray addObject:nicePersion];
//        
//        [self setupWeak];
//        NSLog(@"%@", _weakPerson);
//        
//        Person *obj = [[Person alloc] init];
//        __weak Person *weakPerson = obj;
    }
    return self;
}

+ (void)classTest {
    NSLog(@"classTest");
}

- (void)instanceTest {
    NSLog(@"instanceTest");
}

+ (void)test1 {
    
}

- (void)test2 {
    
}

+ (void)test2 {
    
}

- (void)forwardInvocation:(NSInvocation *)invocation {
    
}

- (id)forwardingTargetForSelector:(SEL)selector {
    return self;
}

- (void)setupWeak {
    Person *weakPerson = [[Person alloc] init];
    NSLog(@"%@", weakPerson);
    _weakPerson = weakPerson;
    
    NSLog(@"%@", weakPerson);
}

- (NSMutableArray *)strongArray {
    if (!_strongArray) {
        _strongArray = [NSMutableArray array];
    }
    return _strongArray;
}

- (NSMutableArray *)weakArray {
    if (!_weakArray) {
        _weakArray = [NSMutableArray array];
    }
    return _weakArray;
}

@end
