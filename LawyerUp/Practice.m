//
//  Practice.m
//  LawyerUp
//
//  Created by Steele on 2015-10-22.
//  Copyright © 2015 Steele. All rights reserved.
//

#import "Practice.h"

@implementation Practice

- (instancetype)initWithRate: (SpecialtyLaw)rate
{
    self = [super init];
    if (self) {
        self.rateSheet = @{
                           [NSNumber numberWithInt:Family]: @200.00,
                           [NSNumber numberWithInt:Patent]: @380.50,
                           [NSNumber numberWithInt:Criminal]: @409.99,
                           [NSNumber numberWithInt:Corporate]: @400.00,
                           };
        
        if ([self.rateSheet objectForKey:[NSNumber numberWithInt:Family]]) {
            self.rate = [self.rateSheet objectForKey:[NSNumber numberWithInt:Family]];
        }
        else if ([self.rateSheet objectForKey:[NSNumber numberWithInt:Patent]]) {
            self.rate = [self.rateSheet objectForKey:[NSNumber numberWithInt:Patent]];
            
        }
        else if ([self.rateSheet objectForKey:[NSNumber numberWithInt:Criminal]]) {
            self.rate = [self.rateSheet objectForKey:[NSNumber numberWithInt:Criminal]];
        }
        else if ([self.rateSheet objectForKey:[NSNumber numberWithInt:Corporate]]) {
            self.rate = [self.rateSheet objectForKey:[NSNumber numberWithInt:Corporate]];
        }


        
        
    }
    return self;
}






@end
