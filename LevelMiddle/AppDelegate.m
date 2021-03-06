//
//  AppDelegate.m
//  LevelMiddle
//
//  Created by shuo on 13-11-3.
//  Copyright (c) 2013年 胡 文硕. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize dbpath;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    id obj = [_dictController newObject];
    [_dictController addObject:obj];
}

-(IBAction)chooseDBPath:(id)sender {
    NSOpenPanel* panel = [NSOpenPanel openPanel];
    [panel setCanChooseDirectories:YES];
    [panel setCanChooseFiles:NO];
    
    [panel beginWithCompletionHandler:^(NSInteger result){
        if (result == NSFileHandlingPanelOKButton) {
            NSURL*  theDoc = [[panel URLs] objectAtIndex:0];
            NSLog(@"%@", [theDoc absoluteString]);
            self.dbpath = [theDoc absoluteString];
        }
        
    }];
}

@end
