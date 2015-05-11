//
//  ViewController.h
//  RingTheBellChallenge
//
//  Created by Douglas Voss on 5/11/15.
//  Copyright (c) 2015 DougsApps. All rights reserved.
//

#import <UIKit/UIKit.h>

/*Ring The Bell Challenge

- Create a new Single View Project
- Create a Teacher class that logs ‘Get ready to take roll’ on a notification named ‘firstBell’ and ‘Enter grades for the day’ on a notification named ‘lastBell’
- Create a Student class that logs ‘Hurry to first period’ on a notification named ‘firstBell’ and ‘Get on the bus’ on a notification named ‘lastBell’
- Create a Secretary class that logs ‘Pass out tardy notes’ on a notification named ‘firstBell’ and ‘Checkout the substitute teachers’ on a notification named ‘lastBell’
- In the default View Controller, instantiate all three classes, send a firstBell notification and a lastBell notification
*/

static const NSString *firstBellID = @"firstBell";
static const NSString *lastBellID = @"lastBell";

@interface ViewController : UIViewController


@end

