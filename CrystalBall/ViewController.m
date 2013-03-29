//
//  ViewController.m
//  CrystalBall
//
//  Created by David Mazza on 3/28/13.
//  Copyright (c) 2013 David Mazza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize predictionLabel;
@synthesize predictions;
@synthesize backgroundImageView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.backgroundImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background"]];
    [self.view insertSubview:self.backgroundImageView atIndex:0];
    self.backgroundImageView.animationImages = [[NSArray alloc] initWithObjects:
                                                [UIImage imageNamed:@"cball00001"],
                                                [UIImage imageNamed:@"cball00002"],
                                                [UIImage imageNamed:@"cball00003"],
                                                [UIImage imageNamed:@"cball00004"],
                                                [UIImage imageNamed:@"cball00005"],
                                                [UIImage imageNamed:@"cball00006"],
                                                [UIImage imageNamed:@"cball00007"],
                                                [UIImage imageNamed:@"cball00008"],
                                                [UIImage imageNamed:@"cball00009"],
                                                [UIImage imageNamed:@"cball000010"],
                                                [UIImage imageNamed:@"cball000011"],
                                                [UIImage imageNamed:@"cball000012"],
                                                [UIImage imageNamed:@"cball000013"],
                                                [UIImage imageNamed:@"cball000014"],
                                                [UIImage imageNamed:@"cball000015"],
                                                [UIImage imageNamed:@"cball000016"],
                                                [UIImage imageNamed:@"cball000017"],
                                                [UIImage imageNamed:@"cball000018"],
                                                [UIImage imageNamed:@"cball000019"],
                                                [UIImage imageNamed:@"cball000020"],
                                                [UIImage imageNamed:@"cball000021"],
                                                [UIImage imageNamed:@"cball000022"],
                                                [UIImage imageNamed:@"cball000023"],
                                                [UIImage imageNamed:@"cball000024"],
                                                nil];
    self.backgroundImageView.animationDuration = 1.0;
    self.backgroundImageView.animationRepeatCount = 1;
	self.predictions = [[NSArray alloc] initWithObjects:
                            @"Oh sure, I think so",
                            @"Well, quite yes.",
                            @"No, surely not; never",
                            @"In due time",
                            @"Shake and spin again",
                            @"Not in this lifetime",
                            @"Only for the second time",
                            @"I'm afraid so, yes",
                            @"We should avoid this topic",
                            nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) makePrediction {
    NSUInteger index = arc4random_uniform(self.predictions.count);
    
    [self.backgroundImageView startAnimating];
    self.predictionLabel.text = [self.predictions objectAtIndex:index];
}

- (BOOL) canBecomeFirstResponder {
    return YES;
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        [self makePrediction];
    }
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self makePrediction];
}
@end
