//
//  ViewController.m
//  AlphaTouch
//
//  Created by abruzzim on 12/29/14.
//  Copyright (c) 2014 Mario Abruzzi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController // (The "Paintbrush")

/* loadView is called the first time the view property is accessed. */

- (void)loadView {
    // Return a screen object representing the device's screen.
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    
    // Create a View the size of the whole screen (The "Paint").
    UIView *view = [[UIView alloc] initWithFrame:viewRect];
    
    // Assign a View to this ViewController.
    self.view = view;
}

/* viewDidLoad is called after loadView; Typically where labels/buttons go. */

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Return a color object for the background color.
    self.view.backgroundColor = [UIColor colorWithRed:0.462 green:0.749 blue:0.937 alpha:1.0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"Started touching the screen.");
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"Ended touching the screen.");
}

@end
