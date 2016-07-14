//
//  ViewController.m
//  Unity-iPhone
//
//  Created by ManuQiao on 16/7/7.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 为了体现这个是自定义视图及控制器，随便在view上加点内容
    [self.view setBackgroundColor:[UIColor greenColor]];
    UILabel *label = [UILabel new];
    [label setText:@"this is container view"];
    [label setFrame:CGRectMake(100, 100, 0, 0)];
    [label sizeToFit];
    [self.view addSubview:label];
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

@end
