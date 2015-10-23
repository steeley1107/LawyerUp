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
    FamilyLaw,
    PatentLaw,
    CriminalLaw,
    CorporateLaw,
    
};


@property (nonatomic, strong) NSDictionary *rateSheet;
@property (nonatomic, strong) NSString *lawyers;
@property (nonatomic) SpecialtyLaw speciality;

@end
