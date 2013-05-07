//
// Created by Chuck Greb on 5/3/13.
// Copyright (c) 2013 E. C. Greb. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <KIF/KIFTestStep.h>
#import "KIFTestScenario+HelloTDDAdditions.h"
#import "KIFTestStep+HelloTDDAdditions.h"

@implementation KIFTestScenario (HelloTDDAdditions)

+ (id)scenarioToDisplayGreeting {
    KIFTestScenario *scenario = [KIFTestScenario scenarioWithDescription:@"Test greeting with name."];
    [scenario addStep:[KIFTestStep stepToEnterText:@"Chuck Norris" intoViewWithAccessibilityLabel:@"Name"]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"Say Hello"]];
    [scenario addStep:[KIFTestStep stepToVerifyGreeting:@"Hello, Chuck Norris!"]];
    return scenario;
}

@end
