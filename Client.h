//
//  Client.h
//  LawyerUp
//
//  Created by Steele on 2015-10-22.
//  Copyright © 2015 Steele. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Practice.h"

@interface Client : NSObject 
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *problem;
@property (nonatomic, strong) NSNumber *rate ;
@property (nonatomic, strong) Practice *practice;


- (instancetype)initWithName: (NSString *)name problem:(NSString *)problem practiceType:(SpecialtyLaw)practiceType;

@end
