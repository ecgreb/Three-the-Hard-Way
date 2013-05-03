//
//  HelloTDDViewControllerTests.m
//  HelloTDDiOS
//
//  Created by Chuck Greb on 05/03/13.
//  Copyright (c) 2013 E. C. Greb. All rights reserved.
//

#import "HelloTDDViewControllerTests.h"
#import "HelloTDDViewController.h"
#import "MockHelloTDDViewControllerDelegate.h"

@implementation HelloTDDViewControllerTests {
    HelloTDDViewController *viewController;
}

- (void)setUp {
    viewController = [[HelloTDDViewController alloc] init];
}

- (void)testNotNil {
    STAssertNotNil(viewController, @"View controller should not be nil.");
}

- (void)testNonConformingObjectCannotBeDelegate {
    STAssertThrows(viewController.delegate = (id <HelloTDDViewControllerDelegate>)[NSNull null],
            @"Non-conforiming object should throw an excpetion.");
}

- (void)testConformingObjectCanBeDelegate {
    STAssertNoThrow(viewController.delegate = [[MockHelloTDDViewControllerDelegate alloc] init],
            @"Conforming object should not throw an exception.");
}

- (void)testOnButtonClickNotifiesDelegate {
    MockHelloTDDViewControllerDelegate *delegate = [[MockHelloTDDViewControllerDelegate alloc] init];
    viewController.delegate  = delegate;
    [viewController onButtonClick:nil];
    BOOL result = delegate.buttonWasClicked;
    STAssertTrue(result, @"View controller should notify delegate on button click.");
}

@end
