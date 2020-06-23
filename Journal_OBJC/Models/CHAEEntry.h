//
//  CHAEEntry.h
//  Journal_OBJC
//
//  Created by iljoo Chae on 6/22/20.
//  Copyright © 2020 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CHAEEntry : NSObject
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString * bodyText;
@property (nonatomic, copy) NSDate *timestamp;

- (instancetype) initWithTitle:(NSString *)title bodyText:(NSString *)bodyText timestamp:(NSDate *)timestamp;

@end

NS_ASSUME_NONNULL_END
