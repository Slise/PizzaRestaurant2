//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "CheeryManager.h"
#import "GrumpyManager.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSLog(@"Please choose a Manager Benson or Danny, pizza size and toppings:");
        
        Kitchen *dominos = [[Kitchen alloc] init];
        CheeryManager *benson = [[CheeryManager alloc] init];
        GrumpyManager *danny = [[GrumpyManager alloc] init];
        
        
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            NSLog(@"Your choice is: %@", commandWords);
            
            NSMutableArray *toppings = [commandWords mutableCopy];
            
            NSString *managerName = toppings[0];
            [toppings removeObjectAtIndex:0];
            
            if ([managerName isEqualToString:@"benson"]) {
                
                dominos.delegate = benson;
                
            }else if ([managerName isEqualToString:@"danny"])
            {
                dominos.delegate = danny;
                
                
            }
            
            NSString *sizeInput = [toppings firstObject];
            
            PizzaSize sizeSelected = [Pizza sizeSelector:sizeInput];
            
            [toppings removeObjectAtIndex:0];
            
            // Take the first word of the command as the size, and the rest as the toppings
            
            //            NSLog(@"Place your order: %@", inputString);
            
            
            Pizza *newOrder = [dominos makePizzaWithSize:sizeSelected toppings:toppings];
            if (newOrder) {
                NSLog(@"%@ pizza is ready with %@" , [newOrder sizeStringOutput], [newOrder toppings]);
            } else {
                NSLog(@"Your order was rejected!");
            }
        }
    }
    
    return 0;
    
}

