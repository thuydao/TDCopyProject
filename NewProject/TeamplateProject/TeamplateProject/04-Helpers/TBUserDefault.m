//
//  TBUserDefault.m
//  TeamplateProject
//
//  Created by thuydd on 1/29/15.
//  Copyright (c) 2015 QsoftVietNam. All rights reserved.
//

#import "TBUserDefault.h"

@implementation TBUserDefault

/**
 *  setObject
 *
 *  @param anObject id
 *  @param aKey     NSString
 */
+ (void)setObject:(id)anObject forKey:(NSString *)aKey
{
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:anObject];
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setObject:data forKey:aKey];
    [ud synchronize];
}

/**
 *  objectForKey
 *
 *  @param aKey NSString
 *
 *  @return NSData
 */
+ (id)objectForKey:(NSString *)aKey
{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    if ( [[ud dictionaryRepresentation].allKeys containsObject:aKey] )
    {
        NSData *data = [NSKeyedUnarchiver unarchiveObjectWithData:[ud objectForKey:aKey]];
        
        return data;
    }
    return nil;
}

/**
 *  removeObjectForKey
 *
 *  @param aKey NSString
 */
+ (void)removeObjectForKey:(NSString *)aKey
{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud removeObjectForKey:aKey];
    [ud synchronize];
}

@end

#pragma mark - Application

@implementation TBUserDefault (Application)

//TODO: customize here

@end
