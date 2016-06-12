//
//  InterfaceController.m
//  SDWebImage Watch Demo Extension
//
//  Created by Bogdan on 13/06/16.
//  Copyright © 2016 Dailymotion. All rights reserved.
//

#import "InterfaceController.h"
#import <SDWebImage/SDWebImageManager.h>


@interface InterfaceController()

@property (weak) IBOutlet WKInterfaceImage *imageInterface;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    NSString *urlString = @"http://s3.amazonaws.com/fast-image-cache/demo-images/FICDDemoImage000.jpg";
    [[SDWebImageManager sharedManager] loadImageWithURL:[NSURL URLWithString:urlString] options:0 progress:nil completed:^(UIImage * _Nullable image, NSData * _Nullable data, NSError * _Nullable error, SDImageCacheType cacheType, BOOL finished, NSURL * _Nullable imageURL) {
        self.imageInterface.image = image;
    }];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



