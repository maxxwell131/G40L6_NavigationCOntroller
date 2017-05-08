 //
//  CategoryDetailViewController.m
//  G40L6_NavigationCOntroller
//
//  Created by admin on 5/8/17.
//  Copyright © 2017 admin. All rights reserved.
//

#import "CategoryDetailViewController.h"

@interface CategoryDetailViewController ()

@end

@implementation CategoryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = self.selectedCategoryName;
    
    if ([self.navigationItem.title isEqualToString:@"Cats"]) {
        self.selectedCategoryIMG.image = [UIImage imageNamed:@"cat.jpg"];
    } else if ([self.navigationItem.title isEqualToString:@"Birds"]) {
        self.selectedCategoryIMG.image = [UIImage imageNamed:@"bird.jpeg"];
    } else if ([self.navigationItem.title isEqualToString:@"Dogs"]) {
        self.selectedCategoryIMG.image = [UIImage imageNamed:@"dog.jpg"];
    } else if ([self.navigationItem.title isEqualToString:@"Fishs"]) {
        self.selectedCategoryIMG.image = [UIImage imageNamed:@"fish.png"];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
