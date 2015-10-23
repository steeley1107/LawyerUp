//
//  Lawyer.m
//  LawyerUp
//
//  Created by Steele on 2015-10-22.
//  Copyright © 2015 Steele. All rights reserved.
//

#import "Lawyer.h"

@implementation Lawyer


- (instancetype)initWithName: (NSString *)name practice:(Practice *)practice practiceType:(SpecialtyLaw)practiceType {
    self = [super init];
    if (self) {
        _name = name;
        _practice =practice;
        _practice = [[Practice alloc] initWithRate:practiceType];
        _rate = _practice.rate;

        
    }
    return self;
}

-(void)addClient:(Client *)client {

    [self.delegate addClientToClientList:client forLawyer:self];
}


-(int)getPayableAmountForClient:(Client *)client {

    return [self.delegate payableAmountForClient:client forLawyer:self];
    
}



@end
