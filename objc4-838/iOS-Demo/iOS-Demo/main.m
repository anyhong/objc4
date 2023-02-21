//
//  main.m
//  iOS-Demo
//
//  Created by manbang on 2022/3/25.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "AObject.h"

void test2(int a, int b, int c, int d, int e, int f, int g, int h, int i, int j, int k) {
    int p1 = a + b + c + d + e + f + g + h + i + j + k;
//    int p;
//    NSObject *obj;
}

int test1(int a, int b) {
  int res = a + b;
  return res;
}

void test(void) {
    NSObject *obj = [NSObject alloc];
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

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
//    AObject *a2 = [[AObject alloc] init];
//    @autoreleasepool {
//        AObject *a1 = [[AObject alloc] init];
//
//        NSObject *obj = [[NSObject alloc] init];
//    }
    
    @autoreleasepool {
        test();
        NSInteger size = word_align1(2);

        
//        test1(1, 2);
    
//        id obj = nil;
//        Class cls = Nil;
//        char *c = NULL;
//        char *c1;
//        NSObject *obj1;
//        test(1, 2, 3, 4, 5, 6, 7, 8, 14, 15, 16);
        
        
//        NSObject *object0;
//        NSObject *object1;
//        NSObject *object2;
//        NSObject *object3;
//        NSObject *object4;
//        NSObject *object = [NSObject new];
        
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    
    NSLog(@"autoreleasepool - end");
    
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}


