//
//  ViewController.m
//  Calcatron
//
//  Created by Siddharth Gautam on 24/10/13.
//  Copyright (c) 2013 Siddtechnologies inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



-(IBAction)Number1:(id)sender{
    SelectNumber=SelectNumber * 10;
    SelectNumber=SelectNumber + 1;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}
-(IBAction)Number2:(id)sender{
    SelectNumber=SelectNumber * 10;
    SelectNumber=SelectNumber + 2;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}
-(IBAction)Number3:(id)sender{
    SelectNumber=SelectNumber * 10;
    SelectNumber=SelectNumber + 3;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}
-(IBAction)Number4:(id)sender{
    SelectNumber=SelectNumber * 10;
    SelectNumber=SelectNumber + 4;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}
-(IBAction)Number5:(id)sender{
    SelectNumber=SelectNumber * 10;
    SelectNumber=SelectNumber + 5;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}
-(IBAction)Number6:(id)sender{
    SelectNumber=SelectNumber * 10;
    SelectNumber=SelectNumber + 6;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}
-(IBAction)Number7:(id)sender{
    SelectNumber=SelectNumber * 10;
    SelectNumber=SelectNumber + 7;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}
-(IBAction)Number8:(id)sender{
    SelectNumber=SelectNumber * 10;
    SelectNumber=SelectNumber + 8;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}
-(IBAction)Number9:(id)sender{
    SelectNumber=SelectNumber * 10;
    SelectNumber=SelectNumber + 9;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}
-(IBAction)Number0:(id)sender{
    SelectNumber=SelectNumber * 10;
    SelectNumber=SelectNumber + 0;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}
/*
 Function takes care of multiplication. Check running time and handle's operations
 based on that.
 */
-(IBAction)Times:(id)sender{
    
    if (RunningTotal == 0) {
       
        RunningTotal = SelectNumber;
    }
    
    else{
        
        switch (Method) {
            case 1:
                RunningTotal = RunningTotal * SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal / SelectNumber;
                break;
            case 3:
                RunningTotal = RunningTotal - SelectNumber;
                break;
            case 4:
                RunningTotal = RunningTotal + SelectNumber;
                break;
            default:
                break;
                
            }
        }
    
    Method = 1;
    SelectNumber = 0;
}
/*
 Function takes care of Division. Check running time and handle's operations
 based on that.
 */
-(IBAction)Divide:(id)sender{
    
    if (RunningTotal == 0) {
        
        RunningTotal = SelectNumber;
    }
    
    else{
        
        switch (Method) {
            case 1:
                RunningTotal = RunningTotal * SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal / SelectNumber;
                break;
            case 3:
                RunningTotal = RunningTotal - SelectNumber;
                break;
            case 4:
                RunningTotal = RunningTotal + SelectNumber;
                break;
            default:
                break;
                
        }
    }
    
    Method = 2;
    SelectNumber = 0;
}
/*
 Function takes care of Subtraction. Check running time and handle's operations
 based on that.
 */
-(IBAction)Subtract:(id)sender{
    
    if (RunningTotal == 0) {
        
        RunningTotal = SelectNumber;
    }
    
    else{
        
        switch (Method) {
            case 1:
                RunningTotal = RunningTotal * SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal / SelectNumber;
                break;
            case 3:
                RunningTotal = RunningTotal - SelectNumber;
                break;
            case 4:
                RunningTotal = RunningTotal + SelectNumber;
                break;
            default:
                break;
                
        }
    }
    
    Method = 3;
    SelectNumber = 0;
}
/*
 Function takes care of addition. Check running time and handle's operations
 based on that.
 */
-(IBAction)Plus:(id)sender{
    
    if (RunningTotal == 0) {
        
        RunningTotal = SelectNumber;
    }
    
    else{
        
        switch (Method) {
            case 1:
                RunningTotal = RunningTotal * SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal / SelectNumber;
                break;
            case 3:
                RunningTotal = RunningTotal - SelectNumber;
                break;
            case 4:
                RunningTotal = RunningTotal + SelectNumber;
                break;
            default:
                break;
                
        }
    }
    
    Method = 4;
    SelectNumber = 0;
}
/*
 Function takes care of displaying total at a given time on the screen.
 */
-(IBAction)Equals:(id)sender{
    
    if (RunningTotal == 0) {
        
        RunningTotal = SelectNumber;
    }
    
    else{
        
        switch (Method) {
            case 1:
                RunningTotal = RunningTotal * SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal / SelectNumber;
                break;
            case 3:
                RunningTotal = RunningTotal - SelectNumber;
                break;
            case 4:
                RunningTotal = RunningTotal + SelectNumber;
                break;
            default:
                break;
                
        }
    }
    Method = 0;
    SelectNumber = 0;
    Screen.text = [NSString stringWithFormat:@"%.2f", RunningTotal];
    
}
/*
 Function takes care of reseting all parameters and setting the screen to display 0.
 */
-(IBAction)AllClear:(id)sender{
    
    Method = 0;
    RunningTotal = 0;
    SelectNumber = 0;
    
    Screen.text = [NSString stringWithFormat:@"0"];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
