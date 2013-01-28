//
//  AddressForMapCell.m
//  iweibo
//
//  Created by Cui Zhibo on 12-4-23.
//  Copyright (c) 2012年 Beyondsoft. All rights reserved.
//

#import "AddressForMapCell.h"

@implementation AddressForMapCell

-(void)dealloc
{
    [iconView release];
    [addrLabel release];
    [nameLabel release];
    [_addrModel release];
    [super dealloc];
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        UIView * view = [self getCellView];
        [self.contentView addSubview:view];
        
    }
    return self;
}

-(UIView *)getCellView{
    
    CGRect rect = CGRectMake(0, 0, 320, 80);
    UIView * bgView = [[[UIView alloc] initWithFrame:rect] autorelease];
    
    iconView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 60, 70)];
    iconView.image = [UIImage imageNamed:@"pin1.png"];
    
    nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(70, 5, 200, 24)];
    nameLabel.textAlignment = UITextAlignmentLeft;
    nameLabel.backgroundColor = [UIColor clearColor];
    nameLabel.lineBreakMode = UILineBreakModeTailTruncation;
    nameLabel.text = @"地理名称";
    [nameLabel sizeToFit];
    
    addrLabel = [[UILabel alloc] initWithFrame:CGRectMake(70, 34, 200, 24)];
    addrLabel.textAlignment = UITextAlignmentLeft;
    addrLabel.backgroundColor = [UIColor clearColor];
    addrLabel.lineBreakMode = UILineBreakModeHeadTruncation;
    addrLabel.text = @"该处地理位置的具体信息";
    [addrLabel sizeToFit];
    
    [bgView addSubview:iconView];
    [bgView addSubview:nameLabel];
    [bgView addSubview:addrLabel];
    
    
    return bgView;
}

-(AddressForMapModel * )addrModel
{
    
    return _addrModel;
}

-(void)setAddrModel:(AddressForMapModel *)addrModel
{
    
    if (_addrModel != addrModel) {
        [_addrModel release];
        _addrModel =  [addrModel retain];
        
        iconView.image = _addrModel.icon;
        nameLabel.text = _addrModel.addrName;
        addrLabel.text = _addrModel.theAddr;
    }
}








@end
