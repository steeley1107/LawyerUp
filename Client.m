//
//  Client.m
//  LawyerUp
//
//  Created by Steele on 2015-10-22.
//  Copyright © 2015 Steele. All rights reserved.
//

#import "Client.h"

@implementation Client



- (instancetype)initWithName: (NSString *)name problem:(NSString *)problem practiceType:(SpecialtyLaw)practiceType {
    self = [super init];
    if (self) {
        _name = name;
        _problem = problem;
        _practice = [[Practice alloc] initWithRate:practiceType];
        _rate = _practice.rate;
        
    }
    return self;
}





@end
