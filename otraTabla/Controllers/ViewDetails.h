//
//  ViewDetails.h
//  otraTabla
//
//  Created by Mac Mini on 11/14/17.
//  Copyright © 2017 lybby26. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewDetails : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *lblModelo;
@property (strong, nonatomic) IBOutlet UIImageView *imgModelo;

@property NSString *segZapModelo;
@property NSString *segZapImagen;
@end
