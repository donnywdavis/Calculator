# Homework 05

## Calculator

### Issues
* [ ] Number is appending to previous result after equal is pressed.
* [ ] Invalid is returned on first run if no first number is selected.
* [ ] After an operator is tapped and press "." it is not prefixed with 0.
* [ ] Foramtting of result.

### Solutions
* [ ] In operandTapped check that OperatorType has been set to a value other than OperatorTypeNone.
* [ ] Create a new brain in viewDidLoad instead of operandTapped so that we have a brain object to perform operations against.
* [ ] Set userIsTypingANumber to YES once an operator is pressed. In operandTapped if userIsTypingANumber is YES then reset the label to 0 so that it will be appended with a decimal point.
* [ ] If neither operand has a decimal then display result as int. If either operand has a decimal then format the result with at least 2-4 decimals.