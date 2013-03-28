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

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *)sender {
    NSArray *predictions = [[NSArray alloc] initWithObjects:
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
    
   self.predictionLabel.text = [predictions objectAtIndex:0];
}
@end
