#import "KiwiMacros.h"
#import "KWSpec.h"
#import "KWExample.h"
#import "HelloTDDViewController.h"
#import "KWCallSite.h"
#import "NSObject+KiwiVerifierAdditions.h"

SPEC_BEGIN(HelloTDDViewControllerSpec)

describe(@"HelloTDDViewController", ^{
    context(@"when view controller is created", ^{
        HelloTDDViewController *viewController = [[HelloTDDViewController alloc] init];

        it(@"should not be nil.", ^{
            [viewController shouldNotBeNil];
        });
    });
});

SPEC_END
