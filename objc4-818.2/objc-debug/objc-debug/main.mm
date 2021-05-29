//
//  main.m
//  objc-debug
//
//  Created by anyhong on 2021/2/4.
//

#import <Foundation/Foundation.h>
#import "Person.h"


__attribute__((constructor))
void inittest() {
    
}
 
class Dog {
public:
    Dog(){
        printf("Dog::Dog()");
    }
     
    ~Dog(){
        printf("Dog::~Dog()");
    }
};

Dog dog;


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [[Person alloc] init];
        [person isMemberOfClass:[Person class]];
        
//        
//        id __weak obj1 = person;
    
        int i;
        scanf("%d", &i);
        printf("%d", i);
    }
    return 0;
}
