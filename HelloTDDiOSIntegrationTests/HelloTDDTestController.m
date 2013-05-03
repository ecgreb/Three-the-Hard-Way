//
//  HelloTDDTestController.m
//  HelloTDDiOS
//
//  Created by Chuck Greb on 05/03/13.
//  Copyright (c) 2013 E. C. Greb. All rights reserved.
//

#import "HelloTDDTestController.h"
#import "KIFTestScenario+HelloTDDAdditions.h"

@implementation HelloTDDTestController

- (void)initializeScenarios {
    [self addScenario:[KIFTestScenario testScenario]];
}

@end
