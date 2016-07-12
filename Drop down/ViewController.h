//
//  ViewController.h
//  Drop down
//
//  Created by Jeremiah on 10/09/15.
//  Copyright (c) 2015 Jeremiah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
- (IBAction)showButton:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *showButton;

@property (strong, nonatomic) IBOutlet UILabel *showColor;

@property (strong, nonatomic) IBOutlet UITableView *colorTableView;

@end

