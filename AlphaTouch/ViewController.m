//
//  ViewController.m
//  AlphaTouch
//
//  Created by abruzzim on 12/29/14.
//  Copyright (c) 2014 Mario Abruzzi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) NSArray *btnLabels;

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
    
    // Create, place and size a label using @property name.
    self.headerLbl = [[UILabel alloc] initWithFrame:CGRectMake((375/2)-(200/2), 30, 200, 44)];
    
    // Declare the label background and alignment.
    self.headerLbl.backgroundColor = [UIColor whiteColor];
    self.headerLbl.textAlignment = NSTextAlignmentCenter;
    
    // Declare the label text.
    self.headerLbl.text = @"Test Label";
    
    // Add the label as a subview.
    [self.view addSubview:self.headerLbl];
    
    /* Add Button Objects */

    // Declare a button using @property name.
    self.purpleBtn = [UIButton buttonWithType:UIButtonTypeSystem]; // The "Paint"; Control view object.
    
    // Set the button's corner radius.
    self.purpleBtn.layer.cornerRadius = 5;
    
    // Place and size the button on the screen.
    self.purpleBtn.frame = CGRectMake((375/2)-(140/2), 150, 140, 44);
    
    // Set the button's background color.
    self.purpleBtn.backgroundColor = [UIColor yellowColor];
    
    // Set the button's normal title.
    [self.purpleBtn setTitle:@"Set Purple Bg" forState:UIControlStateNormal];
    
    // Set the button's touched title
    [self.purpleBtn setTitle:@"Btn1 Touched" forState:UIControlStateHighlighted];
    
    // Add control event (which "listens" for a "TouchUpInside" event)
    //   that sends a message to the ViewController,
    //   to call the "setBgColorPurple:" method,
    //   when the button is touched then released.
    // Technically: Add a target and action for a particular event to an internal dispatch table.
    [self.purpleBtn addTarget:self
                       action:@selector(setViewBgColor:)
             forControlEvents:UIControlEventTouchUpInside];
    
    // Add the button as a subview.
    [self.view addSubview:self.purpleBtn];
    
    // Declare a button using @property name.
    self.fiftyPctBtn = [UIButton buttonWithType:UIButtonTypeSystem]; // The "Paint"; Control view object.
    // Set the button's corner radius.
    self.fiftyPctBtn.layer.cornerRadius = 5;
    // Place and size the button on the screen.
    self.fiftyPctBtn.frame = CGRectMake((375/2)-(170/2), 200, 170, 44);
    // Set the button's background color.
    self.fiftyPctBtn.backgroundColor = [UIColor greenColor];
    // Set the button's normal title.
    [self.fiftyPctBtn setTitle:@"Bg Transparency 50%" forState:UIControlStateNormal];
    // Set the button's touched title
    [self.fiftyPctBtn setTitle:@"Btn2 Touched" forState:UIControlStateHighlighted];
    // Add a control event
    [self.fiftyPctBtn addTarget:self
                         action:@selector(setBgTransparency:)
               forControlEvents:UIControlEventTouchUpInside];
    // Add the button as a subview.
    [self.view addSubview:self.fiftyPctBtn];
    
    self.hundredPctBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect]; // The "Paint"; Control view object.
    self.hundredPctBtn.backgroundColor = [UIColor orangeColor];
    self.hundredPctBtn.frame = CGRectMake((375/2)-(170/2), 250, 170, 44);
    self.hundredPctBtn.layer.cornerRadius = 5;
    [self.hundredPctBtn setTitle:@"Bg Transparency 100%" forState:UIControlStateNormal];
    [self.hundredPctBtn setTitle:@"Btn3 Touched" forState:UIControlStateHighlighted];
    [self.hundredPctBtn addTarget:self
                           action:@selector(setBgTransparency:)
                 forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.hundredPctBtn];

    // Green Background Button
    self.greenBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.greenBtn.layer.cornerRadius = 10;
    self.greenBtn.frame = CGRectMake((375/2)-(100/2), 300, 100, 44);
    self.greenBtn.backgroundColor = [UIColor magentaColor];
    [self.greenBtn setTitle:@"Make Green" forState:UIControlStateNormal];
    [self.greenBtn addTarget:self
                      action:@selector(setViewBgColor:)
            forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.greenBtn];
    
    // Blue Background Button
    self.blueBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.blueBtn.layer.cornerRadius = 10;
    self.blueBtn.frame = CGRectMake((375/2)-(100/2), 350, 100, 44);
    self.blueBtn.backgroundColor = [UIColor grayColor];
    [self.blueBtn setTitle:@"Make Blue" forState:UIControlStateNormal];
    [self.blueBtn addTarget:self
                     action:@selector(setViewBgColor:)
           forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.blueBtn];
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
// called "setBgTransparency"
// that takes an id (pointer to an instance) of a UIButton class instance
// called "sender".

- (void)setBgTransparency:(UIButton *)sender
{
    // Log the event to the console.
    NSLog(@"setBgTransparency event; Sending object is: %@", sender);
    
    // Examine the sender (the object)
    // to determine the correct action to take.
    if ([sender isEqual:self.fiftyPctBtn]) {
        // Set the root view's background transparency to 1/2.
        self.view.alpha = 0.5;
    } else {
        // Set the root view's background transparency to 1.
        self.view.alpha = 1.0;
    }
    
    // Remove the sender (the button) from the view.
    [sender removeFromSuperview];
}

// Instance method that returns nothing
// called "setViewBgColor"
// that takes a pointer to an instance of a UIButton class
// called "sender".

- (void)setViewBgColor:(UIButton *)sender
{
    // Log event to the console.
    NSLog(@"setViewBgColor-I-DEBUG, sender: %@", sender);
    
    NSLog(@"setViewBgColor-I-DEBUG, Button titleLabel text: %@", sender.titleLabel.text);

    self.btnLabels = @[@"Make Green",@"Make Blue",@"Set Purple Bg"];
    unsigned long label = [self.btnLabels indexOfObject:sender.titleLabel.text];
    
    NSLog(@"setViewBgColor-I-DEBUG, Selected button title index: %lu", label);

    // Examine the sender's (button's) property
    // converted into an unsigned long integer
    // to determine the correct action to take.
    switch (label) {
        case 0:
            self.view.backgroundColor = [UIColor greenColor];
            break;
            
        case 1:
            self.view.backgroundColor = [UIColor blueColor];
            break;
            
        case 2:
            self.view.backgroundColor = [UIColor purpleColor];
            break;
            
        default:
            break;
    }
}

@end
