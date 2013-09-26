DCLabel
=====================

四角のラベルと角丸のラベルを生成する「DCLabel」クラスです。

ラベルを角丸にするため、「QuartzCore」フレームワークを使用しています。

##使用方法

###通常ラベルの生成

```objective-c
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
```

###角丸ラベルの生成

```objective-c
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
```

##サンプルソースコード

###ViewController.h

```objective-c
#import "DCLabel.h"

#define LABEL_WIDTH    128
#define LABEL_HEIGHT   30
#define LABEL_FONT     [UIFont fontWithName:@"Helvetica" size:12]
#define LABEL_MARGIN_Y 32
```

###ViewController.m

```objective-c
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
```
