//
//  ViewController.h
//  CrystalBall
//
//  Created by David Mazza on 3/28/13.
//  Copyright (c) 2013 David Mazza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;
@property (strong, nonatomic) NSArray *predictions;
@property (strong, nonatomic) UIImageView *backgroundImageView;

- (void) makePrediction;
- (void) clearPrediction;

@end
