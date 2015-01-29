//
//  TBHelpers.m
//  TeamplateProject
//
//  Created by thuydd on 1/29/15.
//  Copyright (c) 2015 Qsoft. All rights reserved.
//

#import "TBHelpers.h"

@implementation TBHelpers

/**
 *  sharedInstance
 *
 *  @return instancetype
 */
+ (instancetype)sharedInstance
{
    static TBHelpers *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[TBHelpers alloc] init];
    });
    return sharedInstance;
}

@end
