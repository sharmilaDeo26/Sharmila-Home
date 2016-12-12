//
//  LoginViewController.h
//  SDUIDemo
//
//  Created by Mahesh Deo on 10/12/16.
//  Copyright © 2016 Sharmila.Deo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController<UITextFieldDelegate>
@property(nonatomic,retain) UILabel *labelUserName,*labelPassword;
@property(nonatomic,retain) UISegmentedControl  *mySegmentControl;
@property(nonatomic,retain) UISlider *mySlider;
@property(nonatomic,retain) UIImageView *imageViewContainer;
@property(nonatomic,retain) UIImage  *actualImage;
@property(nonatomic,retain) UISwitch *myswitch;
@property(nonatomic,retain) UIButton *loginButton;
@property(nonatomic,retain) UIButton *cancelButton;

@property(nonatomic,retain) UITextField *textUserName,*textUserPassword;
-(void)pressedButton;

@end
