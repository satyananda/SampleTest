//
//  CustomView.m
//  SampleTest
//
//  Created by Satyanand on 1/7/15.
//  Copyright (c) 2015 prokarma. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView


-(id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        //Initialize Code
    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (IBAction)selectButton:(id)sender {
    
    NSLog(@"BUTTON TAG: %d",(int)((UIButton *)sender).tag);
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(myDelegateMethod:)]) {
        
        //Call the Delegate Method
        [self.delegate myDelegateMethod:(int)((UIButton*)sender).tag];
    }

}

@end
