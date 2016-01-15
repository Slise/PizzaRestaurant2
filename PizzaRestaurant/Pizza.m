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

+ (NSString*) sizeStringOutput: (PizzaSize) sizeEnum {
    
    if (sizeEnum == 0){
        return @"small";
    }
    else if (sizeEnum == 1) {
        return @"medium";
    }
    else
        return @"large";
}

//- (NSString *)description {
//    return [NSString stringWithFormat:@"Making a: %@, with: %@", [Pizza sizeStringOutput:self.size] , self.toppings];
//}


@end
