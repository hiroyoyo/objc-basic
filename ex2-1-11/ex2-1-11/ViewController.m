//
//  ViewController.m
//  ex2-1-11
//
//  Created by 佐野浩代 on 2017/01/18.
//  Copyright © 2017年 佐野浩代. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *table;


@end


@implementation ViewController{

    NSDictionary *dog;
    NSDictionary *cat;
    NSDictionary *dic;
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return dic.count;
    
}

-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{

    return dic.allKeys[section];

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    switch (section) {
        case 0:
            return [dog[@"names"]count];
            break;
        case 1:
            return [cat[@"names"]count];
            break;
            
            
        default:
            return 0;
            break;
    }
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc]    initWithStyle:UITableViewCellStyleDefault
                                                      reuseIdentifier:@"Cell"
                             ];
    cell.textLabel.numberOfLines = 0;
    cell.textLabel.lineBreakMode = NSLineBreakByCharWrapping;
    
    
    NSString *name;
    UIImage *image;
    
    
    switch (indexPath.section) {
        case 0:
            name = cat[@"names"][indexPath.row];
            image = [UIImage imageNamed: cat[@"images"][indexPath.row]];
            break;
        case 1:
            name = dog[@"names"][indexPath.row];
            image = [UIImage imageNamed: dog[@"images"][indexPath.row]];
            break;
            
        default:
            break;
   
    }

    
    cell.imageView.image = image;
    cell.textLabel.text =name;
    return cell;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    _table.delegate = self;
    _table.dataSource = self;
    
    NSBundle *bundle = [NSBundle mainBundle];
    
    NSString *path = [bundle pathForResource:@"Property List" ofType:@"plist"];
    
    dic = [NSDictionary dictionaryWithContentsOfFile:path];
    dog = [dic objectForKey:@"dog"];
    cat = [dic objectForKey:@"cat"];
    
    _table.estimatedRowHeight = 0;
    _table.rowHeight = UITableViewAutomaticDimension;

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
