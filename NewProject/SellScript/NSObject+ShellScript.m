//
//  NSObject+ShellScript.m
//  NewProject
//
//  Created by thuydd on 1/14/15.
//  Copyright (c) 2015 Qsoft. All rights reserved.
//

#import "NSObject+ShellScript.h"

@implementation NSObject (ShellScript)

+ (void)runShellScriptWithName:(NSString *)name withNewName:(NSString *)newname {
    NSString *filepath = [[NSBundle mainBundle] pathForResource:@"TeamplateProject" ofType:@"zip"];
    NSString *newfilePath = [filepath stringByReplacingOccurrencesOfString:@"/TeamplateProject.zip" withString:@""];
    
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    NSString *newdestination = [NSString stringWithFormat:@"%@/TDNewProject", [paths objectAtIndex:0]];
    
    NSTask *task = [[NSTask alloc] init];
    [task setLaunchPath:@"/bin/sh"];
    [task setArguments:[NSArray arrayWithObjects:[[NSBundle mainBundle] pathForResource:name ofType:@"sh"], @"TeamplateProject", newname, newfilePath, newdestination, nil]];
    [task launch];
}

@end
