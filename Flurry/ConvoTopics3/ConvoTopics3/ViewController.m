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
@synthesize theTopic = _theTopic;
@synthesize theButton = _theButton;
@synthesize theContent = _theContent;
@synthesize adView = _theAdView;
int theIndex = 0;
//BOOL showAd = FALSE;

- (NSArray *) theContent
{
    if(_theContent == nil){
        
        _theContent = [[NSArray alloc] initWithObjects:
                       //NSMutableArray *topics = [[NSMutableArray alloc ] initWithObjects: 
                       @"If you could have any view from your backyard what would it be?", 
                       @"What was your most embarassing moment?", 
                       @"Would you rather be 20% smarter or 20% better looking?",  
                       @"What's your dream job?", 
                       @"Does each person have just one soul mate?", 
                       @"Who's the most famous person you've ever met?", 
                       @"What do you miss most about childhood?", 
                       @"What's more important: intelligence or common sense?", 
                       @"If you could master one musical instrument which would it be?", 
                       @"Would you stop eating junk food to live 5 years longer?", 
                       
                       @"What's the hardest thing you've ever done?", 
                       @"What one goal do you hope to accomplish this year?", 
                       @"What's your biggest pet peeve?", 
                       @"Who would you like to trade places with for a month?", 
                       @"What's your favorite way to spend a rainy day?", 
                       @"When you were young, what did you get in the most trouble for?", 
                       @"Would you go to war if you were drafted?", 
                       @"What's the nicest thing someone has ever done for you?", 
                       @"If you could choose 5 friends to travel around the world with, who would you choose?", 
                       @"What would your theme song be?",
                       
                       @"If you could relive any moment in your life which would it be?", 
                       @"What's your favorite part of Thanksgiving dinner?", 
                       @"Do you live more in the past, present, or future?", 
                       @"Is it more important to live for yourself or for others?", 
                       @"What's your favorite book?",  
                       @"What's the best thing about being a man or a woman?",
                       @"Would you rather be kind or rich?",  
                       @"When you're down what do you do to feel better?", 
                       @"What's your favorite movie?",  
                       
                       @"What's been your most spiritually awakening experience?", 
                       @"If you got a tattoo what would it be and where would you put it?", 
                       @"What song evokes the strongest memories for you?", 
                       @"What event in the past present or future would you like to witness in person?", 
                       @"Would you ever freeze yourself when you die in order to be reanimated later?", 
                       @"Which would you prefer: a housekeeper, cook, or personal secretary?", 
                       @"What one question would you ask a psychic about your future?", 
                       @"Do you believe in destiny?",
                       @"Which holiday do you wish we could celebrate twice a year?", 
                       @"Rank in order of importance: love, spirituality, freedom, happiness.", 
                       
                       @"Which language would you like to speak fluently?", 
                       @"What was the last thing you cried about?", 
                       @"What was your favorite childhood meal?", 
                       @"What's your earliest memory?", 
                       @"Where would you choose to live if you had to leave this country?", 
                       @"Which is more important, the respect of your children or your parents?", 
                       @"In what era would you most like to have grown up?", 
                       @"If you were cremated, where would you want to have your ashes spread?", 
                       @"What was your most memorable meal?", 
                       @"Do you consider yourself more of an adult or a child?", 
                       
                       @"If you could do something dangerous just once risk-free what would you do?",
                       @"If you could be invisible for an hour what would you do?",     
                       @"What's your favorite meal of the day?",
                       @"Which celebrity would play you in a movie?", 
                       @"Who is your celebrity crush?", 
                       @"What do you believe happens after you die?",
                       @"What is the best age?", 
                       @"Have you ever had an experience that led you to believe in the supernatural?", 
                       @"Which feature do you admire most in the opposite sex?",                              
                       @"Would you consider getting cosmetic surgery?",
                       
                       @"What was your best purchase?",
                       @"Would you kill one person to save ten people?",
                       @"What's the most significant problem facing the world?",   
                       @"If you didn't have to work for a living, how would you spend your days?",                               
                       @"Which cause would you donate a million dollars to if you could?",                          
                       @"Are you a saver or a spender?",
                       @"Do you believe in love at first sight?", 
                       @"Do you have a signature dish?", 
                       @"What are you scared of?",
                       @"If you could have any super power, what would it be?", 
                       
                       
                       @"What scars do you have and how did you get them?",
                       @"If you could have dinner with 3 people, living or dead, who would they be?",
                       @"What would you eat for your last meal?", 
                       @"What's your favorite animal?",
                       @"If you had to be born into a different culture, what would it be?",
                       @"What are your pet peeves?",
                       @"What's the most terrified you've ever been?",
                       @"Which of your friends would you most want on your team in a fight?",
                       @"Are people inherently good or inherently bad?",
                       
                       
                       @"Are you a morning person or evening person?",
                       @"Do animals love?",   
                       @"What would you do if you had only 24 hours left to live?",                               
                       @"Where would you most like to travel to?", 
                       @"If you could know the date of your death with no way to change it, would you choose to know?",

                       @"If you got to choose, would you be born as the same gender that you are now?",
                       @"If your life were made into a movie, who would play you?",
                       @"What did you do last weekend?", 
                       @"What's your favorite midnight snack?", 
                       @"If you could have front row seats to any concert who would you see?",
                       
                       @"What would you do if you won the lottery?", 
                       @"What was your first job?", 
                       @"What movie or book are you ashamed to admit you love?",
                       @"If money were no object what kind of party would you throw and where?",
                       @"If you had the means, how would you address homelessness?",                                 
                       @"Are you more messy or neat?",         
                       @"Which word describes you better: carefree or intense?",
                       @"If you were a type of vehicle what would you be?", 
                       @"Would you prefer a quiet life of safety or a life of great adventure and uncertainty?", 
                       @"Are you more late or punctual?",
                       
                       @"How much influence or control do your parents have on your life?", 
                       @"Would you want to have an identical twin sibling?", 
                       @"What would you do if you met your clone?", 
                       @"What's worse: starving children or abused animals?", 
                       @"What do you think of beards?", 

                       @"What 3 things would you bring with you to a desert island?",
                       @"Would you allow a pet to sleep on your bed?", 
                       @"What vice would you indulge in if there were no negative consequences?", 
                       @"What's the most beautiful thing you've ever seen?", 
                       @"Would you rather be a great musician, athlete, scientist, artist, politician, or writer?", 
                       
                       @"If you could rename yourself what name would you choose?", 
                       @"Which word describes you better: simple or complex?",  
                       @"If your life were a book what would it be called?",
                       @"Who in the room would make the best parent?",
                       @"Who in the room would be most likely to survive in the wilderness?",
                       
                       @"If you were a musical instrument what would you be?",
                       @"Do you believe in love at first sight?",
                       @"If you were a tattoo, what would you be and on what body part?",
                       @"What's the best gift you've ever given someone?",
                       
                       
                       @"If you were a body part what would you be?",
                       @"What color best represents you?",
                       @"Would you rather be rich or beautiful?",
                       @"What's the best gift you ever received?",
                       
                       @"If you were a dessert what would you be?",
                       @"If you had to be handcuffed to someone for a day, who would you choose?",
                       @"If you had to be homeless, where in the world would you choose to live?",
                       @"If you were an ice cream flavor, what would you be?",
                       
                       nil];
    }
    

    return _theContent;
}


