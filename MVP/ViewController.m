//
//  ViewController.m
//  MVP
//
//  Created by X-Liang on 15/12/26.
//  Copyright © 2015年 X-Liang. All rights reserved.
//

#import "ViewController.h"

#import "UITableView+XLTableViewCategory.h"



@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"MVP";
    self.view.backgroundColor = [UIColor whiteColor];
    [self.tableView registerCellAndHeaderFooter];
    [self _createShareItem];
}

#pragma mark - PrivateMethod
/// 创建右上角"分享"按钮
- (void)_createShareItem {
    UIButton *shareButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [shareButton setFrame:CGRectMake(0, 0, 45, 35)];
    [shareButton setTitle:@"分享" forState:UIControlStateNormal];
    [shareButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithCustomView:shareButton];
    self.navigationItem.rightBarButtonItem = barButtonItem;
}

- (void)_fetchData {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    __weak typeof(self) weakSelf = self;
    [SVProgressHUD show];
    [manager GET:@"http://sunnyvalue.github.io/MVP/food.json"
      parameters:nil
         success:^(NSURLSessionDataTask *task, id responseObject) {
             NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:responseObject options:0 error:nil];
             
         } failure:^(NSURLSessionDataTask *task, NSError *error) {
             
         }];
}

@end
