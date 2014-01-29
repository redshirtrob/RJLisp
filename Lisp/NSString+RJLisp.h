//
//  NSString+RJLisp.h
//  Lisp
//
//  Created by Robert Jones on 1/20/14.
//  Copyright (c) 2014 Robert Jones. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (RJLisp)

- (NSString *)encodeBackslash;
- (NSString *)decodeBackslash;

@end
