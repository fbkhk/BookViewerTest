//
//  CellElementText.h
//  BookMagazineViewerTest
//
//  Created by HeungGukKim on 11. 8. 9..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CellElement.h"

@interface CellElementText : CellElement {
    UITextAlignment         _alignment;
    NSUInteger              _fontSize;
    UIColor*                _textColor;
    NSUInteger              _topMargin;
    NSUInteger              _bottomMargin;
    BOOL                    _italic;
    BOOL                    _bold;        
}

@end
