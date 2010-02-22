//
//  ArcsViewController.m
//  Arcs
//
//  Created by Rune Madsen on 2/22/10.
//  Copyright New York University 2010. All rights reserved.
//

#import "ArcsViewController.h"
#import "Arc.h"

@implementation ArcsViewController

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

// Implement loadView to create a view hierarchy programmatically, without using a nib.
/*- (void)loadView 
{
	
}*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad 
{	
	CGFloat w = self.view.frame.size.width;
	CGFloat h = self.view.frame.size.height;
	
	for (int i = 0; i < 5; i++) 
	{
		CGRect arcFrame = CGRectMake(0, 0, w, h);
		Arc *arc = [[Arc alloc] initWithFrame:arcFrame];
		
		[self.view addSubview:arc];
		[arc release];
	}
	
	[super viewDidLoad];
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
