//
//  CZHeadLineCell.m
//  09news1
//
//  Created by apple on 16/3/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "CZHeadLineCell.h"
#import "CZHeadLineModel.h"
#import <UIImageView+WebCache.h>
@interface CZHeadLineCell()
//图片
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
/**
 *  文字标题
 */
@property (weak, nonatomic) IBOutlet UILabel *lable;
//分页
@property (weak, nonatomic) IBOutlet UIPageControl *pagecontrol;

@end

@implementation CZHeadLineCell

-(void)setHeadline:(CZHeadLineModel *)headline
{
    _headline=headline;
    //设置图片
    [self.imageView sd_setImageWithURL:[NSURL URLWithString:headline.imgsrc]];
    //设置标题
    self.lable.text=headline.title;
    //设置分页
    self.pagecontrol.currentPage=self.tag;
}
@end
