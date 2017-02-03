//
//  ViewController.m
//  ex2-1-12
//
//  Created by 佐野浩代 on 2017/02/03.
//  Copyright © 2017年 佐野浩代. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *cView;

@property NSArray *image;
@property  CGFloat cellSize;

@end

@implementation ViewController
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section{
    return _image.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell;
    cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell"
                                                     forIndexPath:indexPath];
//    UIImageView *imageView = [cell.contentView viewWithTag:1];
//    imageView.image = [UIImage imageNamed:_image[indexPath.row]];
    UIImageView *imageView  = [[UIImageView alloc] initWithImage:[UIImage imageNamed:_image[indexPath.row]]];
    CGRect frame = imageView.frame;
    frame.size.width = _cellSize;
    frame.size.height = _cellSize;
    imageView.frame = frame;
    
    imageView.clipsToBounds = YES;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    [cell addSubview:imageView];
    return cell;
}
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    _cellSize= self.cView.frame.size.width/3-3*3;
    return CGSizeMake(_cellSize, _cellSize);
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [super viewDidLoad];
    _cView.dataSource = self;
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *path = [bundle pathForResource:@"Property List" ofType:@"plist"];
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:path];
    _image = [dic objectForKey:@"images"];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
