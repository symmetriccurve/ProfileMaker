//
//  ViewController.m
//  profileApp
//
//  Created by Belde, Vikram on 8/21/16.
//  Copyright © 2016 com.verizon.www. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//@property(nonatomic,strong)UIImageView *ProfileImage;
//@property(nonatomic,weak)UIAlertController * alert;
@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    //NSLog(NSStringFromCGRect(self.view.bounds));
    //{{414, 736}}
    self->ProfileImage.userInteractionEnabled = YES;
    self->ProfileImage = [[UIImageView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    [self->ProfileImage setBackgroundColor:[UIColor grayColor]];
    //ProfileImage.image = [UIImage imageNamed:@"sindu.JPG"];
    UITapGestureRecognizer *Click = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(changecolor:)];
    [Click setNumberOfTapsRequired:1];
    [self->ProfileImage addGestureRecognizer:Click];
    
    NSLog(@"ADD GESTURE RECOGNIZER");
    
    [[self view] addSubview:self->ProfileImage];
    
    UIView *NameIdWindow = [[UIView alloc] initWithFrame:CGRectMake(120, 20, 274, 100)];
    
    UITapGestureRecognizer *Click2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(changecolor:)];
    [Click2 setNumberOfTapsRequired:1];
    [NameIdWindow addGestureRecognizer:Click2];
    
    
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
    
    
    UILabel * Description = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 375, 596)];
    [Description setText:@"Descritption: \n\n Pusarla Venkata Sindhu (born 5 July 1995) is an Indian professional badminton player.[5] At the 2016 Summer Olympics, she became the first Indian woman to win an Olympic silver medal.[6] Sindhu received international attention as she broke into the Top 20 in the Badminton World Federation rankings released on 21 September 2012.[7] On 10 August 2013, Sindhu became the first ever Indian women's singles player to win a medal at the 2013 World Championships. On 30 March 2015, she received India's fourth highest civilian honor, thePadma Shri.[8] On 18 August 2016, at the 2016 Summer Olympics, she became the first Indian to reach the finals in the badminton event of an Olympic games after beating Nozomi Okuhara of Japan in the semi-finals.[9] She subsequently won the silver medal at the 2016 Summer Olympics and became the first Indian shuttler to win a silver medal and the youngest Indian overall to make a podium finish in the Olympics.[10] She also became the second Indian female shuttler to win an Olympic medal after Saina Nehwal, who won the bronze medal at 2012 Summer Olympics at London.[11]"];
    NSInteger numberofLines = 0;
    [Description setNumberOfLines:numberofLines];
    [DescritionWindow addSubview:Description];
    
}

-(void)changecolor: (UITapGestureRecognizer *)recognizer{
    
    //[self.ProfileImage setBackgroundColor:[UIColor redColor]];
    //[self presentViewController:alert animated:YES completion:nil];
    NSLog(@"Click made");
    UIAlertController  * alert=   [UIAlertController
                                   alertControllerWithTitle:@"Choose"
                                   message: nil
                                   preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction* ChooseFromPhotos = [UIAlertAction
                                       actionWithTitle:@"Choose from Photos"
                                       style:UIAlertActionStyleDefault
                                       handler:^(UIAlertAction * action)
                                       {
                                           [self->ProfileImage setBackgroundColor:[UIColor greenColor]];
                                           [alert dismissViewControllerAnimated:YES completion:nil];
                                           
                                       }];
    UIAlertAction* OpenCamera = [UIAlertAction
                                 actionWithTitle:@"open Camera"
                                 style:UIAlertActionStyleDefault
                                 handler:^(UIAlertAction * action)
                                 {
                                     [self->ProfileImage setBackgroundColor:[UIColor redColor]];
                                     //[alert dismissViewControllerAnimated:YES completion:nil];
                                     
                                 }];
    UIAlertAction * cancel = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        [alert dismissViewControllerAnimated:YES completion:nil];
    }];
    
    [alert addAction:ChooseFromPhotos];
    [alert addAction:OpenCamera];
    [alert addAction:cancel];
    [self presentViewController:alert animated:YES completion:nil];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
