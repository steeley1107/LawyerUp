//
//  Lawyer.h
//  LawyerUp
//
//  Created by Steele on 2015-10-22.
//  Copyright © 2015 Steele. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Practice.h"
#import "Associate.h"
//#import "Client.h"

@interface Lawyer : NSObject <AssociateDelegate>

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *rate;
@property (nonatomic, strong) NSMutableArray *clientList;
@property (nonatomic, strong) Practice *practice;
@property (nonatomic,strong) id <AssociateDelegate> delegate;


- (instancetype)initWithName: (NSString *)name practice:(Practice *)practice practiceType:(SpecialtyLaw)practiceType;

-(void)addClient:(Client *)client;

-(int)getPayableAmountForClient:(Client *)client;


@end
