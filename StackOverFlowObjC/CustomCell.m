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
	[self.cutomButton setTitle:@"BUTTON" forState:UIControlStateNormal];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (NSString *)reuseIdentifier {
	return @"CustomCell";
}

@end
