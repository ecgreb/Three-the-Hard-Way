//
// Created by Chuck Greb on 5/3/13.
// Copyright (c) 2013 E. C. Greb. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "MockHelloTDDViewController.h"

@implementation MockHelloTDDViewController

- (void)showGreeting:(NSString *)greeting {
    _lastGreetingShown = greeting;
}

@end
