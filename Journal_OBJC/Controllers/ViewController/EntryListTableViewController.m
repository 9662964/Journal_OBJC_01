//
//  EntryListTableViewController.m
//  Journal_OBJC
//
//  Created by iljoo Chae on 6/22/20.
//  Copyright © 2020 Admin. All rights reserved.
//

#import "EntryListTableViewController.h"
#import "CHAEEntryController.h"
#import "EntryDetailViewController.h"

@interface EntryListTableViewController ()

@end

@implementation EntryListTableViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}
#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return CHAEEntryController.shared.entries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"journalCell" forIndexPath:indexPath];
    
    CHAEEntry *entry = CHAEEntryController.shared.entries[indexPath.row];
    
    cell.textLabel.text = entry.title;
    cell.detailTextLabel.text = entry.bodyText;
   
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"toViewEntry"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];

        EntryDetailViewController *destViewController = segue.destinationViewController;
        destViewController.entry = [CHAEEntryController.shared.entries objectAtIndex:indexPath.row];
    }
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {

        CHAEEntry *entry = CHAEEntryController.shared.entries[indexPath.row];
        [CHAEEntryController.shared removeEntry:entry];

        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        

    }
}

@end
