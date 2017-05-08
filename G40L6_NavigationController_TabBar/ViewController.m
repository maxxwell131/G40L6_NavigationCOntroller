//
//  ViewController.m
//  G40L6_NavigationCOntroller
//
//  Created by admin on 5/8/17.
//  Copyright © 2017 admin. All rights reserved.
//

#import "ViewController.h"
#import "CategoryDetailViewController.h"

NSString *const kShowCategory = @"showCategory";

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.destinationViewController isMemberOfClass:[CategoryDetailViewController class]]) {
        CategoryDetailViewController *cdvc = segue.destinationViewController;
        cdvc.selectedCategoryName = [(UIButton*)sender currentTitle];
        //NSLog(@"sender - %@, title - %@", sender, [(UIButton*)sender currentTitle]);
    }
}

- (IBAction)showObjects:(UIButton *)sender {
    [self performSegueWithIdentifier:kShowCategory
 sender:sender];
}

@end