- (void)bannerViewDidLoadAd:(ADBannerView *)banner
{

    NSLog(@"bannerviewdidloadad"); 
    
   // if(showAd){
        adView.hidden = FALSE;
    //}
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    
    NSLog(@"error no ads");    
    adView.hidden=TRUE;  
    
}

- (void)viewDidLoad
{
    NSLog(@"viewdidload");
	// Do any additional setup after loading the view, typically from a nib.
    UIImage *buttonImage = [[UIImage imageNamed:@"orangeButton.png"]
                            resizableImageWithCapInsets:UIEdgeInsetsMake(18, 18, 18, 18)];
    UIImage *buttonImageHighlight = [[UIImage imageNamed:@"orangeButtonHighlight.png"]
                                     resizableImageWithCapInsets:UIEdgeInsetsMake(18, 18, 18, 18)];
    //UIImage *buttonImageHighlight2 = [[UIImage imageNamed:@"orangeButtonHighlight.png"]
      //                               resizableImageWithCapInsets:UIEdgeInsetsMake(18, 18, 18, 18)];
    
    // Set the background for any states you plan to use
    [self.theButton setBackgroundImage:buttonImage forState:UIControlStateNormal];
    [self.theButton setBackgroundImage:buttonImageHighlight forState:UIControlStateHighlighted];
    
    
    //gesture stuff
    UISwipeGestureRecognizer *recognizer;
    
     recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(screenSwipeBack)];
     [recognizer setDirection:(UISwipeGestureRecognizerDirectionRight)];
     [[self view] addGestureRecognizer:recognizer];
     
     
     
     recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(screenSwipeNext)];
     [recognizer setDirection:(UISwipeGestureRecognizerDirectionLeft)];
     [[self view] addGestureRecognizer:recognizer];
     
     
    recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(screenSwipeNext)];
    [recognizer setDirection:(UISwipeGestureRecognizerDirectionUp)];
    [[self view] addGestureRecognizer:recognizer];
    
    
    recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(screenSwipeBack)];
    [recognizer setDirection:(UISwipeGestureRecognizerDirectionDown)];
    [[self view] addGestureRecognizer:recognizer];
    
   /* 
    //sent index
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    theIndex = [prefs integerForKey:@"theIndex"];
    */
    //set first string
    self.theTopic.text = [self.theContent objectAtIndex: theIndex];
    
    
    self.adView.delegate = self;
