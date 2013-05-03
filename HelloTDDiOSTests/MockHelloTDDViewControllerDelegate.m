//
// Created by Chuck Greb on 5/3/13.
// Copyright (c) 2013 E. C. Greb. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//

#import "MockHelloTDDViewControllerDelegate.h"

@implementation MockHelloTDDViewControllerDelegate

- (void)sayHello:(NSString *)name {
    _buttonWasClicked = true;
    _lastNameSent = name;
}

@end
