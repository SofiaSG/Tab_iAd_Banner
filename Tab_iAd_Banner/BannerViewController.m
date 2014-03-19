//
//  SecondViewController.m
//  Tab_iAd_Banner
//
//  Created by Sofia Garcia Ramos on 3/13/14.
//  Copyright (c) 2014 Sofia Garcia Ramos. All rights reserved.
//

#import "BannerViewController.h"

@interface BannerViewController ()

@end
UIImage *imagen1;
UIImage *imagen2;
UIImage *imagen3;

@implementation BannerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  
    
    [self.Img1 setImage:[UIImage imageNamed:@"UAG.png"]];
    [self.Img2 setImage:[UIImage imageNamed:@"UAG.png"]];
    [self.Img3 setImage:[UIImage imageNamed:@"UAG.png"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


- (IBAction)Btn_Share:(UIButton *)sender {
    NSURL *imageURL1 = [NSURL URLWithString:@"http://www.gobiernolocalosa.go.cr/images/banner_png.png"];
    NSData *imageData1 = [NSData dataWithContentsOfURL:imageURL1];
    self.Img1.image = [UIImage imageWithData:imageData1];
    
    NSURL *imageURL2 = [NSURL URLWithString:@"http://thecutestblogontheblock.com/wp-content/uploads/2012/06/hint-of-Christmas-free-blog-background-layout-template-bright-banner.png"];
    NSData *imageData2 = [NSData dataWithContentsOfURL:imageURL2];
    self.Img2.image = [UIImage imageWithData:imageData2];
    
    NSURL *imageURL3 = [NSURL URLWithString:@"http://www.imageclef.org/system/files/Banner.png"];
    NSData *imageData3 = [NSData dataWithContentsOfURL:imageURL3];
    self.Img3.image = [UIImage imageWithData:imageData3];

}
@end
