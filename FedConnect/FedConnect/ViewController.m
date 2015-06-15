//
//  ViewController.m
//  FedConnect
//
//  Created by Sergio Perez on 6/13/15.
//  Copyright (c) 2015 iOS Development. All rights reserved.
//

#import "ViewController.h"
#import "MainTableViewDataSource.h"
#import "GetMembersViewController.h"

@interface ViewController () <UITableViewDelegate>

@property (nonatomic, strong) UITableView *FCTableView;
@property (nonatomic, strong) MainTableViewDataSource *tableViewDataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"Home"; // Page after Splash Screen
    self.tableViewDataSource = [MainTableViewDataSource new];
    
    self.FCTableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.FCTableView.delegate = self;
    
    self.FCTableView.rowHeight = (self.view.frame.size.height - 64) / 2;
    self.FCTableView.backgroundColor = [UIColor colorWithRed:45.0/255.0 green:50.0/255.0 blue:62.0/255.0 alpha:1];
    
    [self.view addSubview:self.FCTableView];
    
    [self.tableViewDataSource registerTableView:self.FCTableView];
    self.FCTableView.dataSource = self.tableViewDataSource;
    

}


#pragma tableview controllers

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if(indexPath.row == 0){
        
        GetMembersViewController *getMembersView = [GetMembersViewController new];
        [self.navigationController pushViewController:getMembersView animated:YES];
        
        
    }
    
    else if(indexPath.row == 1){
        
        
    }
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
