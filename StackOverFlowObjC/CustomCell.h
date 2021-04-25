//
//  CustomCell.h
//  StackOverFlowObjC
//
//  Created by Cong Le on 23/04/2020.
//  Copyright © 2020 Cong Le. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIButton *btnOrder;
@property (strong, nonatomic) NSMutableArray *btnArray;

- (void)configure;

@end

NS_ASSUME_NONNULL_END
