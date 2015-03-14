//
//  MenuUsuarioViewController.m
//  intergeniosapp
//
//  Created by Diego Fernando Mantilla Vega on 13/03/15.
//  Copyright (c) 2015 Diego Fernando Mantilla Vega. All rights reserved.
//

#import "MenuUsuarioViewController.h"

@interface MenuUsuarioViewController ()

- (IBAction)btnCerrarSesionUsuario:(id)sender;


@end

@implementation MenuUsuarioViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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


- (IBAction)btnCerrarSesionUsuario:(id)sender {
    [self dismissViewControllerAnimated:YES completion:
        nil];
    
}
@end
