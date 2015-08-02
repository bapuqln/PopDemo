//
//  PopAnimationView.m
//  PopDemo
//
//  Created by MacDev on 7/23/15.
//  Copyright © 2015 MacDev. All rights reserved.
//

#import "PopAnimationView.h"
#import <pop/POP.h>

#import <pop/POPAnimatableProperty.h>

@implementation PopAnimationView

- (nullable instancetype)initWithCoder:(nonnull NSCoder *)coder{
    self = [super initWithCoder:coder];
    if (self) {
        [self _setUp];
    }
    return self;
}

- (instancetype)initWithFrame:(NSRect)frameRect{
    self = [super initWithFrame:frameRect];
    if (self) {
        [self _setUp];
    }
    return self;
}

- (void)_setUp{
    _popLayer = [CAShapeLayer layer];
    [_popLayer setBackgroundColor:[[NSColor redColor] CGColor]];
    [_popLayer setFrame:CGRectMake(10, 10, 200, 200)];
    [self setWantsLayer:YES];

    [self.layer addSublayer:_popLayer];
    POPSpringAnimation *anim = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerBounds];

//    anim.fromValue = [NSNumber numberWithFloat:0];
    anim.fromValue = [NSValue valueWithRect:NSZeroRect];
    anim.toValue =[NSValue valueWithRect:NSMakeRect(0, 0, 100, 100)];
    anim.repeatForever = YES;
//    anim.repeatCount = 2;
    anim.springBounciness = 20;
    anim.springSpeed = 0.1;
    [_popLayer pop_addAnimation:anim forKey:@"size"];


//    POPDecayAnimation *anim = [POPDecayAnimation animationWithPropertyNamed:kPOPLayerPositionX];
//    anim.velocity = @(self.frame.size.width);
//    anim.repeatForever = YES;
//    [_popLayer pop_addAnimation:anim forKey:@"slide"];

//    POPBasicAnimation *anim = [POPBasicAnimation animationWithPropertyNamed:@"kPOPViewAlpha"];
//    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
//    anim.fromValue = @(0.0);
//    anim.toValue = @(1.0);
//    [self pop_addAnimation:anim forKey:@"fade"];

}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    [[NSColor darkGrayColor] set];
    [[NSBezierPath bezierPathWithRoundedRect:self.frame xRadius:5 yRadius:5] fill];
    // Drawing code here.
}

@end
