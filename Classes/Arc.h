#import <Foundation/Foundation.h>

@interface Arc : NSObject  
{
	CGFloat _radius;
	UIColor * _color;
	CGPoint _location;
	CGFloat _angle;
}

- (void) setColor:(UIColor *) color;
- (void) setRadius:(CGFloat) radius;
- (void) setLocation:(CGPoint) location;
- (void) setAngle:(CGFloat) angle;

- (CGFloat) getRadius;
- (UIColor*) getColor;
- (CGPoint) getLocation;
- (CGFloat) getAngle;

@end
