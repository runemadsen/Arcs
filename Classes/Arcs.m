#import "Arcs.h"

@implementation Arcs


/* Init
________________________________________________________________________________ */

- (id)initWithFrame:(CGRect)frame 
{	
    if (self = [super initWithFrame:frame]) 
	{
	}
	
    return self;
}

- (void) awakeFromNib
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
	
	_colors = [NSArray arrayWithObjects: color1, color2, color3, color4, color5, color6, color7, color8, color9, color10, nil];
	_arcs = [[NSMutableArray alloc] init];
	
	int radius = 300;
	
	for (int i = 0; i < NUM_ARCS; i++) 
	{
		Arc * arc = [[Arc alloc] init];
		[arc setColor: [_colors objectAtIndex:i]];
		[arc setRadius:radius];
		[_arcs addObject:arc];
	
		radius -= 20;
	}	
}

/* Draw
________________________________________________________________________________ */

- (void)drawRect:(CGRect)rect 
{
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	// draw background
	CGContextSetRGBFillColor(context, 0.0, 0.0, 0.0, 1.0);
	CGContextFillRect(context, rect);
	 
	 
	CGContextSaveGState(context); // pushmatrix
	CGContextTranslateCTM(context, rect.size.width, rect.size.height); // translate
	
	CGContextSetLineWidth(context, 15);
	
	for(Arc * arc in _arcs) 
	{		
		UIColor * color = [arc getColor];
	
		CGContextSetRGBStrokeColor(context, [color red], [color green], [color blue], [color alpha]);
		
		CGContextAddArc(context, 0, 0, [arc getRadius], radians(180), radians(270), 0);
		
		CGContextStrokePath(context);
	}
	
	CGContextRestoreGState(context); // popmatrix 

}

/* Deallocate
________________________________________________________________________________ */

- (void)dealloc 
{
    [super dealloc];
}


@end
