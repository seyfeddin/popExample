//
//  PEMainViewController.h
//  popExample
//
//  Created by Seyfeddin Bassarac on 09/05/14.
//  Copyright (c) 2014 ThreadCo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PEMainViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *polygonView;

@property (weak, nonatomic) IBOutlet UISlider *springBouncinessSlider;
@property (weak, nonatomic) IBOutlet UISlider *springSpeedSlider;

@end
