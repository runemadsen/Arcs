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
	
}


/* Draw
________________________________________________________________________________ */

- (void) drawRect:(CGRect)rect 
{
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	// draw background
	CGContextSetRGBFillColor(context, 0.0, 0.0, 0.0, 1.0);
	CGContextFillRect(context, rect);
	
	// draw arcs
	 
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
	
	// Draw text
	
	CGContextSaveGState(context);

	CGContextTranslateCTM(context, 0, rect.size.height);
	CGContextScaleCTM(context, 1, -1);
	
    CGContextSelectFont (context, "Helvetica-Bold", 40, kCGEncodingMacRoman);
    CGContextSetCharacterSpacing (context, 1); 
	//
	
	NSString * message = @"Rune Madsen";
	int radius = 100;
	CGFloat arcLength = 0;
	int tWidth = 50;
	
	for (int i = 0; i < [message length]; i++)              
	{   
		printf("here");
		
		unichar currentChar = [message characterAtIndex:i];
		
		//float w = textWidth(currentChar);   
		
		//arcLength += 10/2; // textwidth divided by w
		
		//arcLength += tWidth/2;
		
		CGFloat theta = PI + arcLength / radius; 
		
		CGContextSaveGState(context);
		CGContextTranslateCTM(context, -(radius*sin(theta)), (radius*cos(theta)));
		//CGContextRotateCTM(context, -(theta + PI/2));
		
		//myTextTransform = CGAffineTransformMakeRotation(theta + PI/2); 
		//CGContextSetTextMatrix(context, myTextTransform);
		
		CGContextSetRGBFillColor(context, 1, 1, 1, 1); 
		
		CGContextShowTextAtPoint(context, 0, 300, &currentChar, 1);
		
		CGContextRestoreGState(context);
		
		arcLength += tWidth/2;
	}
	
	//
	
	CGContextSetRGBFillColor(context, 1, 1, 1, 1);
	CGContextSetTextDrawingMode (context, kCGTextFill); 
	//CGAffineTransform myTextTransform;
    //myTextTransform = CGAffineTransformMakeRotation(radians(180)); 
    //CGContextSetTextMatrix(context, myTextTransform); 
    CGContextShowTextAtPoint(context, 20, 400 , "Rune Madsen", 11);
	
	CGContextRestoreGState(context);
}

/* Getter / Setter
 ________________________________________________________________________________ */

- (void) setArcs: (NSMutableArray *) arcs
{
	_arcs = arcs;
}

/* Deallocate
________________________________________________________________________________ */

- (void)dealloc 
{
    [super dealloc];
}


@end
