//
//  BookCellScroll.m
//  BookMagazineViewerTest
//
//  Created by HeungGukKim on 11. 8. 9..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BookCellScroll.h"
#import "BookCell.h"

@implementation BookCellScroll

@synthesize cellItems = _cellItems;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _cells = [[NSMutableArray alloc] init];
        
    }
    return self;
}
#define PADDING 0
- (void)layoutSubviews
{
    float width = self.frame.size.width;
    CGPoint point = CGPointZero;
    CGFloat height = 200;
    for (int i=0; i<_cells.count; i++)
    {
        BookCell* cell = [_cells objectAtIndex:i];
        if ([cell cellType] == 1) {
            
            [cell setFrame:CGRectMake(point.x, point.y, width, height)];
            point.y = point.y + height + PADDING;
            
        } else {
            [cell setFrame:CGRectMake(point.x, point.y, width, height)];
            if (point.x == 0) {
                point.x = width/2-1;
                width = self.frame.size.width/2 +1;
            } else {
                point.x = 0;
                point.y = point.y + height + PADDING;
                width = self.frame.size.width;
            }
        }
        
    }
}

- (void)dealloc
{
    [_cellItems release];
    [_cells release];
    [super dealloc];
}

- (void)setCellItems:(NSArray *)cellItems
{
    [_cellItems release]; 
    _cellItems = [cellItems retain];
    
    for (UIView* view in self.subviews)
    {
        [_cells removeAllObjects];
        [view removeFromSuperview];        
    }
    
    for (int i=0; i<cellItems.count; i++)
    {
        BookCell* cell = [[BookCell alloc] init];
        [cell setTag:i];
        [cell setCellItem:[cellItems objectAtIndex:i]];
        [_cells addObject:cell];
        [self addSubview:cell];
    }
}

@end
