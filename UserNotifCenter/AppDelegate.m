//
//  AppDelegate.m
//  UserNotifCenter
//
//  Created by Nicolas Cormier on 8/8/12.
//  Copyright (c) 2012 Nicolas Cormier. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSArray* argv = [[NSProcessInfo processInfo] arguments];
 
    if ([argv count] == 3) {
        NSUserNotification* notif = [[NSUserNotification alloc] init];
        notif.title = [argv objectAtIndex:1];  //[NSString stringWithUTF8String:argv[1]];
        notif.informativeText = [argv objectAtIndex:2]; //[NSString stringWithUTF8String:argv[2]];
        [[NSUserNotificationCenter defaultUserNotificationCenter] scheduleNotification:notif];
    }

    [[NSApplication sharedApplication] terminate:self];
    
}

@end
