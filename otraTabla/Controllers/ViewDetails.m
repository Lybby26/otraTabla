//
//  ViewDetails.m
//  otraTabla
//
//  Created by Mac Mini on 11/14/17.
//  Copyright © 2017 lybby26. All rights reserved.
//

#import "ViewDetails.h"

@interface ViewDetails ()

@end

@implementation ViewDetails

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setName:(NSString *)_segZapModelo setImg:(NSString *)_segZapImagen];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)setName:(NSString *)modelo setImg:(NSString *)imagenZap
{
   //_segZapModelo = modelo;
    self.lblModelo.text = [NSString stringWithFormat:@"Modelo %@", modelo];
    self.imgModelo.image  = [UIImage imageNamed:imagenZap];
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
