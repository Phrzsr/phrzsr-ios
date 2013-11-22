//
//  AWPhrzsr.h
//  Phrzsr
//
//  Created by Ben Lachman on 11/21/13.
//  Copyright (c) 2013 Phrzsr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Phrzsr : NSObject

+ (NSString *)phrz;

+ (NSString *)phrzForCategory:(NSString *)categoryName;
+ (NSString *)phrzForCategory:(NSString *)categoryName withSubstitutionArguments:(NSArray *)arguments;

+ (NSString *)phrzForURL:(NSURL *)aURL;
+ (NSString *)phrzForURL:(NSURL *)aURL withSubstitutionArguments:(NSArray *)arguments;

+ (NSString *)phrzForPath:(NSString *)filePath;
+ (NSString *)phrzForPath:(NSString *)filePath withSubstitutionArguments:(NSArray *)arguments;

@end
