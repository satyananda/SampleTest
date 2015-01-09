//
//  CustomView.h
//  SampleTest
//
//  Created by Satyanand on 1/7/15.
//  Copyright (c) 2015 prokarma. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol myProtocolName <NSObject>

@required

@optional

-(void)myDelegateMethod:(int)tag;

@end


@interface CustomView : UIView

@property (nonatomic,weak) id <myProtocolName> delegate;


@end
