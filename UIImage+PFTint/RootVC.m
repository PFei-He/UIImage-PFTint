//
//  RootVC.m
//  UIImage+PFTint
//
//  Created by PFei_He on 14-8-14.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "RootVC.h"
#import "UIImage+PFTint.h"

@interface RootVC ()

@end

@implementation RootVC

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

    NSArray *imageArr = @[@"images.bundle/1", @"images.bundle/2",@"images.bundle/3"];
    int i = 0;
    for (NSString *imageStr in imageArr) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(20 + (100 * i), 100, 80, 80)];
        imageView.image = [[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:imageStr ofType:@"png"]] imageWithTintColor:[UIColor grayColor] blendMode:kCGBlendModeLighten alpha:0.9999f];
        [self.view addSubview:imageView];
        i++;
    }
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

@end
