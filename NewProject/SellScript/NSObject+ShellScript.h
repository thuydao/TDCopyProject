//
//  NSObject+ShellScript.h
//  NewProject
//
//  Created by thuydd on 1/14/15.
//  Copyright (c) 2015 Qsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (ShellScript)

+ (void)runShellScriptWithName:(NSString *)name withNewName:(NSString *)newname;

@end
