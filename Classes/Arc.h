#import <Foundation/Foundation.h>

@interface Arc : NSObject  
{
	CGFloat _radius;
	UIColor * _color;
	CGPoint _location;
}

- (void) setColor:(UIColor *) color;
- (void) setRadius:(CGFloat) radius;
- (void) setLocation:(CGPoint) location;

- (CGFloat) getRadius;
- (UIColor*) getColor;
- (CGPoint) getLocation;

@end
