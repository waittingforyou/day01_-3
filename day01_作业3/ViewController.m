//
//  ViewController.m
//  day01_作业3
//
//  Created by tarena0026 on 16/6/30.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "ViewController.h"
#define MAS_SHORTHAND_GLOBALS
#import "Masonry.h"

@interface ViewController ()
@property (nonatomic) UIColor *randowColor;
@end

@implementation ViewController

-(UIColor *)randowColor
{
    CGFloat r = arc4random()%256/255.0;
    CGFloat g = arc4random()%256/255.0;
    CGFloat b = arc4random()%256/255.0;
    return [UIColor colorWithRed:r green:g blue:b alpha:1.0];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *lastView0 = nil;
    for (int j = 0; j < 10 ; j++ ) {
//        UIView *view0 = [UIView new];
//        view0.backgroundColor = [self randowColor];
//        [self.view addSubview:view0];
//        [view0 mas_makeConstraints:^(MASConstraintMaker *make) {
        UIView *lastView1 = Nil;
            
           
            for (int i = 0; i < 10; i++) {
                UIView *view1 = [UIView new];
                view1.backgroundColor = [self randowColor];
                [self.view addSubview:view1];
                [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
                    if (j == 0) {
                        make.top.equalTo(0);
                    }
                    else
                    {
                        make.top.equalTo(lastView0.mas_bottom);
                        make.height.equalTo(lastView0.mas_height);
                        if (j == 9) {
                            make.bottom.equalTo(0);
                        }
                    }
                    
                    
                    //            make.height.equalTo(100);
                    if (i == 0) {
                        make.left.equalTo(0);
                        //                make.height.equalTo(view1.mas_width);
                    }
                    else
                    {
                        make.left.equalTo(lastView1.mas_right);
                        make.size.equalTo(lastView1);
                        if (i == 9) {
                            make.right.equalTo(0);
                        }
                    }
                }];
                lastView1 = view1;
            }

//        }];
//        UIView *lastView = nil;
                lastView0 = lastView1;
    }
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
