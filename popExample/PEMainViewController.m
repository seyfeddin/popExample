//
//  PEMainViewController.m
//  popExample
//
//  Created by Seyfeddin Bassarac on 09/05/14.
//  Copyright (c) 2014 ThreadCo. All rights reserved.
//

#import "PEMainViewController.h"
#import <POP/POP.h>
#import <pop/POPSpringAnimation.h>

#define MULTIPLIER 1.2

@interface PEMainViewController ()



@end

@implementation PEMainViewController {
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(animate:)]];
    

}

- (void)animate:(UITapGestureRecognizer *)tap {
    
    CGSize polygonSize = _polygonView.layer.frame.size;
    
    POPSpringAnimation *animation = [POPSpringAnimation animation];
    
    animation.property = [POPAnimatableProperty propertyWithName:kPOPLayerSize];
    
    if (polygonSize.width > 200) {
        animation.toValue = [NSValue valueWithCGSize: CGSizeMake(129, 123)];
    } else {
        animation.toValue = [NSValue valueWithCGSize:CGSizeMake(polygonSize.width*MULTIPLIER, polygonSize.height*MULTIPLIER)];
    }
    
    animation.springBounciness = _springBouncinessSlider.value;
    animation.springSpeed = _springSpeedSlider.value;
    
    //Add it to the target to play the animation for a unique key
    [_polygonView pop_addAnimation:animation forKey:@"pop"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
