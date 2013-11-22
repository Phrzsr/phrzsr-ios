//
//  AWPhrzsr.m
//  Phrzsr
//
//  Created by Ben Lachman on 11/21/13.
//  Copyright (c) 2013 Phrzsr. All rights reserved.
//

#import "Phrzsr.h"

@implementation Phrzsr

+ (NSString *)phrz {
	return [self phrzForCategory:nil];
}

// Category

+ (NSString *)phrzForCategory:(NSString *)categoryName {
	return [self phrzForCategory:categoryName withSubstitutionArguments:nil];
}

+ (NSString *)phrzForCategory:(NSString *)categoryName withSubstitutionArguments:(NSArray *)arguments {
	NSURL *aURL = [self URLforCategory:categoryName];

	NSError *error;

	NSString *fileContents = [[NSString alloc] initWithContentsOfURL:aURL usedEncoding:0 error:&error];

    NSString *phrz = [self phrzForFileContents:fileContents withSubstitutionArguments:arguments];

	return phrz;
}

// URL handling

+ (NSString *)phrzForURL:(NSURL *)aURL {
	return [self phrzForURL:aURL withSubstitutionArguments:nil];
}

+ (NSString *)phrzForURL:(NSURL *)aURL withSubstitutionArguments:(NSArray *)arguments {
	// read URL
	NSError *error;

	NSString *fileContents = [[NSString alloc] initWithContentsOfURL:aURL usedEncoding:0 error:&error];

	return [self phrzForFileContents:fileContents withSubstitutionArguments:arguments];
}

// Path handling

+ (NSString *)phrzForPath:(NSString *)filePath {
	return [self phrzForPath:filePath withSubstitutionArguments:nil];
}

+ (NSString *)phrzForPath:(NSString *)filePath withSubstitutionArguments:(NSArray *)arguments {
	//read path

	NSError *error;

	NSString *fileContents = [[NSString alloc] initWithContentsOfFile:filePath usedEncoding:0 error:&error];

	return [self phrzForFileContents:fileContents withSubstitutionArguments:arguments];
}

+ (NSString *)phrzForFileContents:(NSString *)contents withSubstitutionArguments:(NSArray *)arguments {
	NSArray *lines = [contents componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];

	srandom(time(nil));

	if( lines.count )
		return lines[(random() % lines.count)];

	return @"";
}

+ (NSURL *)URLforCategory:(NSString *)categoryName {
	return [NSURL URLWithString:@"https://raw.github.com/Phrzsr/phrzsr/master/motivational"];
}

@end
