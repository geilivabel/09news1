//
//  CZHeadLineController.m
//  09news1
//
//  Created by apple on 16/3/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "CZHeadLineController.h"
#import "CZHeadLineCell.h"
#import "CZHttpManager.h"
@interface CZHeadLineController ()
@property (nonatomic,strong)NSArray *data;
@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *layout;

@end

@implementation CZHeadLineController

static NSString * const reuseIdentifier = @"HeadLine";

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setView];
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}

-(void)setView
{
    //设置背景颜色
    self.collectionView.backgroundColor=[UIColor whiteColor];
    //设置大小
    self.layout.itemSize=self.collectionView.bounds.size;
    //设置滚动方法
    self.layout.scrollDirection=UICollectionViewScrollDirectionHorizontal;
    //设置分页
    self.collectionView.pagingEnabled=YES;
    //设置间隔
    self.layout.minimumLineSpacing=0;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.data.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //获取cell
    CZHeadLineCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    //设置分页
    cell.tag=indexPath.row;
    //设置数据
    cell.headline=self.data[indexPath.row];
    return cell;
}
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
   
}
@end
