//
//  CHAEEntryController.h
//  Journal_OBJC
//
//  Created by iljoo Chae on 6/22/20.
//  Copyright © 2020 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CHAEEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface CHAEEntryController : NSObject
//SOT
@property (nonatomic, strong) NSMutableArray *entries;

+(CHAEEntryController *) shared;

- (void) addEntry:(NSString *)title bodyText:(NSString *)bodyText;
//- (void) removeEntry:(CHAEEntry *)entry title:(NSString *)title bodyText:(NSString *)bodyText;
- (void) updateEntry: (CHAEEntry *)entry title:(NSString *)title bodyText:(NSString *)bodyText;
-(void) removeEntry:(CHAEEntry *)entry;

@end

NS_ASSUME_NONNULL_END
