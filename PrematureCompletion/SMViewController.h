//
//  SMViewController.h
//  PrematureCompletion
//
//  Created by jkraut on 8/26/12.
//  Copyright (c) 2012 Spaceman Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SMViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *partyLabel;
@property (weak, nonatomic) IBOutlet UIProgressView *partyProgress;

@property (weak, nonatomic) IBOutlet UITextView *studyView;
@property (weak, nonatomic) IBOutlet UILabel *studyLabel;

@end
