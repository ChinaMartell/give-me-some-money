//
//  MWelcomeViewController.h
//  give me some money
//
//  Created by 谢导 on 14-2-23.
//  Copyright (c) 2014年 shadow. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MWelcomeViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UIButton *okBtn;
- (IBAction)handleOk:(id)sender;

@end
