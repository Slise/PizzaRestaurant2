//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings {
    
    Pizza *newOrder = 0;
    
    if (!self.delegate){
        NSLog(@"No manager is on duty!");
        newOrder = [[Pizza alloc]initWithSize:size toppings:toppings];
    } else {
        if ([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
            
            PizzaSize targetSize = size;
            
            if ([self.delegate kitchenShouldUpgradeOrder:self]) {
                targetSize = PizzaSizeLarge;
            }
            newOrder = [[Pizza alloc]initWithSize:targetSize toppings:toppings];
            
            if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                [self.delegate kitchenDidMakePizza:newOrder];
            }
        }
    }
    return newOrder;
}
@end
