//
//  ActivityViewController.m
//  hotShare
//
//  Created by aei on 2017/3/14.
//
//

#import "ActivityViewController.h"

@interface ActivityViewController ()

@end

@implementation ActivityViewController

- (BOOL)_shouldExcludeActivityType:(UIActivity *)activity
{
//    if ([[activity activityType] isEqualToString:@"com.apple.reminders.RemindersEditorExtension"] ||
//        [[activity activityType] isEqualToString:@"com.apple.mobilenotes.SharingExtension"]) {
//        return YES;
//    }
    NSLog(@"activityType:%@/nactivityTitle:%@",[activity activityType],[activity activityTitle]);
    BOOL isWeiXin = [[activity activityType] isEqualToString:@"com.tencent.xin.sharetimeline"];
    BOOL isQQ = [[activity activityType] isEqualToString:@"com.tencent.mqq.ShareExtension"];
    BOOL isGuShiTie = [[activity activityType] isEqualToString:@"org.hotshare.everywhere.shareEx"];
    
    if (isWeiXin || isQQ || isGuShiTie) {
        return  YES;
    }
    return [super _shouldExcludeActivityType:activity];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
