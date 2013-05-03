//
// Created by Chuck Greb on 5/3/13.
// Copyright (c) 2013 E. C. Greb. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//

#import "GreetingFactory.h"

@implementation GreetingFactory

- (void)sayHello:(NSString *)name {
    [_viewController showGreeting:[NSString stringWithFormat:@"Hello, %@!", name]];
}

@end
