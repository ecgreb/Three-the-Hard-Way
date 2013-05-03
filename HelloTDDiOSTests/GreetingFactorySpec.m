#import "KiwiMacros.h"
#import "KWCallSite.h"
#import "KWExpectationType.h"
#import "NSObject+KiwiVerifierAdditions.h"
#import "KWExample.h"
#import "KWSpec.h"
#import "GreetingFactory.h"
#import "MockHelloTDDViewController.h"
#import "KWEqualMatcher.h"

SPEC_BEGIN(GreetingFactorySpec)

describe(@"GreetingFactory", ^{
    GreetingFactory *greetingFactory = [[GreetingFactory alloc] init];

    context(@"when greeting factory is created", ^{
        it(@"should not be nil.", ^{
            [greetingFactory shouldNotBeNil];
        });

        it(@"should conform to delegate protocol.", ^{
            [[greetingFactory should] conformsToProtocol:@protocol(HelloTDDViewControllerDelegate)];
        });
    });

    context(@"when say hello is called", ^{
        it(@"should format greeting and send it to the controller.", ^{
            MockHelloTDDViewController *viewController = [[MockHelloTDDViewController alloc] init];
            [greetingFactory sayHello:@"First Last" toMyLittleFriend:viewController];
            [[viewController.lastGreetingShown should] equal:@"Hello, First Last!"];
        });
    });
});

SPEC_END
