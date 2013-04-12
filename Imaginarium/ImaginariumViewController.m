//
//  ImaginariumViewController.m
//  Imaginarium
//
//  Created by nghia on 12/4/13.
//  Copyright (c) 2013 nghia. All rights reserved.
//

#import "ImaginariumViewController.h"

@interface ImaginariumViewController()
@property (nonatomic, retain) UIImageView *oneselement;
@end

@implementation ImaginariumViewController

@synthesize oneselement = _oneselement;

- (void)viewWillAppear:(BOOL)animated
{
    //initialize your UIImageView
    UIImageView *newOneselement = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ee.jpg"]];
    
    
    UIImage *image = newOneselement.image;
    self.oneselement = newOneselement;
    self.oneselement.userInteractionEnabled = YES;
    self.oneselement.contentMode = UIViewContentModeTopLeft;
    
    
    CGRect rect =CGRectMake(0, 0, image.size.width, image.size.height);
    self.oneselement.frame = rect;
    
    CGRect smallRect = CGRectMake(0, 0, 500, 500);
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:smallRect];
    scrollView.contentSize = CGSizeMake(image.size.width, image.size.height);
    [scrollView addSubview:self.oneselement];
    [self.view addSubview:scrollView];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
