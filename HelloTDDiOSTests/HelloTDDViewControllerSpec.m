#import <objc/runtime.h>
#import "KiwiMacros.h"
#import "KWSpec.h"
#import "KWExample.h"
#import "HelloTDDViewController.h"
#import "KWCallSite.h"
#import "NSObject+KiwiVerifierAdditions.h"
#import "KWValue.h"
#import "KWBeIdenticalToMatcher.h"
#import "KWBlockRaiseMatcher.h"
#import "MockHelloTDDViewControllerDelegate.h"
#import "KWBeTrueMatcher.h"
#import "KWEqualMatcher.h"

SPEC_BEGIN(HelloTDDViewControllerSpec)

describe(@"HelloTDDViewController", ^{
    HelloTDDViewController *viewController = [[HelloTDDViewController alloc] init];
    MockHelloTDDViewControllerDelegate *delegate = [[MockHelloTDDViewControllerDelegate alloc] init];

    context(@"when view controller is created", ^{

        it(@"should not be nil.", ^{
            [viewController shouldNotBeNil];
        });

        it(@"should have name field property.", ^{
            objc_property_t property = class_getProperty([viewController class], "nameField");
            [[theValue(property) shouldNot] beIdenticalTo:NULL];
        });

        it(@"should have hello label property.", ^{
            objc_property_t property = class_getProperty([viewController class], "helloLabel");
            [[theValue(property) shouldNot] beIdenticalTo:NULL];
        });
    });

    context(@"when delegate is set", ^{

        it(@"should reject non-conforming object.", ^{
            [[theBlock(^{
                viewController.delegate = (id <HelloTDDViewControllerDelegate>)[NSNull null];
            }) should] raiseWithName:@"NSInvalidArgumentException"
                              reason:@"Delegate object does not conform to correct protocol."];
        });

        it(@"should allow conforming object.", ^{
            [[theBlock(^{
                viewController.delegate = [[MockHelloTDDViewControllerDelegate alloc] init];
            }) shouldNot] raiseWithName:@"NSInvalidArgumentException"
                              reason:@"Delegate object does not conform to correct protocol."];
        });
    });

    context(@"when button is pressed", ^{

        it(@"should notify delegate.", ^{
            viewController.delegate  = delegate;
            [viewController onButtonClick:nil];
            [[theValue(delegate.buttonWasClicked) should] beYes];
        });

        it(@"should pass name to delegate.", ^{
            viewController.delegate  = delegate;
            UITextField *textField = [[UITextField alloc] init];
            textField.text = @"First Last";
            viewController.nameField = textField;
            [viewController onButtonClick:nil];
            [[delegate.lastNameSent should] equal:@"First Last"];
        });
    });

    context(@"when show message is called by delegate.", ^{

        it(@"should display greeting to user.", ^{
            UILabel *label = [[UILabel alloc] init];
            viewController.helloLabel = label;
            [viewController showGreeting:@"Hello, First Last!"];
            [[label.text should] equal:@"Hello, First Last!"];
        });
    });
});

SPEC_END
