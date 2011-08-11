//
//  BookMagazineViewerTestViewController.m
//  BookMagazineViewerTest
//
//  Created by HeungGukKim on 11. 8. 5..
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BookMagazineViewerTestViewController.h"

@implementation BookMagazineViewerTestViewController

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"BookData" ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    
    bookCellScroll = [[BookCellScroll alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:bookCellScroll];
    NSArray *cellItems = [[[dict objectForKey:@"books"] objectAtIndex:0]objectForKey:@"layoutCells"];
    [bookCellScroll setCellItems:cellItems];
    
    [dict release];
    
    /*
    CGFloat		fontSize = 16;
	UIFont *font = [UIFont systemFontOfSize:fontSize];
    NSString* title = @"가마다라마바사";
    CGSize textSize = font constrainedToSize:(CGSize)size lineBreakMode:(UILineBreakMode)lineBreakMode; // UITextAlignment is not needed to determine size
    CGSize textSize = [title sizeWithFont:font minFontSize:9.0 actualFontSize:&fontSize forWidth:(self.bounds.size.width-STRING_INDENT) lineBreakMode:UILineBreakModeMiddleTruncation];
     */
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

@end
