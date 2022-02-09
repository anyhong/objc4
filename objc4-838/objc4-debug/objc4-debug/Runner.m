//
//  Runner.m
//  objc4-debug
//
//  Created by anyhong on 2021/5/29.
//

#import "Runner.h"
#import "Person.h"

@interface Runner ()
@property (nonatomic, strong) NSMutableArray *strongArray;
@property (nonatomic, strong) NSMutableArray *weakArray;
@property (nonatomic, weak) Person *weakPerson;

@end

@implementation Runner

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
