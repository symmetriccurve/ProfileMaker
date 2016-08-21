//
//  ViewController.m
//  profileApp
//
//  Created by Belde, Vikram on 8/21/16.
//  Copyright © 2016 com.verizon.www. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //NSLog(NSStringFromCGRect(self.view.bounds));
    //{{414, 736}}
    
    UIImageView *ProfileImage = [[UIImageView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    [ProfileImage setBackgroundColor:[UIColor grayColor]];
    [[self view] addSubview:ProfileImage];
    
    
    UIView *NameIdWindow = [[UIView alloc] initWithFrame:CGRectMake(120, 20, 274, 100)];
    
    //[NameIdWindow setBackgroundColor:[UIColor redColor]];
    [[self view] addSubview:NameIdWindow];
    
    UILabel *Name = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 100, 30)];
    [Name setText:@"Name: Sindu"];
    //[Name setTextColor:[UIColor blueColor]];
    //[Name setBackgroundColor:[UIColor greenColor]];
    [NameIdWindow addSubview:Name];

    
    UILabel * Id = [[UILabel alloc] initWithFrame:CGRectMake(20, 50, 100, 30)];
    [Id setText:@"ID: 123456"];
    //[Id setBackgroundColor:[UIColor yellowColor]];
    [NameIdWindow addSubview:Id];
    
    
    UIView * DescritionWindow = [[UIView alloc] initWithFrame:CGRectMake(20, 120, 374, 596)];
    //[DescritionWindow setBackgroundColor:[UIColor magentaColor]];
    [[self view] addSubview:DescritionWindow];
    
    
    UILabel * Description = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 375, 300)];
    [Description setText:@"Descritption: \n\n Container view controllers are a way to combine the content from multiple view controllers into a single user interface. Container view controllers are most often used to facilitate navigation and to create new user interface types based on existing content. Examples of container view controllers in UIKit include UINavigationController, UITabBarController, and UISplitViewController, all of which facilitate navigation between different parts of your user interface"];
    NSInteger numberofLines = 0;
    [Description setNumberOfLines:numberofLines];
    [DescritionWindow addSubview:Description];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
