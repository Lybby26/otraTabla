//
//  ViewController.h
//  otraTabla
//
//  Created by Mac Mini on 11/13/17.
//  Copyright © 2017 lybby26. All rights reserved.
//

#import <UIKit/UIKit.h>
@import GoogleSignIn;
@interface Home : UIViewController<GIDSignInUIDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tblmain;


@end

