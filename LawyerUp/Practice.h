//
//  Practice.h
//  LawyerUp
//
//  Created by Steele on 2015-10-22.
//  Copyright © 2015 Steele. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Practice : NSObject

typedef NS_ENUM (NSInteger , SpecialtyLaw) {
    Family,
    Patent,
    Criminal,
    Corporate,
};

@property (nonatomic, strong) NSDictionary *rateSheet;
@property (nonatomic, strong) NSString *lawyers;
@property (nonatomic) SpecialtyLaw speciality;
@property (nonatomic, strong) NSNumber *rate;


- (instancetype)initWithRate: (SpecialtyLaw)rate;

@end
