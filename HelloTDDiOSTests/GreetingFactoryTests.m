//
//  GreetingFactoryTests.m
//  HelloTDDiOS
//
//  Created by Chuck Greb on 05/03/13.
//  Copyright (c) 2013 E. C. Greb. All rights reserved.
//

#import "GreetingFactoryTests.h"
#import "GreetingFactory.h"
#import "MockHelloTDDViewController.h"

@implementation GreetingFactoryTests {
    GreetingFactory *greetingFactory;
}

- (void)setUp {
    greetingFactory = [[GreetingFactory alloc] init];
}

- (void)testNotNil {
    STAssertNotNil(greetingFactory, @"Greeting factory should not be nil");
}

- (void)testUsesHelloTDDViewControllerDelegateProtocol {
    STAssertTrue([greetingFactory conformsToProtocol:@protocol(HelloTDDViewControllerDelegate)],
            @"Greeting factory should implement the delegate protocol.");
}

- (void)testSayHelloShouldFormatGreetingAndSendToViewController {
    MockHelloTDDViewController *viewController = [[MockHelloTDDViewController alloc] init];
    [greetingFactory sayHello:@"First Last" toMyLittleFriend:viewController];
    NSString *lastMessageShown = viewController.lastGreetingShown;
    STAssertEqualObjects(lastMessageShown, @"Hello, First Last!", @"Greeting factory should format"
            " greeting using name given and send it to the view controller for display.");
}

@end
