//
//  ViewController.m
//  WQMediator
//
//  Created by chenweiqiang on 2018/12/11.
//  Copyright © 2018年 chenweiqiang. All rights reserved.
//

#import "ViewController.h"
#import "WQMediator+WQFileModule.h"
#import "WQMediator+WQVideoMeeting.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"主界面";
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)gotoFileModule:(id)sender {
    
    UIViewController *vc = [[WQMediator sharedInstance] fileListViewController];
    [self.navigationController pushViewController:vc animated:YES];
    
}
- (IBAction)gotoVideoMeetingModule:(id)sender {
    
    UIViewController *vc = [[WQMediator sharedInstance] videoMeetingViewController];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
