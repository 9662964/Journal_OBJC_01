//
//  EntryDetailViewController.m
//  Journal_OBJC
//
//  Created by iljoo Chae on 6/22/20.
//  Copyright © 2020 Admin. All rights reserved.
//

#import "EntryDetailViewController.h"
#import "CHAEEntryController.h"


@interface EntryDetailViewController () <UITextFieldDelegate,UITextViewDelegate>

@end

@implementation EntryDetailViewController

//For save data





//For save data


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.titleTextField.delegate = self;
    self.bodyTextView.delegate = self;
    
    
    //Save data
//    NSString *stringKey = [[NSUserDefaults standardUserDefaults]stringForKey:@"jounalTitle"];
//    
//    _titleTextField.text = stringKey;
    //Save data

    
    
    
    [self updateWithEntry:_entry];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}



-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if([text isEqualToString:@"\n"])
        [textView resignFirstResponder];
    return YES;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (void)updateWithEntry:(CHAEEntry *)entry
{
    _titleTextField.text = entry.title;
    _bodyTextView.text = entry.bodyText;

}


- (IBAction)resetBtnTapped:(UIButton *)sender {
    _bodyTextView.text = @"";
    _titleTextField.text = @"";
}

- (IBAction)saveBtnTapped:(UIButton *)sender {
    
    if (_entry) {
        [CHAEEntryController.shared updateEntry:_entry title:_titleTextField.text bodyText:_bodyTextView.text];
    }else{
        [CHAEEntryController.shared addEntry:_titleTextField.text bodyText:_bodyTextView.text];
    }

    
    //Save data

//    NSString *textToSave = _titleTextField.text;
//    [[NSUserDefaults standardUserDefaults]setObject:textToSave forKey:@"jounalTitle"];
//    [[NSUserDefaults standardUserDefaults]synchronize];
//
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"saved" message:@"Your text has been saved" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
//
//    [alert show];
    
    
    //Save data

    
    
    [self.navigationController popViewControllerAnimated:true];

}



@end
