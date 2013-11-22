//
//  AWPhrzsr.h
//  Phrzsr
//
//  Created by Ben Lachman on 11/21/13.
//  Copyright (c) 2013 Phrzsr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AWPhrzsr : NSObject

+ (NSString *)phrz;

+ (NSString *)phrzForCategory:(NSString *)categoryName;
+ (NSString *)phrzForCategory:(NSString *)categoryName withSubstitutionArguments:(NSString *)firstArgument,... NS_REQUIRES_NIL_TERMINATION;

+ (NSString *)phrzForURL:(NSURL *)aURL;
+ (NSString *)phrzForURL:(NSURL *)aURL withSubstitutionArguments:(NSString *)firstArgument,... NS_REQUIRES_NIL_TERMINATION;

@end
