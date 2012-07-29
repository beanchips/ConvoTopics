//
//  ViewController.h
//  ConvoTopics3
//
//  Created by Annie Chang on 6/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>
#import <iAd/iAd.h>

@interface ViewController : UIViewController <MFMailComposeViewControllerDelegate,MFMessageComposeViewControllerDelegate,ADBannerViewDelegate>
{
    ADBannerView *adView;
}

@property (strong, nonatomic) IBOutlet UITextView *theTopic;
@property (strong, nonatomic) IBOutlet UIButton *theButton;
@property (nonatomic, strong) NSArray *theContent;
@property (nonatomic, retain) IBOutlet ADBannerView *adView;


@end
