//
//  KeyboardView.m
//  Calculator
//
//  Created by Виктор on 23.07.2023.
//

#import "KeyboardView.h"

@interface KeyboardView()

@property (nonatomic) UICollectionView *collectionView;

@end

@implementation KeyboardView

- (id) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self configure];
    }
    
    return self;
}

- (void) configure {
    
}

@end
