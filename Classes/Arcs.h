#import <UIKit/UIKit.h>
#import "Arc.h"
#import "UIColor-Expanded.h"

#define NUM_ARCS 10


@interface Arcs : UIView 
{
	NSMutableArray * _arcs;
	int selectedArc;
}

- (void) setArcs: (NSMutableArray *) arcs;

@end
