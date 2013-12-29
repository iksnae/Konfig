//
//  ViewController.m
//  Konfig
//
//  Created by k on 12/27/13.
//  Copyright (c) 2013 iksnae. All rights reserved.
//

#import "ViewController.h"
#import "NSUserDefaults+Konfig.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [[NSUserDefaults standardUserDefaults]registerKonfigWithURL:[NSURL URLWithString:@"http://localhost:1337/strings.json"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
