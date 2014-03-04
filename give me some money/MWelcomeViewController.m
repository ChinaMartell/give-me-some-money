//
//  MWelcomeViewController.m
//  give me some money
//
//  Created by 谢导 on 14-2-23.
//  Copyright (c) 2014年 shadow. All rights reserved.
//

#import "MWelcomeViewController.h"

@interface MWelcomeViewController ()

@end

@implementation MWelcomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)handleOk:(id)sender {
    if (![_inputField.text isEqualToString:@""]) {
        [[NSUserDefaults standardUserDefaults] setObject:_inputField.text forKey:@"name"];
        if ([self respondsToSelector:@selector(dismissViewControllerAnimated:completion:)]) {
            [self dismissViewControllerAnimated:YES completion:NULL];
        }else{
            [self dismissModalViewControllerAnimated:YES];
            
        }

    }
}
@end
