//
//  BookCell.h
//  BookMagazineViewerTest
//
//  Created by HeungGukKim on 11. 8. 9..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface BookCell : UIView {
    NSInteger       _cellType;
    NSMutableArray*        _cellElements;
    CGPoint         _nextDrawPoint;
}

@property (nonatomic, assign) NSDictionary* cellItem;
@property (nonatomic, readonly) NSInteger cellType;

@end
