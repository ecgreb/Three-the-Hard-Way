//
// Created by Chuck Greb on 5/3/13.
// Copyright (c) 2013 E. C. Greb. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "KIFTestScenario+HelloTDDAdditions.h"

@implementation KIFTestScenario (HelloTDDAdditions)

+ (id)testScenario {
    KIFTestScenario *scenario = [KIFTestScenario scenarioWithDescription:@"Test KIF config."];
    return scenario;
}

@end
