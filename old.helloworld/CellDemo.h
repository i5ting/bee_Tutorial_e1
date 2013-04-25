//
//  CellDemo.h
//  old.helloworld
//
//  Created by sang on 4/25/13.
//  Copyright (c) 2013 sang alfred. All rights reserved.
//

#import "FastCell.h"

@interface CellDemo : FastCell

@property (nonatomic, retain) NSDictionary* info;
@property (nonatomic, retain) UIImage* image;
@property (nonatomic, retain) UIImageView* imageView;

- (void) updateCellInfo:(NSDictionary*)_info;


@end
