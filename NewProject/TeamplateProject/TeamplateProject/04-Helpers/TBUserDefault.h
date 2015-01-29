//
//  TBUserDefault.h
//  TeamplateProject
//
//  Created by thuydd on 1/29/15.
//  Copyright (c) 2015 QsoftVietNam. All rights reserved.
//

#import <Foundation/Foundation.h>

#define userDefaultSet(anObject,aKey) [TBUserDefault setObject:anObject forKey:aKey];
#define userDefaultGet(aKey) [TBUserDefault objectForKey:aKey];
#define userDefaultRemove(aKey) [TBUserDefault removeObjectForKey:aKey];

@interface TBUserDefault : NSObject

/**
 *  setObject
 *
 *  @param anObject id
 *  @param aKey     NSString
 */
+ (void)setObject:(id)anObject forKey:(NSString *)aKey;

/**
 *  objectForKey
 *
 *  @param aKey NSString
 *
 *  @return NSData
 */
+ (id)objectForKey:(NSString *)aKey;

/**
 *  removeObjectForKey
 *
 *  @param aKey NSString
 */
+ (void)removeObjectForKey:(NSString *)aKey;

@end

#pragma mark - Application
@interface TBUserDefault (Application)

//TODO: customize here

@end
