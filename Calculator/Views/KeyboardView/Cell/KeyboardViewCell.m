//
//  KeyboardViewCell.m
//  Calculator
//
//  Created by Виктор on 23.07.2023.
//

#import "KeyboardViewCell.h"

@interface KeyboardViewCell()

@property (nonatomic) UILabel *mainLabel;

@end


@implementation KeyboardViewCell

#pragma Properties & Views

@synthesize mainLabel;

#pragma Settings

- (void)hierarchySetup {
    [self.contentView addSubview: mainLabel];
}

- (void)layoutSetup {
    [[mainLabel.centerYAnchor constraintEqualToAnchor: self.contentView.centerYAnchor] setActive: YES];
    [[mainLabel.centerXAnchor constraintEqualToAnchor: self.contentView.centerXAnchor] setActive: YES];
}

- (void)viewSetup {
    mainLabel = [[UILabel alloc] init];
    mainLabel.font = [UIFont systemFontOfSize: 24];
    mainLabel.textColor = [UIColor blackColor];
    mainLabel.textAlignment = NSTextAlignmentCenter;
    mainLabel.translatesAutoresizingMaskIntoConstraints = NO;
}

#pragma Configuration

- (void)configureWith:(char)symbol andWith:(KeyboardCellType)type {
    char labelText = symbol;
    mainLabel.text = [NSString stringWithFormat: @"%c", labelText];
        
    switch (type) {
        case TopKeys:
            self.contentView.backgroundColor = [UIColor lightGrayColor];
            break;
        case MiddleKeys:
            self.contentView.backgroundColor = [UIColor grayColor];
            break;
        case SideKeys:
            self.contentView.backgroundColor = [UIColor orangeColor];
            break;
        default:
            break;
    }
}

@end
