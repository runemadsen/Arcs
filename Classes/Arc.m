#import "Arc.h"

@implementation Arc

- (id) init 
{
	self = [super init];
	
	if (self != nil) 
	{
		_angle = 90.0;
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

- (void) setAngle:(CGFloat) angle
{
	_angle = angle;
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

- (CGFloat) getAngle
{
	return _angle;
}

- (void)dealloc 
{
    [super dealloc];
}


@end
