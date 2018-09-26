//credit Card number as an array
var creditCard = [5,8,4,6,6,3,1,4,5,8,8,1,4,4,6,0]
var sum = 0

//loop through each digit in the credit card number array
for i in 0...15 {
    
    //if the current index is an even number (every other index)
    if (i % 2 == 0) {
        //multiply the number by 2
        creditCard[i] = creditCard[i] * 2
        
        //if the product is a two digit number (greater than 9)
        if (creditCard[i] > 9) {
            
            //sum the two numbers (subtracting 9 is the equivalent - gives the same number)
            creditCard[i] = creditCard[i] - 9
        }
    }
    
    //add the number to the sum of numbers
    sum = sum + creditCard[i]
}

//print the sum of the numbers
print(sum)

//if the sum is divisible by 10, the number is valid
if (sum % 10 == 0) {
    print("Valid Credit Card")
}
//otherwise, the number is invalid
else {
    print("Invalid Credit Card")
}
