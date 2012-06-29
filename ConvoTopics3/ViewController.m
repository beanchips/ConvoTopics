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
    //UIImage *buttonImageHighlight2 = [[UIImage imageNamed:@"orangeButtonHighlight.png"]
     //                                resizableImageWithCapInsets:UIEdgeInsetsMake(18, 18, 18, 18)];
    
    // Set the background for any states you plan to use
    [self.theButton setBackgroundImage:buttonImage forState:UIControlStateNormal];
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
                              @"If you could have any view from your back porch what would it be?", 
                              @"Does each person have just one soul mate?", 
                              @"Who's the most famous person you've ever met?", 
                              @"What do you miss about childhood?", 
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
                              @"What's the best gift you ever received?", 
                              @"What's the best gift you've ever given someone?",
                              
                              @"If you could relive any moment in your life which would it be?", 
                              @"What's your favorite part of Thanksgiving dinner?", 
                              @"Do you live more in the past, present, or future?", 
                              @"Is it more important to live for yourself or for others?", 
                              @"What's your favorite book?",  
                              @"What's your favorite movie?",  
                              @"What's the best thing about being a man?", 
                              @"What's the best thing about being a woman?", 
                              @"Would you rather be 20% smarter or 20% better looking?", 
                              @"When you're down what do you do to feel better?", 
                             
                              @"What's been your most spiritually awakening experience?", 
                              @"If you got a tattoo what would it be and where would you put it?", 
                              @"What song evokes the strongest memories for you?", 
                              @"What event in the past present or future would you like to witness in person?", 
                              @"Would you consider freezing yourself before you die in order to be reanimated later?", 
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
                              @"If you were cremated where would you like to have your ashes spread?", 
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
                              
                              @"What's the most significant problem facing the world?",   
                              @"If you didn't have to work for a living, how would you spend your days?",                               
                              @"Which cause would you donate a million dollars to if you could?",                          
                              @"Are you a saver or a spender?",     
                              @"What was your best recent purchase?",
                              @"Do you believe in love at first sight?", 
                              @"Do you have a signature dish?", 
                              @"What are you scared of?",
                              @"If you could have any super power, what would it be?", 
                              @"You're sentenced to a deserted island and can only take 3 things. What would they be?", 
                              
                              @"Which of your friends would you most want on your team in a fight?",
                              @"Are people inherently good or inherently bad?",
                              @"Do animals love?",   
                              @"What would you do if you had only 24 hours left to live?",                               
                              @"Where would you most like to travel to?", 
                              @"What would you eat for your last meal?",     
                              @"If your life were made into a movie, who would play you?",
                              @"What did you do last weekend?", 
                              @"What's your favorite midnight snack?", 
                              @"If you could have front row seats to any concert who would you see?",
                              
                              @"What would you do if you won the lottery?", 
                              @"What was your first job?", 
                              @"What movie or book are you ashamed to admit you love?",
                              @"If money were no object what kind of party would you throw and where?",
                              @"if you had the means how would you address homelessness?",                                 
                              @"Are you more messy or neat?",                               
                              @"Are you more late or punctual?", 
                              @"Which word describes you better: carefree or intense?",
                              @"Which word describes you better: simple or complex?",   
                              @"Would you prefer a quiet life of safety or a life of great adventure and uncertainty?",  
                              
                              @"How much influence or control do your parents have on your life?", 
                              @"Would you want to have an identical twin sibling?", 
                              @"What would you do if you met your clone?", 
                              @"What's worse: starving children or abused animals?", 
                              @"What do you think of beards?", 
                              
                              @"Would you allow a pet to sleep on your bed?", 
                              @"What vice would you indulge in if there were no negative consequences?", 
                              @"What's the most beautiful thing you've ever seen?", 
                              @"Would you rather be a great musician, athlete, scientist, artist, politician, or writer?", 
                              @"If you could rename yourself what name would you choose?", 
                             
                              @"If your life were a book what would it be called?",
                              @"Who in the room would make the best parent?",
                              @"Who in the room would be most likely to survive in the wilderness?",

                              nil];
    
    
    //pick one topic
    int numTopics = [topics count];
    int chosen = arc4random() % numTopics;
    NSString *oneTopic = [topics objectAtIndex: chosen];      
    self.theTopic.text = oneTopic;
}
@end
