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

    if ([client.debugDescription length] > 10) {
        hours = 5;
    }
    else if ([client.debugDescription length] > 10 && [client.debugDescription length] < 20) {
        hours = 10;
    }
    else if ([client.debugDescription length] <= 20) {
        hours = 25;
    }

    int cost = (int)lawyer.rate * hours;
    
    return cost;
}

@end
