//
//  ViewController.m
//  MCMS
//
//  Created by alex fallah on 5/19/15.
//  Copyright (c) 2015 alex fallah. All rights reserved.
//

#import "RootViewController.h"
#import "MagicalCreature.h"


@interface RootViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITextField *creatureTextField;
@property (weak, nonatomic) IBOutlet UITextField *detailTextField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property NSMutableArray *creatures;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    self.creatures = [NSMutableArray new];

}



- (IBAction)addCreatureButtonPressed:(UIButton *)sender {
    MagicalCreature *creature = [[MagicalCreature alloc]initWithDetails:self.creatureTextField.text detail:self.detailTextField.text accessories:nil image:@"boo"];
    [self.creatures addObject:creature];
    [self.tableView reloadData];
    

}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MagicalCreature *creature = [self.creatures objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    cell.textLabel.text = creature.name;

    return cell;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.creatures.count;
}
@end
