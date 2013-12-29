//
//  NSUserDefaults+Konfig.m
//  Konfig
//
//  Created by k on 12/27/13.
//  Copyright (c) 2013 iksnae. All rights reserved.
//

#import "NSUserDefaults+Konfig.h"

@implementation NSUserDefaults (Konfig)

- (void)registerKonfigWithURL:(NSURL*)konfigURL
{
    NSURLRequest * req = [NSURLRequest requestWithURL:konfigURL];
    [NSURLConnection sendAsynchronousRequest:req queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        NSHTTPURLResponse * httpResponse = (NSHTTPURLResponse *)response;
        if (httpResponse.statusCode == 200) {
            NSError * err = nil;
            NSDictionary * jsonDict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&err];
            if (!err) {
                [self setValuesForKeysWithDictionary:jsonDict];
                [self synchronize];
            }
        }
    }];
}

- (void)registerKonfigWithURL:(NSURL *)konfigURL success:(void (^)(NSDictionary *))success failure:(void (^)(NSError *))failure
{
    NSURLRequest * req = [NSURLRequest requestWithURL:konfigURL];
    [NSURLConnection sendAsynchronousRequest:req queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        
        if (connectionError) {
            if (failure) {
                failure(connectionError);
            }
        }
        NSHTTPURLResponse * httpResponse = (NSHTTPURLResponse *)response;
        if (httpResponse.statusCode == 200) {
            NSError * err = nil;
            NSDictionary * jsonDict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&err];
            if (!err) {
                [self setValuesForKeysWithDictionary:jsonDict];
                [self synchronize];
                if (success) {
                    success(jsonDict);
                }
            }else{
                if (failure) {
                    failure(err);
                }
            }
        }
    }];
}

@end
