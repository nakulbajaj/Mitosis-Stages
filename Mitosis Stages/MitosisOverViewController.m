//
//  MitosisOverViewController.m
//  Mitosis Stages
//
//  Created by Nakul Bajaj on 11/9/15.
//  Copyright © 2015 Nakul Bajaj. All rights reserved.
//

#import "MitosisOverViewController.h"

@interface MitosisOverViewController ()

@end

@implementation MitosisOverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)viewDidLayoutSubviews {
    [CellCycleInfo setContentOffset:CGPointZero animated:NO];
}

- (IBAction)WikiPage {
     [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"https://en.wikipedia.org/wiki/Cell_cycle"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
