//
//  ViewController.h
//  TestKami
//
//  Created by 中島 浩二 on 2013/11/11.
//  Copyright (c) 2013年 中島 浩二. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UIImageView *mImageView;
    UIImageView *mTmpImage;
    
    int mCount;
}

@property (retain, nonatomic) IBOutlet UIImageView *mImageView;
@property(retain, nonatomic )UIImageView *mTmpImage;

@end
