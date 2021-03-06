//
//  RJMinusProcedure.m
//  Cicada
//
//  Created by Robert Jones on 2/4/14.
//  Copyright (c) 2014 Robert Jones. All rights reserved.
//

#import "RJScheme.h"
#import "RJMinusProcedure.h"

@implementation RJMinusProcedure

- (id)evalWithValues:(NSArray *)values error:(NSError **)error
{
    NSError *tmpError = nil;

    float v = 0;
    if ([values count]) {
        if ([values[0] isKindOfClass:[NSNumber class]]) {
            v = [values count] == 1 ? -[values[0] floatValue] : [values[0] floatValue];
            for (NSInteger i = 1; i < [values count]; i++) {
                if ([values[i] isKindOfClass:[NSNumber class]]) {
                    v -= [values[i] floatValue];
                }
                else {
                    tmpError = [NSError rjschemeEvalErrorWithString:[NSString stringWithFormat:@"Error: expected number but got %@", [RJScheme toString:values[i]]]];
                    break;
                }
            }
        }
        else {
            tmpError = [NSError rjschemeEvalErrorWithString:[NSString stringWithFormat:@"Error: expected number but got %@", [RJScheme toString:values[0]]]];
        }
    }
    else {
        tmpError = [NSError rjschemeTooFewArgumentsErrorForSymbol:@"-" atLeast:1 got:0];
    }

    COPY_ERROR(error, tmpError);
    return @(v);
}

@end
