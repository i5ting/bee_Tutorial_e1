//
//  TableDemoViewController.h
//  old.helloworld
//
//  Created by sang on 4/24/13.
//  Copyright (c) 2013 sang alfred. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellDemo.h"

@interface TableDemoViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    CGRect _frame;
}



-(id)initWithFrame:(CGRect)frame;

@property (nonatomic, retain) UITableView* table;
/**
 * table数据源
 */
@property(nonatomic,retain,readwrite) NSMutableArray *result_array;

@end
