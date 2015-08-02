//
//  ViewController.m
//  PopDemo
//
//  Created by MacDev on 7/23/15.
//  Copyright © 2015 MacDev. All rights reserved.
//

#import "ViewController.h"
#import "PopAnimationView.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    PopAnimationView *popView = [[PopAnimationView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:popView];
    // Do any additional setup after loading the view.
    
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
