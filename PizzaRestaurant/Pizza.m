//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Benson Huynh on 2016-01-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize:(PizzaSize)size toppings:(NSArray *)toppings  {
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    }
    
    return self;
}

+ (PizzaSize) sizeSelector: (NSString*) sizeString {
    if ([sizeString isEqualToString:@"small"])  {
        return PizzaSizeSmall;
    }
    else if ([sizeString isEqualToString:@"medium"]) {
        return PizzaSizeMedium;
    }
    else
        return PizzaSizeLarge;
}

-(NSString*) sizeStringOutput {
    
    if (self.size == PizzaSizeSmall){
        return @"small";
    }
    else if (self.size == PizzaSizeMedium) {
        return @"medium";
    }
    else
        return @"large";
}



@end
