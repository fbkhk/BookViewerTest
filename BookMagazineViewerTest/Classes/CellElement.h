//
//  CellElement.h
//  BookMagazineViewerTest
//
//  Created by HeungGukKim on 11. 8. 9..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CellElement : NSObject {    
    NSString*   _value;
}
@property (nonatomic, retain) NSString* value; 
@property (nonatomic, assign) NSDictionary* attribute;
- (CGSize)drawInRect:(CGRect)rect;
@end
