//
//  CHAEEntry.m
//  Journal_OBJC
//
//  Created by iljoo Chae on 6/22/20.
//  Copyright © 2020 Admin. All rights reserved.
//

#import "CHAEEntry.h"

@implementation CHAEEntry
- (instancetype)initWithTitle:(NSString *)title bodyText:(NSString *)bodyText timestamp:(NSDate *)timestamp
{
    self = [super init];
    if (self) {
        _title = title;
        _bodyText = bodyText;
        _timestamp = timestamp;
    }
    return self;
}
@end
