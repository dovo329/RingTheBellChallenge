//
//  Student.m
//  RingTheBellChallenge
//
//  Created by Douglas Voss on 5/11/15.
//  Copyright (c) 2015 DougsApps. All rights reserved.
//

#import "Student.h"
#import "ViewController.h"

@implementation Student

- (instancetype)init {
    self = [super init];
    if (self) {
        [self registerForNotifications];
    }
    return self;
}

- (void)registerForNotifications
{
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    [nc addObserver:self
           selector:@selector(firstBellFunc:)
               name:(NSString *)firstBellID
             object:nil];
    
    NSNotificationCenter *nc2 = [NSNotificationCenter defaultCenter];
    [nc2 addObserver:self
            selector:@selector(lastBellFunc:)
                name:(NSString *)lastBellID
              object:nil];
}

-(void)firstBellFunc:(NSNotification *)notification
{
    NSLog(@"Student: Hurry to first period");
}

-(void)lastBellFunc:(NSNotification *)notification
{
    NSLog(@"Student: Get on the bus");
}

- (void)dealloc
{
    [self unregisterForNotifications];
}

- (void)unregisterForNotifications
{
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    //[nc removeObserver:self name:@"viewAppearedNotification" object:nil];
    [nc removeObserver:self];
}

@end
