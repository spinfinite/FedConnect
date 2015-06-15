//
//  MainTableViewDataSource.m
//  FedConnect
//
//  Created by Sergio Perez on 6/14/15.
//  Copyright (c) 2015 Learning iOS Development. All rights reserved.
//

#import "MainTableViewDataSource.h"

@implementation MainTableViewDataSource

- (NSArray *)mainOptions{
    
    return @[@"Connect with Members", @"My Saved Connections"];
    
}

- (void)registerTableView:(UITableView *)tableView{
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [self mainOptions].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *newCell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!newCell){
        newCell = [UITableViewCell new];
    }
    
    newCell.textLabel.text = [self mainOptions][indexPath.row];
    newCell.backgroundColor = [UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:255.0/255.0 alpha:1];
    
    return newCell;
    
}

@end
