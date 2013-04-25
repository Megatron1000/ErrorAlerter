//
//  ErrorAlert.h
//
//  Created by Mark Bridges on 26/11/2012.
//  Copyright (c) 2012 Mark Bridges. All rights reserved.
//
//
//  You are hereby granted to use this however you want.
//  This software is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  

#import <Foundation/Foundation.h>

@interface ErrorAlert : NSObject

+(void)showError:(NSError*)error;
+(void)showErrorString:(NSString*)error;


@end
