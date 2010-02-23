#import "Arc.h"

@implementation Arc

- (id) init 
{
	self = [super init];
	
	if (self != nil) 
	{
	}
	
	return self;
}

/* Setters
 ________________________________________________________________________________ */

- (void) setColor:(UIColor *) color
{
	_color = color;
}

- (void) setRadius:(CGFloat) radius
{
	_radius = radius;
}

- (void) setLocation:(CGPoint) location
{
	_location = location;
}

/* Getters
 ________________________________________________________________________________ */

- (CGFloat) getRadius
{
	return _radius;
}

- (CGPoint) getLocation
{
	return _location;
}

- (UIColor *) getColor
{
	return _color;
}

- (void)dealloc 
{
    [super dealloc];
}


@end
