//
//  ViewController.m
//  SampleTest
//
//  Created by Satyanand on 1/7/15.
//  Copyright (c) 2015 prokarma. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"
@interface ViewController (){
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CustomView *customView = (CustomView *)[[[NSBundle mainBundle]loadNibNamed:@"CustomView" owner:self options:0]lastObject];
    customView.frame = self.myView.frame;
    customView.delegate = self;
    
    [self.myView addSubview:customView];
    
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Second"]) {
        
        //Pass any Value...
        
    }
    
}

#pragma mark - Delegate
/**
  this is test method
 
 @param sample param
 @return return method
 
 **/

-(void)myDelegateMethod:(int)tag{
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Title" message:[NSString stringWithFormat:@"String %d",tag] preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okButton = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
       
        NSLog(@"Delegate Called");
        
        [self performSegueWithIdentifier:@"Second" sender:self];
        
    }];
    
    [alert addAction:okButton];
    [self presentViewController:alert animated:YES completion:nil];
}
@end
