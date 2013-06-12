//
//  ViewController.m
//  DCLabelSample
//
//  Created by 廣川政樹 on 2013/06/12.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self makePlaneLabel];
    [self makeRoundRectLabel];
}

//通常ラベルの作成
- (void)makePlaneLabel
{
    UILabel *planeLabel = [DCLabel planeLabel:CGRectMake(self.view.center.x - (LABEL_WIDTH / 2),
                                                         self.view.center.y - LABEL_HEIGHT - LABEL_MARGIN_Y,
                                                         LABEL_WIDTH,
                                                         LABEL_HEIGHT)
                                         text:@"Plane Label"
                                         font:LABEL_FONT
                                    textColor:[UIColor whiteColor]
                                textAlignment:NSTextAlignmentCenter
                              backgroundColor:[UIColor blackColor]];
    [self.view addSubview:planeLabel];
}

//角丸ラベルの作成
- (void)makeRoundRectLabel
{
    UILabel *roundRectLabel = [DCLabel roundRectLabel:CGRectMake(self.view.center.x - (LABEL_WIDTH / 2),
                                                                 self.view.center.y - LABEL_HEIGHT + LABEL_MARGIN_Y,
                                                                 LABEL_WIDTH,
                                                                 LABEL_HEIGHT)
                                                 text:@"Round Rect Label"
                                                 font:LABEL_FONT
                                            textColor:[UIColor whiteColor]
                                        textAlignment:NSTextAlignmentCenter
                                      backgroundColor:[UIColor blackColor]
                                        cornerRadious:8.0f];
    [self.view addSubview:roundRectLabel];
}

@end
