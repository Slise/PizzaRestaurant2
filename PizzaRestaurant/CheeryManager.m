//
//  CheeryManager.m
//  PizzaRestaurant
//
//  Created by Benson Huynh on 2016-01-15.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "CheeryManager.h"


@implementation CheeryManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    
    return YES;
    
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen  {
    return YES;
    
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    
}



@end
