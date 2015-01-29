//
//  AppDelegate.h
//  NewProject
//
//  Created by thuydd on 1/14/15.
//  Copyright (c) 2015 Qsoft. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet NSTextField *lbNewName;
@property (weak) IBOutlet NSProgressIndicator *pgvLoading;
- (IBAction)clickBtnGenerate:(id)sender;

@end

