//
//  ErrorAlert.m
//
//  Created by Mark Bridges on 26/11/2012.
//  Copyright (c) 2012 Mark Bridges. All rights reserved.
//
//
//  You are hereby granted to use this however you want.
//  This software is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//

#import "ErrorAlert.h"

@implementation ErrorAlert

+(void)showError:(NSError *)error{
    [self performSelectorOnMainThread:@selector(showErrorOnMainThread:) withObject:error waitUntilDone:FALSE];
}

+(void)showErrorOnMainThread:(NSError*)error{
    NSString *message = [NSString stringWithFormat:@"Description: %@",error.localizedDescription];
    
    if (error.localizedFailureReason) {
        message = [NSString stringWithFormat:@"%@\nReason: %@", message, error.localizedDescription];
    }
    if (error.localizedRecoverySuggestion) {
        message = [NSString stringWithFormat:@"%@\nRecovery Suggestion: %@", message, error.localizedRecoverySuggestion];
    }
    
    UIAlertView *errorAlert = [[UIAlertView alloc]initWithTitle:@"A Glitch Has Occured" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    
    [errorAlert show];
    NSLog(@"Error %@",message);
}

+(void)showErrorString:(NSString*)error{
    [self performSelectorOnMainThread:@selector(showErrorStringOnMainThread:) withObject:error waitUntilDone:FALSE];
}

+(void)showErrorStringOnMainThread:(NSString*)error{
    UIAlertView *errorAlert = [[UIAlertView alloc]initWithTitle:@"Error Occured" message:error delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [errorAlert show];
    NSLog(@"Error %@",error);
}

@end
