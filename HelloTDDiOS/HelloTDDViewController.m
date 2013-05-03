//
//  HelloTDDViewController.m
//  HelloTDDiOS
//
//  Created by Chuck Greb on 05/02/13.
//  Copyright (c) 2013 E. C. Greb. All rights reserved.
//

#import "HelloTDDViewController.h"
#import "DDLog.h"
#import "HelloTDDViewControllerDelegate.h"

@interface HelloTDDViewController ()
@end

@implementation HelloTDDViewController

static const int ddLogLevel = LOG_LEVEL_VERBOSE;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onButtonClick:(id)sender {
    DDLogVerbose(@"onButtonClick");
    NSString *name = _nameField.text;
    [_delegate sayHello:name];
}

- (void)setDelegate:(id <HelloTDDViewControllerDelegate>)delegate {
    if (![delegate conformsToProtocol:@protocol(HelloTDDViewControllerDelegate)]) {
        [[NSException exceptionWithName: NSInvalidArgumentException
                                 reason: @"Delegate object does not conform to correct protocol."
                               userInfo: nil] raise];
    }

    _delegate = delegate;
}

- (void)showGreeting:(NSString *)message {
    _helloLabel.text = message;
}

@end
