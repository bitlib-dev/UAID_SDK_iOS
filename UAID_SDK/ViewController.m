//
//  WKViewController.m
//  UAID
//
//  Created by bitlib on 04/03/2021.
//  Copyright (c) 2021 bitlib. All rights reserved.
//

#import "ViewController.h"
#import <UAID/UAidHelper.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UIButton *getTokenBtn;

@end

@implementation ViewController

- (void)viewDidLoad{
    
    [super viewDidLoad];
    
    [self getToken:nil];
}

- (IBAction)getToken:(id)sender {
    
    self.getTokenBtn.userInteractionEnabled = NO;
    
        [[UAidHelper getInstance] getToken:500 operatorType:OperatorTypeUnknow listener:^(NSDictionary * _Nonnull data) {

            self.getTokenBtn.userInteractionEnabled = YES;
            
            NSData * jsonData = [NSJSONSerialization dataWithJSONObject:data options:NSJSONWritingPrettyPrinted error:nil];
            
            NSString * jsonStr = [[NSString alloc]initWithData:jsonData encoding:NSUTF8StringEncoding];
            
            dispatch_async(dispatch_get_main_queue(), ^{
                self.textView.text = jsonStr;
            });
        }];
    
}

@end
