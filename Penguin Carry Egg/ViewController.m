//
//  ViewController.m
//  Penguin Carry Egg
//
//  Created by lx on 2018/1/11.
//  Copyright © 2018年 Xue. All rights reserved.
//

#import "ViewController.h"
#import "gameVc.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewDidLoad
{
    
    [super viewDidLoad];
//    gameVc *vc = [[gameVc alloc]init];
//    //
//    [self presentViewController:vc animated:NO completion:nil];
    
}

- (void)viewDidAppear:(BOOL)animated {
   
    static dispatch_once_t disOnce;
    
    dispatch_once(&disOnce,^ {
        
        [super viewDidAppear:animated];
        
        gameVc *vc = [[gameVc alloc]init];
        
        [self presentViewController:vc animated:NO completion:nil];
        
    });
    
    
}

//-(void)viewDidLayoutSubviews
//{
//    [super viewDidLayoutSubviews];
//
//    gameVc *vc = [[gameVc alloc]init];
//
//    [self presentViewController:vc animated:NO completion:nil];
//
//}


@end
