//
//  ViewController.m
//  ex2-1-10
//
//  Created by 佐野浩代 on 2017/01/18.
//  Copyright © 2017年 佐野浩代. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController{
    NSArray *titles;
    NSArray *images;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return titles.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc]    initWithStyle:UITableViewCellStyleDefault
                                                      reuseIdentifier:@"Cell"
                             ];
    cell.textLabel.numberOfLines = 0;
    cell.textLabel.lineBreakMode = NSLineBreakByCharWrapping;
    
    
    cell.imageView.image = [UIImage imageNamed:images[indexPath.row]];
    cell.textLabel.text = titles[indexPath.row];
    return cell;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *path = [bundle pathForResource:@"Property List" ofType:@"plist"];
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:path];
   
    
    titles = [dic objectForKey:@"names"];
    images = [dic objectForKey:@"images"];
    
    _tableView.estimatedRowHeight = 0;
    _tableView.rowHeight = UITableViewAutomaticDimension;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
