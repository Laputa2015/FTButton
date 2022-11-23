//
//  FTViewController.m
//  FTButton
//
//  Created by Laputa2015 on 11/23/2022.
//  Copyright (c) 2022 Laputa2015. All rights reserved.
//

#import "FTViewController.h"
#import "FTButton/CustomButton.h"

@interface FTViewController ()

@end

@implementation FTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CGRect frame = CGRectMake(self.view.center.x-50, self.view.center.y-50, 100, 100);
    CustomButton *button = [CustomButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    button.layer.borderColor = [UIColor blackColor].CGColor;
    button.layer.cornerRadius = frame.size.width / 8;
    button.layer.borderWidth = 1.0;
    button.titleLabel.font = [UIFont systemFontOfSize:14.0];
    button.titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitle:@"send" forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"plane_icon"] forState:UIControlStateNormal];
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
