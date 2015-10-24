//
//  main.m
//  LawyerUp
//
//  Created by Steele on 2015-10-22.
//  Copyright © 2015 Steele. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Lawyer.h"
#import "Client.h"
#import "Associate.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Practice *practice1 = [[Practice alloc] init];
        
        
        Lawyer *lawyer1 = [[Lawyer alloc] initWithName:@"lawyerOne" practice:practice1 practiceType:Family];
        
        Lawyer *lawyer2 = [[Lawyer alloc] initWithName:@"lawyerTwo" practice:practice1 practiceType:Family];
        
        Associate *associate1 = [[Associate alloc] init];
        
        Associate *associate2 = [[Associate alloc] init];
        
        lawyer1.delegate = associate1;
        lawyer2.delegate = associate2;
        
        Client *client1 = [[Client alloc] initWithName:@"ClientOne" problem:@"married" practiceType:Family];
        
        Client *client2 = [[Client alloc] initWithName:@"ClientTwo" problem:@"killed my wife" practiceType:Family];
        
     
        [lawyer1 addClient:client1];
        
        //[lawyer1 getPayableAmountForClient:client1];
        
        [lawyer2 addClient:client2];
        
        //[lawyer2 getPayableAmountForClient:client2];
        
        NSLog(@"%@ will charge %@ $%d",lawyer1.name, client1.name,[lawyer1 getPayableAmountForClient:client1]);
        NSLog(@"%@ will charge %@ $%d",lawyer2.name, client2.name,[lawyer2 getPayableAmountForClient:client2]);
        
    }
    return 0;
}
