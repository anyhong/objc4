//
//  main.m
//  objc4-debug
//
//  Created by anyhong on 2021/5/29.
//

#import <Foundation/Foundation.h>
#import "Runner.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
        
        NSString *temp = @"Hello, World!Hello, World!";
        
        Runner *runner = [[Runner alloc] init];
        runner.propertyCopyString = temp;
        NSLog(@"%@", runner.propertyCopyString);
        
        runner.propertyStrongString = temp;
        NSLog(@"%@", runner.propertyStrongString);
        
        
        
        NSMutableString *mTemp = [[NSMutableString alloc] initWithString:@"Mutable Hello, World! Mutable Hello, World!"];
        runner.mPropertyCopyString = mTemp;
        NSLog(@"%@", runner.mPropertyCopyString);
        
        runner.mPropertyStrongString = mTemp;
        NSLog(@"%@", runner.mPropertyStrongString);
        
        [mTemp appendString:@"123123"];
        
        
        
        NSDate *time0 = [NSDate date];
        for (NSInteger index = 0; index < 100000; index++) {
            runner.propertyStrongString = temp;
        }
        NSDate *time1 = [NSDate date];
        NSLog(@"耗时：%f", [time1 timeIntervalSince1970] - [time0 timeIntervalSince1970]);
        
        for (NSInteger index = 0; index < 100000; index++) {
            runner.propertyCopyString = temp;
        }
        NSDate *time2 = [NSDate date];
        NSLog(@"耗时：%f", [time2 timeIntervalSince1970] - [time1 timeIntervalSince1970]);
        
        for (NSInteger index = 0; index < 100000; index++) {
            NSString *s = runner.propertyStrongString;
        }
        NSDate *time3 = [NSDate date];
        NSLog(@"耗时：%f", [time3 timeIntervalSince1970] - [time2 timeIntervalSince1970]);
        
        for (NSInteger index = 0; index < 100000; index++) {
            NSString *s = runner.propertyCopyString;
        }
        
        NSDate *time4 = [NSDate date];
        NSLog(@"耗时：%f", [time4 timeIntervalSince1970] - [time3 timeIntervalSince1970]);

        
        
        char c;
        c = getchar();
        printf("c: %c\n", c);
    }
    return 0;
}
