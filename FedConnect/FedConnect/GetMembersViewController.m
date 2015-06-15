//
//  GetMembersViewController.m
//  FedConnect
//
//  Created by Sergio Perez on 6/14/15.
//  Copyright (c) 2015 iOS Development. All rights reserved.
//

#import "GetMembersViewController.h"
#import "GetMembersTableViewDataSource.h"

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
