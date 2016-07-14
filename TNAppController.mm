//
//  TNAppController.m
//  Unity-iPhone
//
//  Created by ManuQiao on 16/7/7.
//
//

#import <UIKit/UIKit.h>
#import "UnityAppController.h"
#import "UI/UnityView.h"
#import "UI/UnityViewControllerBase.h"
#import "ViewController.h"

@interface TNAppController : UnityAppController

@end

@implementation TNAppController

- (void)willStartWithViewController:(UIViewController*)controller {
    // 新建自定义视图控制器。
    ViewController *viewController = [[ViewController alloc] init];
    
    // 把Unity的内容视图作为子视图放到我们自定义的视图里面。
    [viewController.view addSubview:_unityView];
    [_unityView setFrame:CGRectMake(100, 100, 100, 100)];
    
    // 把根视图和控制器全部换成我们自定义的内容。
    _rootController = viewController;
    _rootView = _rootController.view;
}

@end

IMPL_APP_CONTROLLER_SUBCLASS(TNAppController)