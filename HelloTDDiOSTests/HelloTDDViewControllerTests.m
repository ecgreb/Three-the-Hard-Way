//
//  HelloTDDViewControllerTests.m
//  HelloTDDiOS
//
//  Created by Chuck Greb on 05/03/13.
//  Copyright (c) 2013 E. C. Greb. All rights reserved.
//

#import <objc/runtime.h>
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

- (void)testViewControllerHasNameFieldProperty {
    objc_property_t property = class_getProperty([viewController class], "nameField");
    STAssertTrue(property != NULL, @"HelloTDDiOS needs a text field.");
}

- (void)testViewControllerHasHelloLabelProperty {
    objc_property_t property = class_getProperty([viewController class], "helloLabel");
    STAssertTrue(property != NULL, @"HelloTDDiOS needs a hello label.");
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

- (void)testOnButtonClickPassesNameToDelegate {
    MockHelloTDDViewControllerDelegate *delegate = [[MockHelloTDDViewControllerDelegate alloc] init];
    viewController.delegate = delegate;
    UITextField *textField = [[UITextField alloc] init];
    textField.text = @"First Last";
    viewController.nameField = textField;
    [viewController onButtonClick:nil];
    STAssertEqualObjects(delegate.lastNameSent, @"First Last",
            @"View controller should pass name to delegate.");
}

@end
