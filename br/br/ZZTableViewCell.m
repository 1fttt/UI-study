//
//  ZZTableViewCell.m
//  br
//
//  Created by 房彤 on 2020/7/17.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "ZZTableViewCell.h"

@implementation ZZTableViewCell


-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        self.mybutton = [UIButton buttonWithType:UIButtonTypeSystem];
        
        [self.contentView addSubview:_mybutton];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    _mybutton.frame = CGRectMake(157, 10, 100, 30);
    _mybutton.titleLabel.font = [UIFont systemFontOfSize:19];
    [_mybutton setTintColor:[UIColor redColor]];
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
