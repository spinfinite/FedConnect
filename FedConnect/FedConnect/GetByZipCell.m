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
    
    self.getZipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 40)];
    self.getZipLabel.textColor = [UIColor colorWithRed:238.0/255.0 green:237.0/255.0 blue:234.0/255 alpha:1];
    self.getZipLabel.font = [UIFont fontWithName:@"Avenir Next" size:20];
    self.getZipLabel.backgroundColor = [UIColor lightGrayColor];
    
    [self addSubview:self.getZipLabel];
}

@end
