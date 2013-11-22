//
//  AWPhrzsr.m
//  Phrzsr
//
//  Created by Ben Lachman on 11/21/13.
//  Copyright (c) 2013 Phrzsr. All rights reserved.
//

#import "AWPhrzsr.h"

@implementation AWPhrzsr

+ (NSString *)phrz {
	return [self phrzForCategory:nil];
}

+ (NSString *)phrzForCategory:(NSString *)categoryName {
	return [self phrzForCategory:categoryName withSubstitutionArguments:nil];

}

+ (NSString *)phrzForCategory:(NSString *)categoryName withSubstitutionArguments:(NSString *)firstArgument, ... NS_REQUIRES_NIL_TERMINATION {
	return @"";

}

+ (NSString *)phrzForURL:(NSURL *)aURL {
	return [self phrzForURL:aURL withSubstitutionArguments:nil];
}

+ (NSString *)phrzForURL:(NSURL *)aURL withSubstitutionArguments:(NSString *)firstArgument, ... NS_REQUIRES_NIL_TERMINATION {
	return @"";
}

@end
