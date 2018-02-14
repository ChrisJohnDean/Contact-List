//
//  main.m
//  Contact List
//
//  Created by Chris Dean on 2018-02-13.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL dontStop = YES;
        
        //Instantiate ContactList object
        ContactList *contactList = [[ContactList alloc] init];
        
        while(dontStop) {
            
            //Instantiate InputCollector and Contact class
            InputCollector *input = [[InputCollector alloc] init];
            Contact *contact = [[Contact alloc] init];
            
            //Call inputForPrompt on menu options NSString, and assign users choice to NSString variable
            NSString *menuChoice = [input inputForPrompt:@"\n new - Create a new contact \n list - List all contacts \n quit - Exit application"];
            
            //Conditions for user's menu choice
            if([menuChoice isEqualToString:@"quit"]) {
                
                dontStop = NO;
                continue;
                
            //Prompt user for info and add to array property in ContactList object
            } else if([menuChoice isEqualToString:@"new"]) {
                
                contact.name = [input inputForPrompt:@"\n Enter your name"];
                contact.email = [input inputForPrompt:@"\n Enter your email"];
                [contactList addContact:contact];
                NSLog(@"%lu", contactList.contactArray.count);
            
            //Display contacts from array property in ContactList object
            } else if([menuChoice isEqualToString:@"list"]) {
                
                [contactList displayContacts];
                
            } else {
                
                NSLog(@"Incorrect input, try again");
                
            }
        }
    }
    return 0;
}
