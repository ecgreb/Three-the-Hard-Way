//
//  HelloTDDViewController.m
//  HelloTDDiOS
//
//  Created by Chuck Greb on 05/02/13.
//  Copyright (c) 2013 E. C. Greb. All rights reserved.
//

#import "HelloTDDViewController.h"
#import "DDLog.h"

@interface HelloTDDViewController ()

- (IBAction)onButtonClick:(id)sender;

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
}

@end
