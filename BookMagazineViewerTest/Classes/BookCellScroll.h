//
//  BookCellScroll.h
//  BookMagazineViewerTest
//
//  Created by HeungGukKim on 11. 8. 9..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface BookCellScroll : UIView {
    NSArray*        _cellItems;
    NSMutableArray* _cells;   
    
}

@property (nonatomic, retain) NSArray*  cellItems;
@end
