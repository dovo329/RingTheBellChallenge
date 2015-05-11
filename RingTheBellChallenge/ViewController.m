//
//  ViewController.m
//  RingTheBellChallenge
//
//  Created by Douglas Voss on 5/11/15.
//  Copyright (c) 2015 DougsApps. All rights reserved.
//

#import "ViewController.h"
#import "Teacher.h"
#import "Student.h"
#import "Secretary.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@ %s", self, __PRETTY_FUNCTION__);
    
    Secretary *secretary = [Secretary new];
    Teacher *teacher = [Teacher new];
    Student *student = [Student new];
    
    
    //[student registerForNotifications];
    //[teacher registerForNotifications];
    //[secretary registerForNotifications];
    
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    [nc postNotificationName:(NSString *)firstBellID object:self userInfo:nil];
    [nc postNotificationName:(NSString *)lastBellID object:self userInfo:nil];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
