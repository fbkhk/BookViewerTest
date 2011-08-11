//
//  CellElementText.m
//  BookMagazineViewerTest
//
//  Created by HeungGukKim on 11. 8. 9..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CellElementText.h"


@implementation CellElementText
- (id)init
{
    self = [super init];
    if (self) {
        _alignment = UITextAlignmentLeft;
        _fontSize   = 14;
        _textColor  = [[UIColor blackColor] retain];
    }
    return self;
}

- (void)setAttribute:(NSDictionary *)attribute
{
    if ([attribute objectForKey:@"align"] != nil) {
        if ([[attribute objectForKey:@"align"] isEqualToString:@"left"]) {
            _alignment = UITextAlignmentLeft;            
        } else if ([[attribute objectForKey:@"align"] isEqualToString:@"center"]) {
            _alignment = UITextAlignmentCenter;
        }
        
    }
    if ([attribute objectForKey:@"bold"] != nil) {
        
    }
    if ([attribute objectForKey:@"italic"] != nil) {
        
    }
    if ([attribute objectForKey:@"fontSize"] != nil) {
        _fontSize = [[attribute objectForKey:@"fontSize"] intValue];
    }
    if ([attribute objectForKey:@"topMargin"] != nil) {
        _topMargin = [[attribute objectForKey:@"topMargin"] intValue];        
    }
    if ([attribute objectForKey:@"bottomMargine"] != nil) {
        _bottomMargin = [[attribute objectForKey:@"bottomMargin"] intValue];        
    }
    if ([attribute objectForKey:@"textColor"] != nil) {
        
    }
}

- (CGSize)drawInRect:(CGRect)rect 
{
    CGRect beforeRenderRect = rect;

    UIFont* font = (_bold) ? [UIFont boldSystemFontOfSize:_fontSize] : [UIFont systemFontOfSize:_fontSize];
    rect.origin.y += _topMargin;
    
    
    rect.size = [_value sizeWithFont:font constrainedToSize:CGSizeMake(rect.size.width, FLT_MAX) lineBreakMode:UILineBreakModeTailTruncation];
    if (_alignment == UITextAlignmentCenter) {
        rect.size.width = beforeRenderRect.size.width;
    }
    CGSize renderedSize = [_value drawInRect:rect withFont:font lineBreakMode:UILineBreakModeTailTruncation alignment:_alignment ];
    renderedSize.height += _topMargin;
    renderedSize.height += _bottomMargin;
    return renderedSize;
}

@end
