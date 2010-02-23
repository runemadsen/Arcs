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
	UIColor * color1 = [[UIColor colorWithRed:(64.0 / 255.0) green:(55.0 / 255.0) blue:(103.0 / 255.0) alpha: 1] retain];
	UIColor * color2 = [[UIColor colorWithRed:(229.0 / 255.0) green:(242.0 / 255.0) blue:(226.0 / 255.0) alpha: 1] retain];
	UIColor * color3 = [[UIColor colorWithRed:(85.0 / 255.0) green:(133.0 / 255.0) blue:(202.0 / 255.0) alpha: 1] retain];
	UIColor * color4 = [[UIColor colorWithRed:(122.0 / 255.0) green:(194.0 / 255.0) blue:(152.0 / 255.0) alpha: 1] retain];
	UIColor * color5 = [[UIColor colorWithRed:(73.0 / 255.0) green:(117.0 / 255.0) blue:(57.0 / 255.0) alpha: 1] retain];
	UIColor * color6 = [[UIColor colorWithRed:(131.0 / 255.0) green:(110.0 / 255.0) blue:(80.0 / 255.0) alpha: 1] retain];
	UIColor * color7 = [[UIColor colorWithRed:(240.0 / 255.0) green:(133.0 / 255.0) blue:(42.0 / 255.0) alpha: 1] retain];
	UIColor * color8 = [[UIColor colorWithRed:(255.0 / 255.0) green:(206.0 / 255.0) blue:(86.0 / 255.0) alpha: 1] retain];
	UIColor * color9 = [[UIColor colorWithRed:(255.0 / 255.0) green:(70.0 / 255.0) blue:(39.0 / 255.0) alpha: 1] retain];
	UIColor * color10 = [[UIColor colorWithRed:(124.0 / 255.0) green:(52.0 / 255.0) blue:(51.0 / 255.0) alpha: 1] retain];
	
	NSMutableArray * arcs = [[NSMutableArray alloc] init];
	NSArray * colors = [NSArray arrayWithObjects: color1, color2, color3, color4, color5, color6, color7, color8, color9, color10, nil];
	
	int radius = 300;
	
	for (int i = 0; i < 10; i++) 
	{
		Arc * arc = [[Arc alloc] init];
		[arc setColor: [colors objectAtIndex:i]];
		[arc setRadius:radius];
		[arcs addObject:arc];
		
		radius -= 20;
	}	
	
	[self.view setArcs:arcs];
	
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
