//
//  ViewController.m
//  StackOverFlowObjC
//
//  Created by Cong Le on 23/04/2020.
//  Copyright © 2020 Cong Le. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	self.tableView.delegate = self;
	self.tableView.dataSource = self;

	[self.tableView registerClass:[CustomCell class] forCellReuseIdentifier:@"CustomCell"];
	[self.tableView registerNib:[UINib nibWithNibName:@"CustomCell" bundle:nil] forCellReuseIdentifier:@"CustomCell"];
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    CustomCell *cell;

	cell = [tableView dequeueReusableCellWithIdentifier:@"CustomCell"];

    [cell.cutomButton addTarget:self action:@selector(btnPurchaseOrderClicked:) forControlEvents:UIControlEventTouchUpInside];

    return cell;

}

- (void)btnPurchaseOrderClicked:(id)sender {
	NSLog(@"Button pressed");
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return 5;
}


@end
