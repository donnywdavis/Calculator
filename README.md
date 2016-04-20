# Homework 05

## Calculator

### Code Tasks
* [x] Create IBActions for each operand and operator button so you can respond whenever the user taps a button.
* [x] Create a class called CalculatorBrain to hold state information about the current calculation. An object of this type will be created and destroyed as each "calculation transaction" is performed by the user.
* [x] As the user enters information, redirect the operands and operators to the CalculatorBrain class so when they tap the = button, the brain will be ready to perform the calculation.
* [x] Perform the calculation and return an answer to the view controller for display on-screen.

### Issues
* [x] Number is appending to previous result after equal is pressed.
* [x] Invalid is returned on first run if no first number is selected.
* [x] After an operator is tapped and first button pressed is the decimal it is not prefixed with 0.
* [x] Foramtting of result.
* [x] If a decimal is used in the first number and then an operator is pressed it will not let the decimal point be the first operand.

### Solutions
* [x] In operandTapped check that OperatorType has been set to a value other than OperatorTypeNone.
* [x] Create a new brain in viewDidLoad instead of operandTapped so that we have a brain object to perform operations against.
* [x] Check that userIsTypingANumber is NO at the beginning of operandTapped and set the displayLabel "0".
* [x] If neither operand has a decimal then display result as int. If either operand has a decimal then format the result with at least 2-4 decimals.
* [x] Move check for the displayLabel and the sender containing "." from beginning of method to the else before appending to the displayLabel.