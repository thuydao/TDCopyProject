//
//  QSViewController.m
//  TeamplateProject
//
//  Created by thuydd on 1/15/15.
//  Copyright (c) 2015 Qsoft. All rights reserved.
//

#import "TBViewController.h"

#define abc @"eee"

@interface TBViewController ()
@end

@implementation TBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self activeLog];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)viewWillAppear:(BOOL)animated {
    userDefaultSet(@"aa", abc);
    NSString *b = userDefaultGet(abc);
    TDLOG(@"%@",b);
    NSString *a = [@"abcdef" substringFromIndex:@"abcdef".length - 4];
    for (int i = 9; i < 100; i++) {
         TDLOG(@"%@",a);
    }
}


@end
