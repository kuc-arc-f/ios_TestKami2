//
//  ViewController.m
//  TestKami
//
//  Created by 中島 浩二 on 2013/11/11.
//  Copyright (c) 2013年 中島 浩二. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize mImageView;
@synthesize mTmpImage;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UITapGestureRecognizer *tap  = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(myImageTapHandler:)];
    [self.view addGestureRecognizer: tap];
    
    mCount=0;
    [self proc_dispInit];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)proc_dispInit{
    mImageView.image = [UIImage imageNamed:@"t1111a2.png"];
}

-(void)proc_dispByCount:(int) ict
{
    [mTmpImage removeFromSuperview];
    CGRect rect= CGRectMake(mImageView.frame.origin.x, mImageView.frame.origin.y, mImageView.frame.size.width, mImageView.frame.size.height );
    
//    UIImageView *iv = [[UIImageView alloc] initWithFrame:rect];
    mTmpImage = [[UIImageView alloc] initWithFrame:rect];
    //mTmpImage
    if(ict ==0){
        mTmpImage.image = [UIImage imageNamed:@"t1111a2b.png"];
    }
    else if(ict ==1){
        mTmpImage.image = [UIImage imageNamed:@"t1111a2g.png"];
    }
    else if(ict ==2){
        mTmpImage.image = [UIImage imageNamed:@"t1111a2r.png"];
    }
    
    [self.view addSubview: mTmpImage];
    mCount++;
    if(mCount > 2){
        mCount = 0;
    }
}

-(void)myImageTapHandler:(UIGestureRecognizer *)gestureRecognizer
{
 NSLog( @"#_myImageTapHandler=%d" , mCount);
    [self proc_dispByCount: mCount];
}

@end
