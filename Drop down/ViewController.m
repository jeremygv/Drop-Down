//
//  ViewController.m
//  Drop down
//
//  Created by Jeremiah on 10/09/15.
//  Copyright (c) 2015 Jeremiah. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *colors;
    UITableViewCell *cell;
}



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.colorTableView.tableFooterView =[[UIView alloc]initWithFrame:CGRectZero];
    self.colorTableView.hidden=YES;
    colors =[[NSMutableArray alloc]initWithObjects:@"Red",@"Blue",@"Green",nil];
 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showButton:(id)sender {
    self.colorTableView.hidden=NO;
    
//    if (_showButton.tag==0) {
//        _showButton.tag = 1;
//        self.colorTableView.hidden = NO;
//        [sender setTitle:@"▲" forState:UIControlStateNormal];
//    } else {
//        _showButton.tag = 0;
//        self.colorTableView.hidden = YES;
//        [sender setTitle:@"▼" forState:UIControlStateNormal];
//    }
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50.0;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return colors.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell =[tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.textLabel.text =[colors objectAtIndex:indexPath.row];
       return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.textLabel.text=[colors objectAtIndex:indexPath.row];
   _showColor.text =cell.textLabel.text;
    //self.showButton.tag = 1;
   // _colorTableView.hidden=YES;
    switch (indexPath.row) {
        case 0:
            self.view.backgroundColor =[UIColor redColor];
            _showColor.backgroundColor=[UIColor redColor];
         break;
         case 1:
            self.view.backgroundColor =[UIColor blueColor];
            _showColor.backgroundColor=[UIColor blueColor];
            break;
            case 2:
            self.view.backgroundColor =[UIColor greenColor];
            _showColor.backgroundColor=[UIColor greenColor];
            break;

        default:
            break;
    }
    self.colorTableView.hidden=YES;
    [self.colorTableView reloadData];
   // [self.showButton setTitle:@"▼" forState:UIControlStateNormal];
    
    
}


@end
