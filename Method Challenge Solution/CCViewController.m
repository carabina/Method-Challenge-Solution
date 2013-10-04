//
//  CCViewController.m
//  Method Challenge Solution
//
//  Created by Eliot Arntz on 10/4/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import "CCViewController.h"

@interface CCViewController ()

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    /* uncomment to use method 1*/
    //[self printAllWholeNumbersBelow:5];
    
    /* uncomment to use method 2*/
    //[self printWholeNumbersInBetweenFirstInteger:5 andSecondInteger:10];
    
    /* uncomment to use method 3*/
    //int answerForFactorial = [self factorialOfInteger:3];
    //NSLog(@"%i", answerForFactorial);
}

/* This method accepts 1 parameter of type int and does not return any value.  We first test to make sure that the number being passed in is a whole number.  Then using a for loop we iterate down from our number to o.  We also print out to the console the current value of the integer each time we go through our for loop. */

-(void)printAllWholeNumbersBelow:(int)number
{
    if (number > 0) {
        for (int i = number; i > 0; i --)
        {
            NSLog(@"%i", i);
        }
    }
}

/* This method takes two parameters both of type int and does not return a value. We use an if statement to first check if the two integers arguments are the same.  If they are we print out "The numbers are equal" to the console. Next we test if the first integer is greater than the second integer.  If it is we set i in our for loop equal to the first integer's value and tell our for loop that i must be greater than or equal to the second integer.  Finally, we subtract 1 from i each time we go through the for loop and print out the value of i. Our else statement does the same thing except it flips the first integer and second integer. */

-(void)printWholeNumbersInBetweenFirstInteger:(int)firstInteger andSecondInteger:(int)secondInteger
{
    if (firstInteger == secondInteger){
        NSLog(@"The numbers are equal!");
    }
    else if (firstInteger > secondInteger)
    {
        for (int i = firstInteger; i >= secondInteger; i--)
        {
            NSLog(@"%i", i);
        }
    }
    else {
        for (int i = secondInteger; i >= firstInteger; i--)
        {
            NSLog(@"%i", i);
        }
    }
}

/* This method accepts 1 parameter of type int and returns 1 value of type int. When we call this method we pass in an integer value that is set equal to our answer.  We use a for loop to do some logic on the answer. Finally, and most importantly we return an integer value from this method. When we call this method in viewDidLoad we set the return value equal to a local variable of type int. We can then do logic on the value or in our case simply print it out to the console. */
-(int)factorialOfInteger:(int)number
{
    int answer = number;
    for (int i = number; i >1; i --){
        answer = answer * (i -1);
    }
    return answer;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
