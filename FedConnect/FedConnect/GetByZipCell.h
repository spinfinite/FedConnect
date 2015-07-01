//
//  GetByZipCell.h
//  FedConnect
//
//  Created by Sergio Perez on 6/14/15.
//  Copyright (c) 2015 Learning iOS Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GetByZipCell : UITableViewCell

@property (nonatomic, strong) UITextField *textField;
@property (nonatomic, strong) UILabel *getZipLabel;
@property (nonatomic, strong) UISearchBar *searchBar;
@property (nonatomic, strong) UISearchController *searchController;

@end
