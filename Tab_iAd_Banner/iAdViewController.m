//
//  FirstViewController.m
//  Tab_iAd_Banner
//
//  Created by Sofia Garcia Ramos on 3/13/14.
//  Copyright (c) 2014 Sofia Garcia Ramos. All rights reserved.
//

#import "iAdViewController.h"

@interface iAdViewController ()

@end

@implementation iAdViewController

- (void)viewDidLoad
{
    [self cfgiAdBanner];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*********************************************************************************
 iAd Functions
 ***********************************************************************************/

- (void)cfgiAdBanner
{
    // Setup iAdView
    adView = [[ADBannerView alloc] initWithFrame:CGRectZero];
    
    CGRect adFrame = adView.frame;
    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
    
    NSLog(@"screenSize.height: %f",screenSize.height);
    
    if (screenSize.height > 480.0f)
    {//Do iPhone 5 stuff here
        adFrame.origin.y = 470;
    }
    else
    {//Do iPhone 4 stuff here
        adFrame.origin.y = 430;
    }
    adView.frame = adFrame;
    
    [adView setAutoresizingMask:UIViewAutoresizingFlexibleWidth];
    
    [self.view addSubview:adView];
    adView.delegate = self;
    adView.hidden = YES;
    self->bannerIsVisible = NO;
}

- (void)bannerViewDidLoadAd:(ADBannerView *)banner
{
    if (!self->bannerIsVisible)
    {
        //UIImage *ImageSelected;
        
        adView.hidden = NO;
        [UIView beginAnimations:@"animateAdBannerOn" context:NULL];
        // banner is invisible now and moved out of the screen on 50 px
        [UIView commitAnimations];
        self->bannerIsVisible = YES;
        //ImageSelected = [UIImage imageNamed:@"UAG.png"];
        //self.Img_NiAd.image = ImageSelected;

        [self.Img_NiAd setImage:[UIImage imageNamed:@"UAG.png"]];
    }
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    if (self->bannerIsVisible)
    {
        
        
        
        [UIView beginAnimations:@"animateAdBannerOff" context:NULL];
        // banner is visible and we move it out of the screen, due to connection issue
        [UIView commitAnimations];
        adView.hidden = YES;
        self->bannerIsVisible = NO;
        self.Img_NiAd.hidden=NO;
        
    }
    else
    {
        adView.hidden = NO;
        self->bannerIsVisible = YES;
        self.Img_NiAd.hidden = YES;
    }
}


@end
