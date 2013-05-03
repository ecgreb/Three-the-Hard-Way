//
//  HelloTDDViewControllerTests.m
//  HelloTDDiOS
//
//  Created by Chuck Greb on 05/03/13.
//  Copyright (c) 2013 E. C. Greb. All rights reserved.
//

#import "HelloTDDViewControllerTests.h"
#import "HelloTDDViewController.h"

@implementation HelloTDDViewControllerTests

- (void)testNotNil {
    HelloTDDViewController *viewController = [[HelloTDDViewController alloc] init];
    STAssertNotNil(viewController, @"View controller should not be nil.");
}

@end
