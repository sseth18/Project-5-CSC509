//: Samar Seth
//: [Questions](https://www.weheartswift.com/arrays/)
   
// "listOfNumbers" referred to in all three questions
var listOfNumbers = [1, 2, 3, 10, 100]

//: **Problem**: 6.1
//: *Prompt*: print the maximum value from "listOfNumbers"
var max = listOfNumbers[0]

for number in listOfNumbers {
    if max < number {
        max = number
    }
}

print(max)

//: **Problem**: 6.2
//: *Prompt*: print all the odd numbers from "listOfNumbers"
for number in listOfNumbers {
    if number % 2 == 1 {
        print(number)
    }
}

//: **Problem**: 6.3
//: *Prompt*: print the sum of all the numbers in "listOfNumbers"
var sum = 0

for number in listOfNumbers {
    sum += number
}

print(sum)
