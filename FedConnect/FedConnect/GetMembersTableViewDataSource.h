//
//  GetMembersTableViewDataSource.h
//  FedConnect
//
//  Created by Sergio Perez on 6/14/15.
//  Copyright (c) 2015 Learning iOS Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol GetMembersTableViewDataSourceDelegate;

@interface GetMembersTableViewDataSource : NSObject <UITableViewDataSource>

@property (nonatomic, strong) UILabel *mainLabel;
@property (nonatomic, strong) UITextField *textField;

@property (nonatomic, assign) id<GetMembersTableViewDataSourceDelegate>delegate;

@end

@protocol GetMembersTableViewDataSourceDelegate <NSObject>

@end
