//
//  AWViewController.m
//  Phrzsr
//
//  Created by Ben Lachman on 11/21/13.
//  Copyright (c) 2013 Phrzsr. All rights reserved.
//

#import "AWViewController.h"
#import "Phrzsr.h"


@interface AWViewController ()

@property (weak, nonatomic) IBOutlet UILabel *phrzLabel;

@end

@implementation AWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

	self.phrzLabel.text = [Phrzsr phrz];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
