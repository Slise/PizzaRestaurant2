//
//  KitchenDelegate.h
//  PizzaRestaurant
//
//  Created by Benson Huynh on 2016-01-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Pizza, Kitchen;

@protocol KitchenDelegate <NSObject>


- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;


@end
