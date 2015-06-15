//
//  Moltin.m
//  MoltinSDK
//
//  Created by Gasper Rebernak on 10/06/15.
//  Copyright (c) 2015 Gasper Rebernak. All rights reserved.
//

#import "Moltin.h"
#import "MoltinAPIClient.h"

@implementation Moltin

- (id)init{
    self = [super init];
    if (self) {
        /*
         MTAddress *address;
         MTBrand *brand;
         MTCart *cart;
         MTCategory *category;
         MTCheckout *checkout;
         MTCollection *collection;
         MTCustomer *customer;
         MTCurrency *currency;
         MTEntry *entry;
         MTGateway *gateway;
         MTOrder *order;
         MTProduct *product;
         MTShipping *shipping;
         MTTax *tax;
         */
        self.address = [[MTAddress alloc] init];
        self.brand = [[MTBrand alloc] init];
        self.cart = [[MTCart alloc] init];
        self.category = [[MTCategory alloc] init];
        self.checkout = [[MTCheckout alloc] init];
        self.collection = [[MTCollection alloc] init];
        self.customer = [[MTCustomer alloc] init];
        self.currency = [[MTCurrency alloc] init];
        self.entry = [[MTEntry alloc] init];
        self.gateway = [[MTGateway alloc] init];
        self.order = [[MTOrder alloc] init];
        self.product = [[MTProduct alloc] init];
        self.shipping = [[MTShipping alloc] init];
        self.tax = [[MTTax alloc] init];
    }
    return self;
}

+ (instancetype)sharedInstance {
    static Moltin *_sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[Moltin alloc] init];
    });
    
    return _sharedInstance;
}

- (void)setPublicId:(NSString *)publicId
{
    [MoltinAPIClient sharedClient].publicId = publicId;
}

@end
