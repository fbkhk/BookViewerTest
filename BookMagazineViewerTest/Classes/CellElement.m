//
//  CellElement.m
//  BookMagazineViewerTest
//
//  Created by HeungGukKim on 11. 8. 9..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CellElement.h"


@implementation CellElement
@synthesize value = _value, attribute;

- (void)dealloc {
    [_value release];
    [super dealloc];
}
// 
- (CGSize)drawInRect:(CGRect)rect { return CGSizeZero;}
@end
