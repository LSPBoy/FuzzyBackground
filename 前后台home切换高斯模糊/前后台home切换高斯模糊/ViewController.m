//
//  ViewController.m
//  前后台home切换高斯模糊
//
//  Created by XinHuiOS on 2019/8/7.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView * im =[[UIImageView alloc] initWithFrame:self.view.bounds];
    im.image =[UIImage imageNamed:@"timg.jpg"];
    im.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:im];
    
    UITapGestureRecognizer * tao =[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickIM)];
    im.userInteractionEnabled = YES;
    [im addGestureRecognizer:tao];
    
    
}
//测试打电话->也会进行模糊 可根据自己i情况做调整
-(void)clickIM {
    NSString * str=[NSString stringWithFormat:@"telprompt://%@",@"400-601-5581"];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:str]];
}
@end
