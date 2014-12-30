//
//  ViewController.h
//  AlphaTouch
//
//  Created by abruzzim on 12/29/14.
//  Copyright (c) 2014 Mario Abruzzi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController // (The "Paintbrush")

// Declare variable names for the subviews.
@property (strong, nonatomic) UILabel *headerLbl;
@property (weak, nonatomic) UIButton *fiftyPctBtn;
@property (weak, nonatomic) UIButton *hundredPctBtn;
@property (weak, nonatomic) UIButton *purpleBtn;
@property (weak, nonatomic) UIButton *greenBtn;
@property (weak, nonatomic) UIButton *blueBtn;

- (void)setBgColorPurple:(id)sender;
- (void)setBgTransparency:(id)sender;
- (void)setViewBgColor:(id)sender;

@end

