//
//  RileyLinkViewController.m
//  RileyLink
//
//  Created by Pete Schwamb on 7/26/15.
//  Copyright (c) 2015 Pete Schwamb. All rights reserved.
//

#import "RileyLinkStatusViewController.h"

@interface RileyLinkStatusViewController () {
  IBOutlet UILabel *deviceIDLabel;
  IBOutlet UILabel *nameLabel;
}

@end

@implementation RileyLinkStatusViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  deviceIDLabel.text = self.rlRecord.peripheralId;
  nameLabel.text = self.rlRecord.name;
  if (self.rlDevice && self.rlDevice.isConnected) {
    nameLabel.backgroundColor = [UIColor greenColor];
  } else {
    nameLabel.backgroundColor = [UIColor clearColor];
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