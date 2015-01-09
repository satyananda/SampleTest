//
//  ViewController.h
//  SampleTest
//
//  Created by Satyanand on 1/7/15.
//  Copyright (c) 2015 prokarma. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomView.h"

@interface ViewController : UIViewController<myProtocolName>
@property (weak, nonatomic) IBOutlet UIView *myView;


@end

