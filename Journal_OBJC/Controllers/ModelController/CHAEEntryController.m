//
//  CHAEEntryController.m
//  Journal_OBJC
//
//  Created by iljoo Chae on 6/22/20.
//  Copyright © 2020 Admin. All rights reserved.
//

#import "CHAEEntryController.h"
#import "CHAEEntry.h"

@implementation CHAEEntryController
+ (CHAEEntryController *)shared {
    static CHAEEntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [CHAEEntryController new];
    });
    return shared;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        _entries = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addEntry:(NSString *)title bodyText:(NSString *)bodyText
{
    CHAEEntry *newEntry = [[CHAEEntry alloc] initWithTitle:title bodyText:bodyText timestamp:[NSDate now]];
    [_entries addObject:newEntry];
}

-(void)removeEntry:(CHAEEntry *)entry
    {
        [_entries removeObject:entry];
    }

- (void)updateEntry:(CHAEEntry *)entry title:(NSString *)title bodyText:(NSString *)bodyText
{
    entry.title = title;
    entry.bodyText = bodyText;
    
}




@end
