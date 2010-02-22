#import "Arc.h"

@implementation Arc


- (id)initWithFrame:(CGRect)frame 
{
    if (self = [super initWithFrame:frame]) 
	{
        _radius = arc4random() % 200;
    }
    return self;
}


- (void)drawRect:(CGRect)rect 
{	
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGContextSaveGState(context); // pushmatrix
	CGContextTranslateCTM(context, rect.size.width, rect.size.height); // translate
	
	CGContextSetRGBStrokeColor(context, 0, 0.5, 0, 1);
	CGContextSetLineWidth(context, 15);
	
	CGContextAddArc(context, 0, 0, _radius, radians(180), radians(270), 0);
	
	CGContextStrokePath(context);
}


- (void)dealloc 
{
    [super dealloc];
}


@end
