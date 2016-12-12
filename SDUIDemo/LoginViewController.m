//
//  LoginViewController.m
//  SDUIDemo
//
//  Created by Mahesh Deo on 10/12/16.
//  Copyright © 2016 Sharmila.Deo. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor lightGrayColor];
    
    _imageViewContainer=[[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    
    _actualImage=[UIImage imageNamed:@"background.jpeg"];
    
    _imageViewContainer.image=_actualImage;
    
    [self.view addSubview:_imageViewContainer];
    

    
    
    
    
    
    _labelUserName=[[UILabel alloc]init];
    _labelUserName.text=@"User Name";
    _labelUserName.frame=CGRectMake(50, 100, 100, 90);
    
    [self.view addSubview:_labelUserName];
    
    
    _labelPassword=[[UILabel alloc]init];
    _labelPassword.text=@"password";
    _labelPassword.frame=CGRectMake(50, 200, 100, 90);
    [self.view addSubview:_labelPassword];
    
    
    _textUserName=[[UITextField alloc]initWithFrame:CGRectMake(200,120, 120, 60)];
    _textUserName.borderStyle=UITextBorderStyleRoundedRect;
    _textUserName.keyboardAppearance=UIKeyboardAppearanceAlert;
    _textUserName.keyboardType=UIKeyboardTypeEmailAddress;
    _textUserName.backgroundColor=[UIColor clearColor];
    _textUserName.returnKeyType=UIReturnKeyEmergencyCall;
    _textUserName.delegate=self;
    [self.view addSubview:_textUserName];
    
    
    
    _textUserPassword=[[UITextField alloc]initWithFrame:CGRectMake(200, 220, 120, 60)];
    _textUserPassword.borderStyle=UITextBorderStyleRoundedRect;
    _textUserPassword.backgroundColor=[UIColor clearColor];
    _textUserPassword.keyboardType=UIKeyboardTypeEmailAddress;
    _textUserPassword.keyboardAppearance=UIKeyboardAppearanceAlert;
    _textUserPassword.returnKeyType=UIReturnKeyEmergencyCall;
    _textUserPassword.delegate=self;
    [self.view addSubview:_textUserPassword];
    
    _loginButton=[[UIButton alloc]init];
    CGRect frame=CGRectMake(200, 300, 100, 90);
    _loginButton.frame=frame;
    [_loginButton setTitle:@"Log In" forState:UIControlStateNormal];
    
    [_loginButton setTitle:@"logging...." forState:UIControlStateSelected];

    [_loginButton addTarget:self action:@selector(pressedButton:)forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_loginButton];
    [_textUserName becomeFirstResponder];
    // Do any additional setup after loading the view.
}
-(void)pressedButton
{
    NSLog(@"pressed Button:");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
