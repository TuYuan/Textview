//
//  ViewController.m
//  TextView
//
//  Created by Xiakexing on 15/5/12.
//  Copyright (c) 2015年 xiakexing. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,copy)NSString *copystr;
@property(nonatomic,strong)NSString *strongstr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self test];
    NSLog(@"keximeiyouruguo");
}

-(void)test
{
    NSMutableString *str = [NSMutableString stringWithFormat:@"abc"];
    //self.strongstr = str;
    self.copystr = str;
//    self.copystr = @"bcd";
    NSLog(@"str  str :%p,%p", str,&str);
   // NSLog(@"strongstr:%@,%p",_strongstr,&_strongstr);
    NSLog(@"copystr:%@ ,%p",_copystr,&_copystr);
    
    NSLog(@"%@",[str class]);
   // NSLog(@"%@",[self.strongstr class]);
    NSLog(@"%@",[self.copystr class]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
