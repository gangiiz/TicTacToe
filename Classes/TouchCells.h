//
//  BoardCells.h
//  TicTacToe
//
//  Created by David Webb on 7/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//
/****************************
 Views in the board that detect tocuh
 ****************************/


#import <UIKit/UIKit.h>

typedef enum _xOrO {
	X = 1,
	O
} xOrO;


@interface TouchCells : UIView {
	
}

@property (getter=isFilled, setter=fill)		BOOL				filled;

@property										xOrO				filler;		//Either 0 (x) or 1 (o); 

-(id)initWithCell:(CGRect)cell;
- (id)initGrid:(UIView *)grid WithFrames:(NSArray *)frames;


@end