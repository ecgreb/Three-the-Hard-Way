//
// Created by Chuck Greb on 5/7/13.
// Copyright (c) 2013 E. C. Greb. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <KIF/UIApplication-KIFAdditions.h>
#import "KIFTestStep+HelloTDDAdditions.h"
#import "UIAccessibilityElement-KIFAdditions.h"

@implementation KIFTestStep (HelloTDDAdditions)

+ (id)stepToVerifyGreeting:(NSString *)expectedLabel {
    NSString *description = [NSString stringWithFormat:@"Verify output is '%@'", expectedLabel];
    return [self stepWithDescription:description
                      executionBlock:^(KIFTestStep *step, NSError **error) {

        UIAccessibilityElement *element = [[UIApplication sharedApplication]
                accessibilityElementWithLabel:@"Greeting"];

        UILabel *label = (UILabel *)[UIAccessibilityElement
                viewContainingAccessibilityElement:element];

        if ([expectedLabel isEqualToString:label.text]) {
            return KIFTestStepResultSuccess;
        }

        KIFTestCondition(NO, error, @"Failed to compare the label text: expected '%@', actual '%@'",
                expectedLabel, label.text);
    }];
}

@end
