//
//  GetMembersTableViewDataSource.m
//  FedConnect
//
//  Created by Sergio Perez on 6/14/15.
//  Copyright (c) 2015 Learning iOS Development. All rights reserved.
//

#import "GetMembersTableViewDataSource.h"
#import "GetByZipCell.h"

@interface GetMembersTableViewDataSource ()

@end

@implementation GetMembersTableViewDataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *newCell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!newCell) {
        newCell = [UITableViewCell new];
    }
    
    if (indexPath.section == 0 && indexPath.row == 0){
    
        GetByZipCell *getZip = [tableView dequeueReusableCellWithIdentifier:@"getZip" forIndexPath:indexPath];
        getZip.getZipLabel.text = [NSString stringWithFormat:@"Zip"];
        
        return getZip;
        
        
    }
    
    else{
        UITableViewCell *blankCell = [UITableViewCell new];
        
        return blankCell;
        
    }
    
    
    
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 3;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (section == 0){
        
        return 3;
        
    }
    
    else if (section == 1){
        
        return 1;
    }
    
    else if (section == 2){
        
        return 1;
    }
    
    else{
        
        return 0;
        
    }
    

}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    switch (section) {
        case 0:
            return @"Search by Zip Code";
            break;
            
        case 1:
            return @"Search by State";
            break;
            
        case 2:
            return @"Search All Members";
            break;
            
        default:
            return @"Section Title";
            break;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    if(section == 0){
        
        return 200;
        
    }
    else{
        return 0;
    }
    
}


@end
