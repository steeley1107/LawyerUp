//
//  Associate.m
//  LawyerUp
//
//  Created by Steele on 2015-10-22.
//  Copyright © 2015 Steele. All rights reserved.
//

#import "Associate.h"
#import "Lawyer.h"
#import "Client.h"

@implementation Associate


- (void)addClientToClientList:(Client *)client forLawyer:(Lawyer *)lawyer {

    [lawyer.clientList addObject:client];
}

- (int)payableAmountForClient:(Client *)client forLawyer:(Lawyer *)lawyer {
    
    int hours;
    
    if ([client.problem length] < 10) {
        hours = 5;
        return hours * [lawyer.rate doubleValue];
    }
    else if ([client.problem length] >= 10 && [client.debugDescription length] <= 20) {
        hours = 10;
        return hours * [lawyer.rate doubleValue];
    }
    else  {
        hours = 25;
        return hours * [lawyer.rate doubleValue];
    }
}

@end
