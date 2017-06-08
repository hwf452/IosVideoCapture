//
//  ViewController.m
//  edaocarios
//
//  Created by harry on 2017/5/2.
//  Copyright © 2017年 edao. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=UIColorFromRGB(0xa44dee);
    self.title=@"首页";
    self.arryListData=[NSArray arrayWithObjects:@"视频拍摄，保存到像册，转码mp4", nil];
    [self setupMainViews];
        
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)setupMainViews{
    self.tableView = ({
        UITableView *aTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        
        [aTableView registerClass:[MainTableViewCell class] forCellReuseIdentifier:KMainTableViewCell];
        
        
        
        //        aTableView.tableHeaderView = self.headView;
        //        aTableView.tableFooterView = [UIView new];
        aTableView.dataSource = self;
        aTableView.delegate = self;
        aTableView.backgroundColor = UIColorFromRGB(0xffffff);
        aTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [self.view addSubview:aTableView];
        
        [aTableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.view);
        }];
        
        
        
        aTableView;
    });
}
#pragma mark -
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.arryListData.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
        
        NSString *title=[self.arryListData objectAtIndex:indexPath.section];
        
            
        MainTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:KMainTableViewCell forIndexPath:indexPath];
            
        [cell loadContent:title index:indexPath.section];
            
        return cell;
    
   

    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *title=[self.arryListData objectAtIndex:indexPath.section];
    
    
        
    return [tableView fd_heightForCellWithIdentifier:KMainTableViewCell configuration:^(id cell) {
        [cell loadContent:title index:indexPath.row];
    }];;
    
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 2.0f;
}

- (UIView *)tableView:(UITableView *)mTableView viewForHeaderInSection:(NSInteger)section{
    
    //    UIView *header = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 4)];
    //
    //    header.backgroundColor=UIColorFromRGB(0xff00ff);
    
    UIView *header = [UIView new];
    
    header.backgroundColor=UIColorFromRGB(0xeeeeee);
    
    
    
    return header;
    
}




- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    //    if (section==3) {
    //       return 4.0f;
    //    }
    return 0.01f;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    
    UIView *header = [UIView new];
    
    header.backgroundColor=UIColorFromRGB(0xeeeeee);
    return header;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section==0) {
        VideoViewController *videoViewController=[VideoViewController new];
        [self.navigationController pushViewController:videoViewController animated:YES];
    }
}



@end
