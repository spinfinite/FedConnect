//
//  GetByZipCell.m
//  FedConnect
//
//  Created by Sergio Perez on 6/14/15.
//  Copyright (c) 2015 Learning iOS Development. All rights reserved.
//

#import "GetByZipCell.h"

@implementation GetByZipCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        
        [self setup];
    }
    
    return self;
    
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setup{
    [self setupSearchBar];
    

    
}

// Display Search Bar to Search for Zip Codes

-(void)setupSearchBar{
    
    self.searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 70, 320, 57)];
    self.searchBar.backgroundColor = [UIColor clearColor];
    self.searchBar.placeholder = @"enter 5 digit zip";
    
    [self addSubview:self.searchBar];
    
}


@end
