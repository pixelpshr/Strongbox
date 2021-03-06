//
//  InnerRandomStreamFactory.h
//  Strongbox
//
//  Created by Mark on 01/11/2018.
//  Copyright © 2018 Mark McGuill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InnerRandomStream.h"

NS_ASSUME_NONNULL_BEGIN

@interface InnerRandomStreamFactory : NSObject

+(nullable id<InnerRandomStream>)getStream:(uint32_t)streamId key:(nullable NSData*)key;

@end

NS_ASSUME_NONNULL_END
