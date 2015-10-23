//
//  Lawyer.m
//  LawyerUp
//
//  Created by Steele on 2015-10-22.
//  Copyright © 2015 Steele. All rights reserved.
//

#import "Lawyer.h"

@implementation Layer


- (instancetype)initWithName: (NSString *)name rate:(NSNumber *)rate {
    self = [super init];
    if (self) {
        _name = name;
        _rate = rate;
        
        
    }
    return self;
}

@end
