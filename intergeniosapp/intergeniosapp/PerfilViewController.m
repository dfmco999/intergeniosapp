//
//  PerfilViewController.m
//  intergeniosapp
//
//  Created by Diego Fernando Mantilla Vega on 14/03/15.
//  Copyright (c) 2015 Diego Fernando Mantilla Vega. All rights reserved.
//

#import "PerfilViewController.h"

@interface PerfilViewController ()


@end

@implementation PerfilViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if(![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        UIAlertView * error = [[UIAlertView alloc] initWithTitle:@"Error." message:@"Tu dispositivo no tiene camara disponible." delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil];
        [error show];
        _cameraButton.enabled = NO;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)takePhotoCamera:(id)sender{
    UIImagePickerController * camara = [[UIImagePickerController alloc] init];
    camara.delegate = self;
    camara.sourceType = UIImagePickerControllerSourceTypeCamera;
    [self presentViewController:camara animated:YES completion:nil];
    
    
}
-(IBAction)takePhotoGallery:(id)sender{
    
    UIImagePickerController * seleccionarFoto = [[UIImagePickerController alloc] init];
    seleccionarFoto.delegate = self;
    seleccionarFoto.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:seleccionarFoto animated:YES completion:nil];
}


-(void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    UIImage * imagenCapturada = info[UIImagePickerControllerOriginalImage];
    _foto.image = imagenCapturada;
    [self dismissViewControllerAnimated:YES completion:nil];
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
