//
//  EntryDetailViewController.h
//  Journal_OBJC
//
//  Created by iljoo Chae on 6/22/20.
//  Copyright © 2020 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CHAEEntryController.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;

//For save data

@property (nonatomic, retain)NSFileManager *homeDir;
@property (nonatomic, retain)NSString *filename;
@property(nonatomic, retain)NSString *filepath;

-(NSString *) GetDocumentDirectory;
-(void)WriteToStringFile:(NSMutableString *)textToWrite;
-(NSString *) readFromFile;
-(NSString *) setFilename;

//For save data


@property (strong, nonatomic) CHAEEntry *entry;

- (void)updateWithEntry:(CHAEEntry *)entry;

- (IBAction)resetBtnTapped:(UIButton *)sender;

- (IBAction)saveBtnTapped:(UIButton *)sender;


@end

NS_ASSUME_NONNULL_END
