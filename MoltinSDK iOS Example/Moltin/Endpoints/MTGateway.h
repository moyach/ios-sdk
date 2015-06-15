//
//  MTGateway.h
//  MoltinSDK
//
//  Created by Gasper Rebernak on 10/06/15.
//  Copyright (c) 2015 Gasper Rebernak. All rights reserved.
//

#import "MTFacade.h"

@interface MTGateway : MTFacade

- (void)getWithSlug:(NSString *) slug callback:(void (^)(NSDictionary *, NSError *))completion;

@end
