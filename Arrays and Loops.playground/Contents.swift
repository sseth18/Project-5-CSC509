// Questions from https://www.weheartswift.com/arrays/

// "listOfNumbers" referred to in all three questions
var listOfNumbers = [1, 2, 3, 10, 100]

// 6.1
// Problem: print the maximum value from "listOfNumbers"
// Solution:
var max = listOfNumbers[0]

for number in listOfNumbers {
    if max < number {
        max = number
    }
}

print(max)

// 6.2
// Problem: print all the odd numbers from "listOfNumbers"
// Solution:
for number in listOfNumbers {
    if number % 2 == 1 {
        print(number)
    }
}

// 6.3
// Problem: print the sum of all the numbers in "listOfNumbers"
// Solution:
var sum = 0

for number in listOfNumbers {
    sum += number
}

print(sum)
