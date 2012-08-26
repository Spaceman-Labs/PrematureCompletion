//
//  SMViewController.m
//  PrematureCompletion
//
//  Created by jkraut on 8/26/12.
//  Copyright (c) 2012 Spaceman Labs. All rights reserved.
//

#import "SMViewController.h"

@interface SMViewController ()

@end

@implementation SMViewController

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
- (void)party:(BOOL)animated
{
	[UIView animateWithDuration:2.f animations:^{
		[self.partyProgress setProgress:1 animated:animated];
	}completion:^(BOOL finished){
		self.partyLabel.text = @"PARTY TIME!";
	}];
}

- (IBAction)reset:(id)sender {
	self.partyLabel.text = @"Not Yet Party Time";
	self.partyProgress.progress = 0;
}
- (IBAction)partyAnimated:(id)sender {
	[self party:YES];
}
- (IBAction)partyInstantly:(id)sender {
	[self party:NO];
}

- (void)study:(BOOL)animated
{
	[UIView animateWithDuration:2.f animations:^{
		[self.studyView scrollRectToVisible:CGRectMake(0, 0, 10, 10) animated:animated];
	}completion:^(BOOL finished){
		self.studyLabel.text = @"STUDY TIME!";
	}];
}

- (IBAction)studyReset:(id)sender {
	self.studyLabel.text = @"Not Yet Study Time";
}

- (IBAction)studyAnimated:(id)sender {
	[self study:YES];
}
- (IBAction)studyInstantly:(id)sender {
	[self study:NO];
}

@end
