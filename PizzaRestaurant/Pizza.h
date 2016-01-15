//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Benson Huynh on 2016-01-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizza : NSObject

typedef enum {
    PizzaSizeSmall, PizzaSizeMedium, PizzaSizeLarge
} PizzaSize;

@property (nonatomic, strong) NSArray *toppings;
@property (nonatomic) PizzaSize size;

- (instancetype)initWithSize:(PizzaSize)size toppings:(NSArray *)toppings;

+ (PizzaSize) sizeSelector: (NSString*) sizeString;
- (NSString*) sizeStringOutput;

@end
