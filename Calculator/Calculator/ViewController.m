//
//  ViewController.m
//  Calculator
//
//  Created by Donny Davis on 4/18/16.
//  Copyright © 2016 Donny Davis. All rights reserved.
//

#import "ViewController.h"
#import "CalculatorBrain.h"

@interface ViewController () {
    
    CalculatorBrain *brain;
    
}

@property (weak, nonatomic) IBOutlet UILabel *displayLabel;

- (IBAction)operandTapped:(UIButton *)sender;
- (IBAction)additionTapped:(UIButton *)sender;
- (IBAction)subtractionTapped:(UIButton *)sender;
- (IBAction)multiplicationTapped:(UIButton *)sender;
- (IBAction)divisionTapped:(UIButton *)sender;
- (IBAction)equalTapped:(UIButton *)sender;
- (IBAction)allClearTapped:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.displayLabel.text = @"0";
    brain = [[CalculatorBrain alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)operandTapped:(UIButton *)sender {
    if (!brain.userIsTypingANumber) {
        self.displayLabel.text = @"0";
    }

    if ([self.displayLabel.text isEqualToString:@"0"] && !([sender.titleLabel.text isEqualToString:@"."] && !brain.userIsTypingANumber)) {
        self.displayLabel.text = sender.titleLabel.text;
    } else {
        if (!([self.displayLabel.text containsString:@"."] && [sender.titleLabel.text isEqualToString:@"."])) {
            self.displayLabel.text = [self.displayLabel.text stringByAppendingString:sender.titleLabel.text];
        }
    }
    brain.userIsTypingANumber = YES;
}

- (IBAction)additionTapped:(UIButton *)sender {
    brain.operatorType = OperatorTypeAddition;
    brain.operand1 = [self.displayLabel.text floatValue];
    brain.operand1String = [self.displayLabel.text mutableCopy];
    brain.userIsTypingANumber = NO;
}

- (IBAction)subtractionTapped:(UIButton *)sender {
    brain.operatorType = OperatorTypeSubtraction;
    brain.operand1 = [self.displayLabel.text floatValue];
    brain.operand1String = [self.displayLabel.text mutableCopy];
    brain.userIsTypingANumber = NO;
}

- (IBAction)multiplicationTapped:(UIButton *)sender {
    brain.operatorType = OperatorTypeMultiplication;
    brain.operand1 = [self.displayLabel.text floatValue];
    brain.operand1String = [self.displayLabel.text mutableCopy];
    brain.userIsTypingANumber = NO;
}

- (IBAction)divisionTapped:(UIButton *)sender {
    brain.operatorType = OperatorTypeDivision;
    brain.operand1 = [self.displayLabel.text floatValue];
    brain.operand1String = [self.displayLabel.text mutableCopy];
    brain.userIsTypingANumber = NO;
}

- (IBAction)equalTapped:(UIButton *)sender {
    brain.operand2 = [self.displayLabel.text floatValue];
    brain.operand2String = [self.displayLabel.text mutableCopy];
    self.displayLabel.text = [brain executeOperationOnOperands];
    brain = [[CalculatorBrain alloc] init];
}

- (IBAction)allClearTapped:(UIButton *)sender {
    self.displayLabel.text = @"0";
    // Reset the brain
    brain = [[CalculatorBrain alloc] init];
}

@end
