//
//  Practice.m
//  LawyerUp
//
//  Created by Steele on 2015-10-22.
//  Copyright © 2015 Steele. All rights reserved.
//

#import "Practice.h"

@implementation Practice

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.rateSheet = @{
                           @"Family Law": @200.00,
                           @"Patent Law": @380.50,
                           @"Criminal Law": @409.99,
                           @"Corporate Law": @400.00,
                           };
        
        
    }
    return self;
}






@end
