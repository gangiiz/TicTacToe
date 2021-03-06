//
//  Grid.m
//  TicTacToe
//
//  Created by David Webb on 7/7/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Grid.h"
#import "Constants.h"

@implementation Grid

@synthesize moveCount;
@synthesize tapView;

@synthesize b00;
@synthesize b01;
@synthesize b02;
@synthesize b10;
@synthesize b11;
@synthesize b12;
@synthesize b20;
@synthesize b21;
@synthesize b22;


- (id)initWithFrame:(CGRect)frame {
	
	NSLog(@"Creating a Grid Object...");
	
    if ((self = [super initWithFrame:frame])) {
		
		[super initWithFrame:frame];

		//[self setUserInteractionEnabled:NO];
		
		CGRect topLeft		= CGRectMake(LEFT_RECT_X - WIDTH,
										 LEFT_RECT_Y,
										 WIDTH, 
										 HEIGHT);
		
		CGRect topMiddle	= CGRectMake(LEFT_RECT_X + RECT_WIDTH,
										 LEFT_RECT_Y,
										 WIDTH,
										 HEIGHT);
		
		CGRect topRight		= CGRectMake(RIGHT_RECT_X + RECT_WIDTH,
										 RIGHT_RECT_Y,
										 WIDTH, 
										 HEIGHT);
		
		CGRect middleLeft	= CGRectMake(TOP_RECT_X, 
										 TOP_RECT_Y + RECT_WIDTH,
										 WIDTH, 
										 HEIGHT);
		
		CGRect middleMiddle	= CGRectMake(TOP_RECT_X + WIDTH + RECT_WIDTH, 
										 TOP_RECT_Y + RECT_WIDTH,
										 WIDTH, 
										 HEIGHT);
		
		CGRect middleRight	= CGRectMake(RIGHT_RECT_X + RECT_WIDTH,
										 TOP_RECT_Y + RECT_WIDTH,
										 WIDTH,
										 HEIGHT);
		
		CGRect bottomLeft	= CGRectMake(BOTTOM_RECT_X, 
										 BOTTOM_RECT_Y + RECT_WIDTH,
										 WIDTH, 
										 HEIGHT);
		
		CGRect bottomMiddle	= CGRectMake(BOTTOM_RECT_X + WIDTH + RECT_WIDTH, 
										 BOTTOM_RECT_Y + RECT_WIDTH, 
										 WIDTH, 
										 HEIGHT);
		
		CGRect bottomRight	= CGRectMake(RIGHT_RECT_X + RECT_WIDTH,
										 BOTTOM_RECT_Y + RECT_WIDTH,
										 WIDTH,
										 HEIGHT);
	
		
		
		//Add invisible views to detect touch in cells.
		//NOTE: Cells are notated (notationed?) as "b"ij, in which
		//i is row & j is column starting at 0
		
		self.b00 = [[TouchCells alloc] initWithFrame:topLeft];
		[self addSubview:[self b00]];
		
		self.b01 = [[TouchCells alloc] initWithFrame:topMiddle];
		[self addSubview:[self b01]];
		
		self.b02 = [[TouchCells alloc] initWithFrame:topRight];
		[self addSubview:self.b02];	
		
		self.b10 = [[TouchCells alloc] initWithFrame:middleLeft];
		[self addSubview:[self b10]];
		
		self.b11 = [[TouchCells alloc] initWithFrame:middleMiddle];
		[self addSubview:[self b11]];
				
		self.b12 = [[TouchCells alloc] initWithFrame:middleRight];
		[self addSubview:[self b12]];
		
		self.b20 = [[TouchCells alloc] initWithFrame:bottomLeft];
		[self addSubview:[self b20]];
		
		self.b21 = [[TouchCells alloc] initWithFrame:bottomMiddle];
		[self addSubview:[self b21]];
		
		self.b22 = [[TouchCells alloc] initWithFrame:bottomRight];
		[self addSubview:[self b22]];	
		
    }
	return self;
}



- (void)drawRect:(CGRect)rect {
	
	CGRect leftLine	=	CGRectMake(LEFT_RECT_X, 
								   LEFT_RECT_Y, 
								   RECT_WIDTH, 
								   VERTICAL_LENGTH);
	
	
	CGRect rightLine =	CGRectMake(RIGHT_RECT_X, 
								   RIGHT_RECT_Y, 
								   RECT_WIDTH, 
								   VERTICAL_LENGTH);
	
	
	CGRect topLine =	CGRectMake(TOP_RECT_X, 
								   TOP_RECT_Y, 
								   HORIZONTAL_LENGTH, 
								   RECT_WIDTH);
	
	
	CGRect bottomLine = CGRectMake(BOTTOM_RECT_X,
								   BOTTOM_RECT_Y,
								   HORIZONTAL_LENGTH, 
								   RECT_WIDTH);
	
	
	
	
	
	
	//Add the grid
	UIView *line1 = [[UIView alloc] initWithFrame:leftLine];
	[line1 setBackgroundColor:[UIColor whiteColor]];
	
	UIView *line2 = [[UIView alloc] initWithFrame:rightLine];
	[line2 setBackgroundColor:[UIColor whiteColor]];
	
	UIView *line3 = [[UIView alloc] initWithFrame:topLine];
	[line3 setBackgroundColor:[UIColor whiteColor]];
	
	UIView *line4 = [[UIView alloc] initWithFrame:bottomLine];
	[line4 setBackgroundColor:[UIColor whiteColor]];
	
		
	[self addSubview:line1];
	[self addSubview:line2];
	[self addSubview:line3];
	[self addSubview:line4];
	

}


- (void)dealloc {
	
    [super dealloc];
}


@end
