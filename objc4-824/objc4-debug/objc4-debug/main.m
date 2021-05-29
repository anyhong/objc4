//
//  main.m
//  objc4-debug
//
//  Created by anyhong on 2021/5/29.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *nicePerson = [[Person alloc] init];
        NSLog(@"Hello, World!");
    }
    return 0;
}
