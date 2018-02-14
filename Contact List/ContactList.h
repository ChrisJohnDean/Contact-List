//
//  ContactList.h
//  Contact List
//
//  Created by Chris Dean on 2018-02-13.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property NSMutableArray *contactArray;

-(void)addContact:(Contact*)newContact;

-(void)displayContacts;
@end
