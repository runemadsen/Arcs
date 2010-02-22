#import "Arcs.h"

@implementation Arcs


/* Init
________________________________________________________________________________ */

- (id)initWithFrame:(CGRect)frame 
{
    if (self = [super initWithFrame:frame]) 
	{
		// init code
    }
    return self;
}

- (void) awakeFromNib
{
	// init stuff here 
	
	NSLog(@"Init okay");
}

/* Draw
________________________________________________________________________________ */

- (void)drawRect:(CGRect)rect 
{
	//CGContextRef context = UIGraphicsGetCurrentContext();
	
	// draw background
	//CGContextSetRGBFillColor(context, 0.0, 0.0, 0.0, 1.0);
	//CGContextFillRect(context, rect);
	
	// draw arc
	/*CGContextSaveGState(context); // pushmatrix
	CGContextTranslateCTM(context, rect.size.width, rect.size.height); // translate
	
	CGContextSetRGBFillColor(context, 0.0, 1.0, 0.0, 1.0);
	CGContextSetRGBStrokeColor(context, 0, 0.5, 0, 1);
	CGContextSetLineWidth(context, 15);
	
	CGContextAddArc(context, 0, 0, 100, radians(180), radians(270), 0);
	//CGContextAddArc(context, 0, 0, 50, radians(0), radians(90), 0);
	
	CGContextStrokePath(context);
	//CGContextFillPath(context); 
	
	CGContextRestoreGState(context); // popmatrix*/
}

/* Deallocate
________________________________________________________________________________ */

- (void)dealloc 
{
    [super dealloc];
}


@end
