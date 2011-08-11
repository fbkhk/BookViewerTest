//
//  BookMagazineViewerTestAppDelegate.h
//  BookMagazineViewerTest
//
//  Created by HeungGukKim on 11. 8. 5..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BookMagazineViewerTestViewController;

@interface BookMagazineViewerTestAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet BookMagazineViewerTestViewController *viewController;

@end
