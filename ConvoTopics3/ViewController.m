//
//  ViewController.m
//  ConvoTopics3
//
//  Created by Annie Chang on 6/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize theTopic;
@synthesize theButton;

- (void)viewDidLoad
{
   
	// Do any additional setup after loading the view, typically from a nib.
    UIImage *buttonImage = [[UIImage imageNamed:@"orangeButton.png"]
                            resizableImageWithCapInsets:UIEdgeInsetsMake(18, 18, 18, 18)];
    UIImage *buttonImageHighlight = [[UIImage imageNamed:@"orangeButtonHighlight.png"]
                                     resizableImageWithCapInsets:UIEdgeInsetsMake(18, 18, 18, 18)];
    UIImage *buttonImageHighlight2 = [[UIImage imageNamed:@"orangeButtonHighlight.png"]
                                     resizableImageWithCapInsets:UIEdgeInsetsMake(18, 18, 18, 18)];
    
    // Set the background for any states you plan to use
    [self.theButton setBackgroundImage:buttonImage forState:UIControlStateNormal]
    ;
    [self.theButton setBackgroundImage:buttonImageHighlight forState:UIControlStateHighlighted];
    
    //set first string
    [self setTopic:self];
    
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [self setTheTopic:nil];
    [self setTheButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}
/*
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return NO;//(interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}*/

- (IBAction)setTopic:(id)sender {
    NSMutableArray *topics = [[NSMutableArray alloc ] initWithObjects: 
                              @"What was your most embarassing moment?", 
                              @"Would you rather be kind or rich?", 
                              @"What's your dream job?", 
                              nil];
    
    //pick one topic
    int numTopics = [topics count];
    int chosen = arc4random() % numTopics;
    NSString *oneTopic = [topics objectAtIndex: chosen];      
    self.theTopic.text = oneTopic;
}
@end
