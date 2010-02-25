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
	selectedArc = -1;
}

/* Touch events
 ________________________________________________________________________________ */

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	UITouch * first = (UITouch*)[[touches allObjects] objectAtIndex:0];		
	CGPoint loc1 = [first locationInView:self];
	
	CGPoint rel;
	rel.x = self.frame.size.width - loc1.x;
	rel.y = self.frame.size.height - loc1.y;
	
	CGFloat radius = sqrt((rel.x * rel.x) + (rel.y * rel.y));
	
	int counter = 0;
	CGFloat dif = 999.0;
	BOOL found = NO;
	
	for(Arc * arc in _arcs) 
	{		
		CGFloat thisDif = abs(radius - [arc getRadius]);
		
		if(thisDif < dif && thisDif < 30)
		{
			dif = thisDif;
			selectedArc = counter;
			found = YES;
		}
	
		counter++;
	}	
	
	if(!found)
	{
		selectedArc = -1;
	}
	
	// set temp color
	//[[_arcs objectAtIndex:selectedArc] setColor: [[UIColor colorWithRed:(255.0 / 255.0) green:(255.0 / 255.0) blue:(0.0 / 255.0) alpha: 1] retain]];
	
	//NSLog(@"Touch started: %f %f", loc1.x, loc1.y);

	[self setNeedsDisplay];
}


- (void) touchesMoved:(NSSet*)touches withEvent:(UIEvent*)event
{
	UITouch * first = (UITouch*)[[touches allObjects] objectAtIndex:0];		
	CGPoint loc1 = [first locationInView:self];
	
	if(selectedArc > -1)
	{
		CGPoint rel;
		rel.x = self.frame.size.width - loc1.x;
		rel.y = self.frame.size.height - loc1.y;
		
		CGFloat angle = atan(rel.y / rel.x);
		
		[[_arcs objectAtIndex:selectedArc] setAngle: angle * 180 / M_PI]; 
		
		//NSLog(@"Angle: %f", angle * 180 / M_PI);		
	}

	[self setNeedsDisplay];
}


- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
	[self setNeedsDisplay];
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
		
		CGContextAddArc(context, 0, 0, [arc getRadius], radians(180), radians(180) + radians([arc getAngle]), 0);
		
		CGContextStrokePath(context);
	}
	
	CGContextRestoreGState(context); // popmatrix 
	
	// Draw text
	
	CGContextSaveGState(context);

	CGContextTranslateCTM(context, 0, rect.size.height);
	CGContextScaleCTM(context, 1, -1);
	
    CGContextSelectFont (context, "Helvetica-Bold", 30, kCGEncodingMacRoman);
    CGContextSetCharacterSpacing (context, 1); 
	//
	
	NSString * message = @"@@@@@@@@@@@@";
	int radius = 315;
	CGFloat arcLength = 610;
	int tWidth = 60;
	
	for (int i = 0; i < [message length]; i++)              
	{   
		unichar currentChar = [message characterAtIndex:i];
			
		CGFloat theta = PI + arcLength / radius; 
		
		CGContextSaveGState(context);
	
	
		//CGContextTranslateCTM(context, radius*cos(theta), radius*sin(theta));
		CGContextTranslateCTM(context, radius*sin(theta), radius*cos(theta));
		
		CGAffineTransform myTextTransform;
		myTextTransform = CGAffineTransformMakeRotation(-(theta + PI/2) + radians(90)); 
		CGContextSetTextMatrix(context, myTextTransform); 
		
		//CGContextRotateCTM(context, theta + PI/2);
				
		CGContextSetRGBFillColor(context, 1, 1, 1, 1); 
		
		CGContextShowTextAtPoint(context, rect.size.width, 0, &currentChar, 1);
		
		CGContextRestoreGState(context);
		
		arcLength += tWidth/2;
	}
	
	//
	CGContextSelectFont (context, "Helvetica", 20, kCGEncodingMacRoman);
	
	CGContextSetRGBFillColor(context, 1, 1, 1, 1);
	CGContextSetTextDrawingMode (context, kCGTextFill); 
	CGAffineTransform myTextTransform;
    myTextTransform = CGAffineTransformMakeRotation(0); 
    CGContextSetTextMatrix(context, myTextTransform); 
    CGContextShowTextAtPoint(context, 10, 435 , "Rune Madsen", 11);
	
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
