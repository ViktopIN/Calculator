//
//  KeyboardViewCell.h
//  Calculator
//
//  Created by Виктор on 23.07.2023.
//

#import <UIKit/UIKit.h>

typedef enum {
    TopKeys = 1,
    MiddleKeys = 2,
    SideKeys = 3
}KeyboardCellType;

@interface KeyboardViewCell : UICollectionViewCell

-(void) configureWith: (char)symbol andWith: (KeyboardCellType)type;

@end

