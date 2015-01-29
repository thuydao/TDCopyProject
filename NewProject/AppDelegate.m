//
//  AppDelegate.m
//  NewProject
//
//  Created by thuydd on 1/14/15.
//  Copyright (c) 2015 Qsoft. All rights reserved.
//

#import "AppDelegate.h"
#import "NSObject+ShellScript.h"
#import "SSZipArchive.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    [self.lbNewName becomeFirstResponder];
    self.pgvLoading.hidden = YES;
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)clickBtnGenerate:(id)sender {
    NSString *name = [self.lbNewName stringValue];
    [name stringByReplacingOccurrencesOfString:@" " withString:@""];
    if (![name isEqualToString:@""]) {
        self.pgvLoading.hidden = NO;
        [self.pgvLoading startAnimation:nil];
        
        NSString *filepath = [[NSBundle mainBundle] pathForResource:@"TeamplateProject" ofType:@"zip"];
        
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        
        NSString *newDirectory = [NSString stringWithFormat:@"%@/TDNewProject", [paths objectAtIndex:0]];
        
        
        // Check if the directory already exists
        if (![[NSFileManager defaultManager] fileExistsAtPath:newDirectory]) {
            // Directory does not exist so create it
            [[NSFileManager defaultManager] createDirectoryAtPath:newDirectory withIntermediateDirectories:YES attributes:nil error:nil];
        }
        NSString *newfilePath = [filepath stringByReplacingOccurrencesOfString:@"/TeamplateProject.zip" withString:@""];
        [SSZipArchive unzipFileAtPath:filepath toDestination:newfilePath];
        
        [NSObject runShellScriptWithName:@"rename" withNewName:name];
        
        
        
        // Delay execution of my block for 3 seconds.
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 10 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
            self.pgvLoading.hidden = YES;
            [self.pgvLoading stopAnimation:nil];
        });
    }
}

@end
