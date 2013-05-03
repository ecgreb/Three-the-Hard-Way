//
//  HelloTDDViewController.h
//  HelloTDDiOS
//
//  Created by Chuck Greb on 05/02/13.
//  Copyright (c) 2013 E. C. Greb. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MockHelloTDDViewControllerDelegate;
@protocol HelloTDDViewControllerDelegate;

@interface HelloTDDViewController : UIViewController

@property(nonatomic, weak) id<HelloTDDViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UILabel *helloLabel;

- (IBAction)onButtonClick:(id)sender;

@end
