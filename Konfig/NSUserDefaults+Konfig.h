//
//  NSUserDefaults+Konfig.h
//  Konfig
//
//  Created by k on 12/27/13.
//  Copyright (c) 2013 iksnae. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults (Konfig)
- (void)registerKonfigWithURL:(NSURL*)konfigURL;
- (void)registerKonfigWithURL:(NSURL*)konfigURL
                      success:(void (^)(NSDictionary *defaults))success
                      failure:(void (^)(NSError *error))failure;
@end
