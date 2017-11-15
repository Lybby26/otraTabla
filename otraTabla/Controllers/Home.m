//
//  ViewController.m
//  otraTabla
//
//  Created by Mac Mini on 11/13/17.
//  Copyright © 2017 lybby26. All rights reserved.
//

#import "Home.h"
#import "cellMainTable.h"
@interface Home ()
@property NSMutableArray *imgZapato;
@property NSMutableArray *modZapato;
@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initController];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-------------------------------------------------------------------------------
- (void)initController {
    self.imgZapato  = [[NSMutableArray alloc] initWithObjects: @"zapAzul.jpg", @"zapblanco.jpg", @"zapdorado.jpg", @"zapExcentrico.jpg", @"zapNegro.jpg", @"zapRojo.jpg",@"zapRosa.jpg",@"ZapRosaBlanco.jpg",nil];
    
    self.modZapato  = [[NSMutableArray alloc] initWithObjects: @"Azu001", @"Bla001",@"Dor001",@"Exc001",@"Neg001",@"Roj001",@"Ros001",@"RoB001", nil];
    

}

/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.modZapato.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellMainTable *cell = (cellMainTable *)[tableView dequeueReusableCellWithIdentifier:@"cellMainTable"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellMainTable" bundle:nil] forCellReuseIdentifier:@"cellMainTable"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellMainTable"];
    }
    //Fill cell with info from arrays
    cell.lblModelo.text       = self.modZapato[indexPath.row];
    cell.imgUser.image      = [UIImage imageNamed:self.imgZapato[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //Pending
}
@end
