//
//  CustomCell.m
//  StackOverFlowObjC
//
//  Created by Cong Le on 23/04/2020.
//  Copyright © 2020 Cong Le. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)configure {
	
	[self.btnOrder setTitle:@"BUTTON" forState:UIControlStateNormal];
	[self.btnOrder setBackgroundColor:[UIColor brownColor]];

	self.btnOrder = [UIButton buttonWithType:UIButtonTypeCustom];
	self.btnOrder.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentView addSubview:self.btnOrder];
	
	for (UIButton *button in self.btnArray) {
		
	}

}

- (NSString *)reuseIdentifier {
	return @"CustomCell";
}

@end
