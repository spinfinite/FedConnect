//
//  GetMembersViewController.m
//  FedConnect
//
//  Created by Sergio Perez on 6/14/15.
//  Copyright (c) 2015 iOS Development. All rights reserved.
//

#import "GetMembersViewController.h"
#import "GetMembersTableViewDataSource.h"
#import "GetByZipCell.h"

@interface GetMembersViewController () <UITableViewDelegate, GetMembersTableViewDataSourceDelegate>

@property (nonatomic, strong) UITableView *GetMembersTableView;
@property (nonatomic, strong) GetMembersTableViewDataSource *getMembersDataSource;

@end

@implementation GetMembersViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.title = @"New Members";
    [[UILabel appearance] setFont:[UIFont fontWithName:@"Avenir Next" size:20]];
    
    UIView *view = [[UIView alloc] initWithFrame:self.view.bounds];
    view.backgroundColor = [UIColor whiteColor];
    
    self.getMembersDataSource = [GetMembersTableViewDataSource new];
    self.getMembersDataSource.delegate = self;
    
    self.GetMembersTableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    [self.GetMembersTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
    self.GetMembersTableView.delegate = self;
    self.GetMembersTableView.dataSource = self.getMembersDataSource;
    
    [self.view addSubview:self.GetMembersTableView];
    
    [self.GetMembersTableView registerClass: [GetByZipCell class] forCellReuseIdentifier:@"getZip"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 0 && indexPath.row == 2){
        return 200;
    }
    else {
        return 40;
    }
        
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if(indexPath.section == 1 && indexPath.row == 0){
        
        
    }
    
    else if(indexPath.section == 2 && indexPath.row == 0){
        
        
        
    }
    
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
