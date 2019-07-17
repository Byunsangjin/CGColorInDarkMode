//
//  ViewController.m
//  CGColorInDarkMode
//
//  Created by Byunsangjin on 16/07/2019.
//  Copyright © 2019 Byunsangjin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UIView *colorView;

@property UIColor *resolveColor;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTitleLabel];
}

- (void)viewWillLayoutSubviews {
    UIColor *resolveColor = [UIColor.labelColor resolvedColorWithTraitCollection:self.colorView.traitCollection];
    self.colorView.layer.borderWidth = 3;
    [self.colorView.layer setBorderColor:resolveColor.CGColor];
}

- (void)traitCollectionDidChange:(UITraitCollection *)previousTraitCollection {
    [self setTitleLabel];
}

- (void)setTitleLabel {
    NSString *labelString = self.traitCollection.userInterfaceStyle == UIUserInterfaceStyleLight ? @"Light Mode" : @"Dark Mode";
    [self.titleLabel setText:labelString];
}

@end
