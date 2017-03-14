//
//  ActivityViewController.h
//  hotShare
//
//  Created by aei on 2017/3/14.
//
//

#import <UIKit/UIKit.h>

@interface UIActivityViewController (Private)

- (BOOL)_shouldExcludeActivityType:(UIActivity*)activity;

@end

@interface ActivityViewController : UIActivityViewController

@end
