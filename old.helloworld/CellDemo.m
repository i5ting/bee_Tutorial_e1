//
//  CellDemo.m
//  old.helloworld
//
//  Created by sang on 4/25/13.
//  Copyright (c) 2013 sang alfred. All rights reserved.
//

#import "CellDemo.h"

@implementation CellDemo


@synthesize info;
@synthesize image;

- (id) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
		self.backgroundColor = [UIColor whiteColor];
		self.opaque = YES;
    }
    return self;
}

- (void) prepareForReuse {
	[super prepareForReuse];
    self.image = nil;
}

static UIFont* system14 = nil;
static UIFont* bold14 = nil;

+ (void)initialize
{
	if(self == [CellDemo class])
	{
		system14 = [[UIFont systemFontOfSize:14] retain];
		bold14 = [[UIFont boldSystemFontOfSize:14] retain];
	}
}

- (void)dealloc {
    [info release];
    [image release];
    
    [super dealloc];
}

- (void) drawContentView:(CGRect)rect {
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	[[UIColor whiteColor] set];
	CGContextFillRect(context, rect);
	
	NSString* name = [info objectForKey:@"source"];
	NSString* text = [info objectForKey:@"title"];
	
	CGFloat widthr = self.frame.size.width - 70;
	
	[[UIColor blackColor] set];
	[name drawInRect:CGRectMake(63.0, 5.0, widthr, 20.0) withFont:bold14 lineBreakMode:UILineBreakModeTailTruncation];
	[[UIColor grayColor] set];
	[text drawInRect:CGRectMake(63.0, 25.0, widthr, 20.0) withFont:system14 lineBreakMode:UILineBreakModeTailTruncation];
	
	if (self.image) {
		CGRect r = CGRectMake(5.0, 5.0, 48.0, 48.0);
		[self.image drawInRect:r];
	}
}

- (void) updateCellInfo:(NSDictionary*)_info {
	self.info = _info;
    NSString *urlString = [info objectForKey:@"image"];
//	if (urlString) {
//        AFImageRequestOperation *operation = [AFImageRequestOperation imageRequestOperationWithRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]] success:^(UIImage *requestedImage) {
//            self.image = requestedImage;
//            [self setNeedsDisplay];
//        }];
//        [operation start];
//    }
}


@end
