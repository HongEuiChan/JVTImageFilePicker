//
//  ViewController.m
//  ImagePicker
//
//  Created by Matan Cohen on 4/5/16.
//  Copyright © 2016 Matan Cohen. All rights reserved.
//

#import "ViewController.h"
#import "JVTFilesPicker.h"
#import "JVTRecentImagesProvider.h"
#import "JVTRecetImagesCollection.h"

#import "JVTActionSheetAction.h"
#import "JVTActionSheetView.h"
@interface ViewController ()<FilesPickerDelegate>
@property (nonatomic,strong) JVTFilesPicker *filePicker;
@property (nonatomic,strong) JVTRecetImagesCollection *recentImagesCollection;

@property (nonatomic,strong) JVTActionSheetView *actionSheetView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
}

-(void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    self.filePicker = [[JVTFilesPicker alloc] init];
    self.filePicker.delegate = self;
    [self presentActionSheet];
}

-(void) presentActionSheet {
 [self.filePicker presentFilesPickerOnController:self];
}

- (void)didPickFile:(NSData *)file
           fileName: (NSString *) fileName {
    NSLog(@"Did pick file");
}

- (void)didPickImage:(UIImage *)image
       withImageName:(NSString *) imageName {
    NSLog(@"Did pick image");
}

@end
