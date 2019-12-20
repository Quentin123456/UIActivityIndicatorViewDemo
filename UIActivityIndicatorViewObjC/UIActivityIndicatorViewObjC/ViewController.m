//
//  ViewController.m
//  UIActivityIndicatorViewObjC
//
//  Created by ChuangLan on 2019/12/13.
//  Copyright © 2019 QuentinZang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicatorView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.indicatorView startAnimating];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.indicatorView stopAnimating];
        [self.indicatorView setHidesWhenStopped:YES];
    });
}


@end
