//
//  MainWindow.m
//  PopDemo
//
//  Created by MacDev on 7/24/15.
//  Copyright © 2015 MacDev. All rights reserved.
//

#import "MainWindow.h"

@implementation MainWindow

- (nonnull instancetype)initWithContentRect:(NSRect)contentRect styleMask:(NSUInteger)aStyle backing:(NSBackingStoreType)bufferingType defer:(BOOL)flag{
    self = [super initWithContentRect:contentRect styleMask:NSBorderlessWindowMask backing:NSBackingStoreBuffered defer:flag];
    if (self) {
        [self setOpaque:NO];
        [self setAlphaValue:1.0];
        [self setMovableByWindowBackground:YES];
    }
    return self;
}

@end
