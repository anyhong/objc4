//
//  ViewController.m
//  objc4-debugGUI
//
//  Created by manbang on 2022/3/14.
//

#import "ViewController.h"
#import "Person.h"


@interface ViewController ()
@property (nonatomic, strong) NSButton *button;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSButton *button = [[NSButton alloc] initWithFrame:CGRectMake(50, 50, 50, 50)];
    [button setAction:@selector(actionClick:)];
    [button setTitle:@"alloc"];
    [self.view addSubview:button];
    
    NSButton *button1 = [[NSButton alloc] initWithFrame:CGRectMake(150, 50, 50, 50)];
    [button1 setAction:@selector(actionClick1:)];
    [button1 setTitle:@"new"];
    [self.view addSubview:button1];
    
    NSButton *button2 = [[NSButton alloc] initWithFrame:CGRectMake(250, 50, 50, 50)];
    [button2 setAction:@selector(actionClick2:)];
    [button2 setTitle:@"alloc init"];
    [self.view addSubview:button2];
}

- (void)actionClick:(NSButton *)sender {
    Person *person = [Person alloc];
}

- (void)actionClick1:(NSButton *)sender {
    Person *person = [Person new];
}

- (void)actionClick2:(NSButton *)sender {
    Person *person = [[Person alloc] init];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
}

@end
