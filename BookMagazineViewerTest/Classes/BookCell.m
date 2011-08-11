//
//  BookCell.m
//  BookMagazineViewerTest
//
//  Created by HeungGukKim on 11. 8. 9..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BookCell.h"
#import "CellElementImage.h"
#import "CellElementText.h"

@implementation BookCell
@synthesize cellItem, cellType = _cellType;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _cellElements = [[NSMutableArray alloc] init];
        [self setBackgroundColor:[UIColor whiteColor]];
        [self.layer setBorderColor:[UIColor grayColor].CGColor];        
        [self.layer setBorderWidth:1];
    }
    return self;
}

- (void)dealloc
{
    [_cellElements release];
    [super dealloc];
}

- (void)drawRect:(CGRect)rect
{
    CGPoint point = CGPointZero;
    for (CellElement* element in _cellElements)
    {
        CGRect rect;
        
        rect.origin = point;
        rect.size = self.bounds.size;
        rect.size.height = self.bounds.size.height - point.y;
        NSLog(@"%@", NSStringFromCGRect(rect));
        CGSize size = [element drawInRect:rect];
        point.y += size.height;
    }
}
- (void)setCellItem:(NSDictionary *)aCellItem
{
    _cellType = [[aCellItem objectForKey:@"cellType"]intValue];
    
    //
    [_cellElements removeAllObjects];
    for (NSDictionary* eleDic in [aCellItem objectForKey:@"elements"])
    {
        CellElement* element = nil;
        if ([[eleDic objectForKey:@"eleType"] isEqualToString:@"imageBox"])
        {
            element = [[CellElementImage alloc]init];
        } 
        else if ([[eleDic objectForKey:@"eleType"] isEqualToString:@"textBox"])
        {
            element = [[CellElementText alloc]init];                        
        }
        
        if (element) {
            [element setValue:[eleDic objectForKey:@"value"]];
            [element setAttribute:[eleDic objectForKey:@"attribute"]];
            [_cellElements addObject:element];
        }
    }
    [self setNeedsDisplay];
}

@end
