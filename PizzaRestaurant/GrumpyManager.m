//
//  GrumpyManager.m
//  PizzaRestaurant
//
//  Created by Benson Huynh on 2016-01-15.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "GrumpyManager.h"

@implementation GrumpyManager


- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    
    for (NSString *topping in toppings) {
        if ([topping isEqualToString:@"anchovies"]) {
            NSLog(@"Anchovies is a NONO!");
            return NO;
        }
    }
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen  {
    return NO;
}



@end
