//
//  MainView.m
//  PopDemo
//
//  Created by MacDev on 7/24/15.
//  Copyright © 2015 MacDev. All rights reserved.
//

#import "MainView.h"

@implementation MainView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    [[NSColor clearColor] set];
    NSRectFill(self.frame);
    // Drawing code here.
}

@end
