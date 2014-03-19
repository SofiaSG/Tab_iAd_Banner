//
//  FirstViewController.h
//  Tab_iAd_Banner
//
//  Created by Sofia Garcia Ramos on 3/13/14.
//  Copyright (c) 2014 Sofia Garcia Ramos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

//int UIImage *ImageSelected;

@interface iAdViewController : UIViewController <ADBannerViewDelegate>
{
    ADBannerView *adView;
    bool bannerIsVisible;
    
}
@property (strong, nonatomic) IBOutlet UIImageView *Img_NiAd;

@end
