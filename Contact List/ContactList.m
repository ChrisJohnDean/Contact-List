//
//  ContactList.m
//  Contact List
//
//  Created by Chris Dean on 2018-02-13.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.contactArray = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact {
    [self.contactArray addObject:newContact];
}

-(void)displayContacts {
    for(int i = 0; i < [self.contactArray count]; i++) {
        Contact *contact = [self.contactArray objectAtIndex:i];
        NSString *str = contact.name;
        NSLog(@"%d: <%@>()\n", i, str);
    }
}

@end
