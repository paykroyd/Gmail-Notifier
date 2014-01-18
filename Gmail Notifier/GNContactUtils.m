//
//  GNContactUtils.m
//  Gmail Notifier
//
//  Created by Pete Aykroyd on 1/18/14.
//  Copyright (c) 2014 Pete Aykroyd. All rights reserved.
//

#import "GNContactUtils.h"

#import <AddressBook/ABAddressBook.h>
#import <AddressBook/ABPerson.h>
#import <AddressBook/ABImageLoading.h>

ABPerson * findPersonByEmail(NSString* email)
{
    ABAddressBook *addressBook = [ABAddressBook sharedAddressBook];
    NSArray *results = [addressBook recordsMatchingSearchElement:
                                                [ABPerson searchElementForProperty:kABEmailProperty
                                                                             label:nil
                                                                               key:nil
                                                                             value:email
                                                                        comparison:kABEqualCaseInsensitive]];
    
    return results.count > 0 ? [results objectAtIndex:0] : nil;
}
