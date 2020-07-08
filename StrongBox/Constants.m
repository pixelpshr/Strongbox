//
//  Constants.m
//  Strongbox
//
//  Created by Strongbox on 22/06/2020.
//  Copyright © 2020 Mark McGuill. All rights reserved.
//

#import "Constants.h"
#import "Utils.h"

@implementation Constants

const NSInteger kStorageProviderUserInteractionRequiredErrorCode = 17292412;
NSString* const kStorageProviderUserInteractionRequiredErrorMessage = @"User Interaction Required";
const NSError* kUserInteractionRequiredError;
const NSUInteger kMinimumDatabasePrefixLengthForValidation = 192;
const NSUInteger kStreamingSerializationChunkSize = 128 * 1024; // 128 KB - Maybe play with this but this seems to have decent perf for now
const size_t kMaxAttachmentTableviewIconImageSize = 4 * 1024 * 1024;

+(void)initialize {
    if(self == [Constants class]) {
        kUserInteractionRequiredError = [Utils createNSError:kStorageProviderUserInteractionRequiredErrorMessage errorCode:kStorageProviderUserInteractionRequiredErrorCode];
    }
}

@end
