//
//  main.m
//  objc4-debug
//
//  Created by anyhong on 2022/2/9.
//

#import <Foundation/Foundation.h>
#import "Runner.h"
#import "Action.h"
#include <curses.h>

__attribute__((constructor))
void inittest() {
    
}
 
class Dog {
public:
    Dog(){
        printf("Dog::Dog()\n");
    }
     
    ~Dog(){
        printf("Dog::~Dog()\n");
    }
};
Dog dog;

static NSMutableArray *__array = nil;
static dispatch_queue_t __concurrentPoolQueue = nil;

void test() {
    __array = [NSMutableArray array];
    __concurrentPoolQueue = dispatch_queue_create("com.mb.testqueue", DISPATCH_QUEUE_CONCURRENT);
    Runner *runner = [Runner new];
    [__array addObject:runner];
    
    __weak Runner *runner1 = [__array firstObject];
    dispatch_async(dispatch_get_main_queue(), ^{
        [runner1 runnerInner];
        NSLog(@"runnerInner");
    });
    
//    dispatch_barrier_async(__concurrentPoolQueue, ^{
//        [__array removeAllObjects];
//    });
}

#ifdef __LP64__
#   define WORD_SHIFT 3UL
#   define WORD_MASK 7UL
#   define WORD_BITS 64
#else
#   define WORD_SHIFT 2UL
#   define WORD_MASK 3UL
#   define WORD_BITS 32
#endif

static inline uint32_t word_align1(uint32_t x) {
    return (x + WORD_MASK) & ~WORD_MASK;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger size = word_align1(17);
        
//        BOOL result = false;
//        int i = 10;
        test();
//        BOOL result;
//        BOOL result1;
//        BOOL result2;
//        NSLog(@"%p", result);
        
//        NSLog(@"%@", runner);
        
//        NSObject *obj = [[NSObject alloc] init];
//        __weak id weakObj = obj;
        char c = 0;
        while(c != '0') {
            scanf("%c", &c);
            if (c == 'a') {
                Runner *runner;
                Runner *runner1 = [Runner alloc];
            } else if (c == 'b'){
                Runner *runner2 = [[Runner alloc] init];
                runner2.propertyStrongString = @"12313";
                NSLog(@"propertyStrongString:%@", runner2.propertyStrongString);
                runner2.runnerInner = [[Runner alloc] init];
                [runner2 test2];
                [Runner test2];
            } else if (c == 'c'){
                Runner *runner3 = [Runner new];
            }
            printf("%c", c);
        }
//        Runner *runner0 = [runner1 init];
//        NSString *temp = @"Hello, World!Hello, World!";
//        Runner *runner = [[Runner alloc] init];
//        runner.propertyCopyString = temp;
//        NSLog(@"%@", runner.propertyCopyString);
//
//        __weak Runner *weakRunner = runner; // objc_initWeak
//
//
//        [runner instanceTest];
//        [Runner classTest];
//        [Runner test2];
//        NSLog(@"");
        
//
//        if ([runner conformsToProtocol:@protocol(Action)]) {
//            NSLog(@"conformsToProtocol: Action");
//        }
//
//        runner.propertyStrongString = temp;
//        NSLog(@"%@", runner.propertyStrongString);
//
//
//
//        NSMutableString *mTemp = [[NSMutableString alloc] initWithString:@"Mutable Hello, World! Mutable Hello, World!"];
//        runner.mPropertyCopyString = mTemp;
//        NSLog(@"%@", runner.mPropertyCopyString);
//
//        runner.mPropertyStrongString = mTemp;
//        NSLog(@"%@", runner.mPropertyStrongString);
//
//        [mTemp appendString:@"123123"];
//
//
//
//        NSDate *time0 = [NSDate date];
//        for (NSInteger index = 0; index < 100000; index++) {
//            runner.propertyStrongString = temp;
//        }
//        NSDate *time1 = [NSDate date];
//        NSLog(@"耗时：%f", [time1 timeIntervalSince1970] - [time0 timeIntervalSince1970]);
//
//        for (NSInteger index = 0; index < 100000; index++) {
//            runner.propertyCopyString = temp;
//        }
//        NSDate *time2 = [NSDate date];
//        NSLog(@"耗时：%f", [time2 timeIntervalSince1970] - [time1 timeIntervalSince1970]);
//
//        for (NSInteger index = 0; index < 100000; index++) {
//            NSString *s = runner.propertyStrongString;
//        }
//        NSDate *time3 = [NSDate date];
//        NSLog(@"耗时：%f", [time3 timeIntervalSince1970] - [time2 timeIntervalSince1970]);
//
//        for (NSInteger index = 0; index < 100000; index++) {
//            NSString *s = runner.propertyCopyString;
//        }
//
//        NSDate *time4 = [NSDate date];
//        NSLog(@"耗时：%f", [time4 timeIntervalSince1970] - [time3 timeIntervalSince1970]);
//
//
//
//        char c;
//        c = getchar();
//        printf("c: %c\n", c);
    }
    return 0;
}
