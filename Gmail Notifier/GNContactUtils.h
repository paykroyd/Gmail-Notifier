//
//  GNContactUtils.h
//  Gmail Notifier
//
//  Created by Pete Aykroyd on 1/18/14.
//  Copyright (c) 2014 James Shepherdson. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ABPerson;

// Search for a contact in the AddressBook by email address
ABPerson * findPersonByEmail(NSString* email);