/*
    //move the ad offscreen until later
    NSLog(@"about to hide. posn is.. %f", self.adView.frame.origin.y);
    CGRect newBannerFrame=self.adView.frame;
    newBannerFrame.origin.y=-50.0f;
    self.adView.frame=newBannerFrame;
  */  
    
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [self setTheTopic:nil];
    [self setTheButton:nil];
    
    
  /*  // save the index
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    [prefs setInteger:theIndex forKey:@"theIndex"];    
    */
    
    [self setAdView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

/*

- (IBAction)setTopic:(id)sender {
    self.theTopic.text = [self.theContent objectAtIndex: theIndex];
    
    theIndex++;
    if(theIndex >= [self.theContent count]){
        theIndex = 0;
    }
    
    
    
    //pick random topic
    int numTopics = [self.theContent count];
    int chosen = arc4random() % numTopics;
    NSString *oneTopic = [self.theContent objectAtIndex: chosen];      
    self.theTopic.text = oneTopic;
     
}*/


- (IBAction)nextTopic:(id)sender {
    theIndex++;
    if(theIndex >= [self.theContent count]){
        theIndex = 0;
    }
    self.theTopic.text = [self.theContent objectAtIndex: theIndex];
/*
    if (!showAd && theIndex > 1){
        NSLog(@"show the ad!");
        //Positioning banner view
        CGRect newBannerFrame=self.adView.frame;
        newBannerFrame.origin.y=0.0f;
        self.adView.frame=newBannerFrame;
        showAd = TRUE;
    }*/
    
    
}
- (IBAction)lastTopic:(id)sender {
    theIndex--;
    if(theIndex < 0){
        theIndex = [self.theContent count] - 1;
    }
    self.theTopic.text = [self.theContent objectAtIndex: theIndex];    
}


- (IBAction)openEmail:(id)sender {
    if ([MFMailComposeViewController canSendMail]) {
        
        MFMailComposeViewController *mailViewController = [[MFMailComposeViewController alloc] init];
        mailViewController.mailComposeDelegate = self;
        [mailViewController setSubject:@"Question for you"];
        
        
        NSString *theMessage = self.theTopic.text;
        //NSString *theMessageWithLink = [theMessage stringByAppendingString:@"<br><br>Get more questions from <a href=\"http://itunes.apple.com/us/app/ice-breakers-conversation/id541219901?ls=1&mt=8\">Ice Breakers</a>"];
        NSString *theMessageWithLink = [theMessage stringByAppendingString:@"<br><br><br>More <a href=\"http://itunes.apple.com/us/app/ice-breakers-conversation/id541219901?ls=1&mt=8\">Ice Breakers</a>"];
        [mailViewController setMessageBody:theMessageWithLink isHTML:YES];
        
        [self presentModalViewController:mailViewController animated:YES];
        
    }
    
    else {
        NSLog(@"Device is unable to send email in its current state.");
        
    }
}

- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error 
{   
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled: you cancelled the operation and no email message was queued.");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved: you saved the email message in the drafts folder.");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail send: the email message is queued in the outbox. It is ready to send.");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail failed: the email message was not saved or queued, possibly due to an error.");
            break;
        default:
            NSLog(@"Mail not sent.");
            break;
    }
    
    // Remove the mail view
    [self dismissModalViewControllerAnimated:YES];
}
- (IBAction)openSms:(id)sender {
    MFMessageComposeViewController *controller = [[MFMessageComposeViewController alloc] init];
	if([MFMessageComposeViewController canSendText])
	{
        
		controller.body = self.theTopic.text;
		controller.recipients = [NSArray arrayWithObjects: nil];
		controller.messageComposeDelegate = self;
		[self presentModalViewController:controller animated:YES];	}
}

- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result
{
	switch (result) {
		case MessageComposeResultCancelled:
			NSLog(@"Cancelled");
			break;
		case MessageComposeResultFailed:
            NSLog(@"Failed.");
            
			break;
		case MessageComposeResultSent:
            NSLog(@"SMS message sent.");
			break;
		default:
			break;
	}
    
	[self dismissModalViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    
}
-(void)screenSwipeBack
{
    NSLog(@"screenswipe back");
    [self lastTopic:self]; 
}
-(void)screenSwipeNext
{
    NSLog(@"screenswipe next");
    [self nextTopic:self]; 
}
- (IBAction)showInfo:(id)sender {
    UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Handy Tips"
                                                      message:@"Smile when you ask a question.\n\nWink when the question is done.\n\nSwipe up, down, left and right to get a new question.\n\nSend questions to your friends, variety is the spice of life. "
                                                     delegate:nil
                                            cancelButtonTitle:@"OK"
                                            otherButtonTitles:nil];
    
    [message show];    
}





@end

