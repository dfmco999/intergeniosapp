//
//  PerfilViewController.h
//  intergeniosapp
//
//  Created by Diego Fernando Mantilla Vega on 14/03/15.
//  Copyright (c) 2015 Diego Fernando Mantilla Vega. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PerfilViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *foto;
@property (weak, nonatomic) IBOutlet UIButton *cameraButton;



-(IBAction)takePhotoCamera:(id)sender;
-(IBAction)takePhotoGallery:(id)sender;
@end
