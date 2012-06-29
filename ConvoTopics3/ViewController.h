//
//  ViewController.h
//  ConvoTopics3
//
//  Created by Annie Chang on 6/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextView *theTopic;
@property (strong, nonatomic) IBOutlet UIButton *theButton;
- (IBAction)setTopic:(id)sender;

@end
