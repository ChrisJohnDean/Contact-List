//
//  ContactList.m
//  Contact List
//
//  Created by Chris Dean on 2018-02-13.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

//Custom init to initialize contact array when you iniitialize ContactList object
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.contactArray = [[NSMutableArray alloc] init];
    }
    return self;
}

//Method to add contact to contact array
-(void)addContact:(Contact *)newContact {
    [self.contactArray addObject:newContact];
}

//Iterate through contact array and log each contact to the console
-(void)displayContacts {
    
    for(int i = 0; i < [self.contactArray count]; i++) {
        Contact *contact = [self.contactArray objectAtIndex:i];
        NSString *str = contact.name;
        NSLog(@"%d: <%@>()\n", i, str);
    }
}

@end
