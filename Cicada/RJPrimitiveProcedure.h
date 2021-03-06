//
//  RJPrimitiveProcedure.h
//  Cicada
//
//  Created by Robert Jones on 2/4/14.
//  Copyright (c) 2014 Robert Jones. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NSError+RJScheme.h"

#define COPY_ERROR(e, t)     \
    do {                     \
        if (e && t) {        \
            *e = t;          \
        }                    \
    }                        \
    while (0)

@interface RJPrimitiveProcedure : NSObject

- (instancetype)initWithName:(NSString *)name;
- (id)evalWithValues:(NSArray *)values error:(NSError **)error;
- (NSString *)stringValue;

@end
