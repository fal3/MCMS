//
//  DetailViewController.m
//  MCMS
//
//  Created by alex fallah on 5/19/15.
//  Copyright (c) 2015 alex fallah. All rights reserved.
//

#import "CreatureViewController.h"


@interface CreatureViewController ()
@property (weak, nonatomic) IBOutlet UITextView *detailTextView;
@property (weak, nonatomic) IBOutlet UIImageView *image;

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.


    self.detailTextView.text = self.creature.detail;
    self.image.image = [UIImage imageNamed:self.creature.image];

}

- (IBAction)onBattleTapped:(UIButton *)sender {
}
- (IBAction)onStartTapped:(UIButton *)sender {
}

@end
