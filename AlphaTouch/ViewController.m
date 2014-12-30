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
    
    /* Add Label Object */
    
    // Create, place and size a label
    UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake((375/2)-(200/2), 30, 200, 44)];
    
    // Declare the label background and alignment.
    lbl.backgroundColor = [UIColor whiteColor];
    lbl.textAlignment = NSTextAlignmentCenter;
    
    // Declare the label text.
    lbl.text = @"Test Label";
    
    // Add the label as a subview.
    [self.view addSubview:lbl];
    
    /* Add Button Objects */

    // Declare a button.
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeSystem]; // The "Paint"; Control view object.
    
    // Set the button's corner radius.
    btn1.layer.cornerRadius = 5;
    
    // Place and size the button on the screen.
    btn1.frame = CGRectMake((375/2)-(140/2), 150, 140, 44);
    
    // Set the button's background color.
    btn1.backgroundColor = [UIColor yellowColor];
    
    // Set the button's normal title.
    [btn1 setTitle:@"Set Purple Bg" forState:UIControlStateNormal];
    
    // Set the button's touched title
    [btn1 setTitle:@"Btn1 Touched" forState:UIControlStateHighlighted];
    
    // Add control event (which "listens" for a "TouchUpInside" event)
    //   that sends a message to the ViewController,
    //   to call the "setBgColorPurple:" method,
    //   when the button is touched then released.
    // Technically: Add a target and action for a particular event to an internal dispatch table.
    [btn1 addTarget:self action:@selector(setBgColorPurple:) forControlEvents:UIControlEventTouchUpInside];
    
    // Add the button as a subview.
    [self.view addSubview:btn1];
    
    // Declare a button.
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeSystem]; // The "Paint"; Control view object.
    // Set the button's corner radius.
    btn2.layer.cornerRadius = 5;
    // Place and size the button on the screen.
    btn2.frame = CGRectMake((375/2)-(170/2), 200, 170, 44);
    // Set the button's background color.
    btn2.backgroundColor = [UIColor greenColor];
    // Set the button's normal title.
    [btn2 setTitle:@"Bg Transparency 50%" forState:UIControlStateNormal];
    // Set the button's touched title
    [btn2 setTitle:@"Btn2 Touched" forState:UIControlStateHighlighted];
    // Add a control event
    [btn2 addTarget:self action:@selector(chgBgTransparencyHalf:) forControlEvents:UIControlEventTouchUpInside];
    // Add the button as a subview.
    [self.view addSubview:btn2];
    
    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeRoundedRect]; // The "Paint"; Control view object.
    btn3.backgroundColor = [UIColor orangeColor];
    btn3.frame = CGRectMake((375/2)-(170/2), 250, 170, 44);
    btn3.layer.cornerRadius = 5;
    [btn3 setTitle:@"Bg Transparency 100%" forState:UIControlStateNormal];
    [btn3 setTitle:@"Btn3 Touched" forState:UIControlStateHighlighted];
    [btn3 addTarget:self action:@selector(chgBgTransparencyFull:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn3];
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

// Instance method that returns nothing
// called "setBgColorPurple:"
// that takes an id (pointer to an instance) of a UIButton class instance
// called "sender".
- (void)setBgColorPurple:(id)sender
{
    // Log event to the console.
    NSLog(@"setBgColorPurple event; sender is: %@", sender);
    // Set the root view's background color to purple.
    self.view.backgroundColor = [UIColor purpleColor];
}

- (void)chgBgTransparencyHalf:(id)sender
{
    // Log event to the console.
    NSLog(@"chgBgTransparencyHalf event; sender is: %@", sender);
    // Set root view's background transparency to 1/2.
    self.view.alpha = 0.5;
    // Remove the sender (the button) from the view.
    [sender removeFromSuperview];
}

- (void)chgBgTransparencyFull:(id)sender
{
    // Log event to the console.
    NSLog(@"chgBgTransparencyFull event; sender is: %@", sender);
    // Set root view's background transparency to 1.
    self.view.alpha = 1.0;
    // Remove the sender (the button) from the view.
    [sender removeFromSuperview];
}

@end
