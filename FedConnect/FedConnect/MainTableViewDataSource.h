//
//  MainTableViewDataSource.h
//  FedConnect
//
//  Created by Sergio Perez on 6/14/15.
//  Copyright (c) 2015 Learning iOS Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MainTableViewDataSource : NSObject <UITableViewDataSource>

- (void)registerTableView:(UITableView *)tableView;

@end
