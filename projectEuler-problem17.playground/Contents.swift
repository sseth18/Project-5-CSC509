
let underTwentyValues = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
let tens = ["", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

func intToString(number: Int) -> String {
    var words: String = ""
    
    if number <= 19 {
        
        words += underTwentyValues[number]
    } else if number >= 20 && number <= 99 {
        let digits = [(number - number % 10)/10, number % 10]

        words += tens[digits[0]] + underTwentyValues[digits[1]]
    } else if number >= 100 && number <= 999 {
        let digits = [(number - number % 100)/100, (number % 100 - number % 10)/10, number % 10]
        
        if number % 100  == 0 {
            words += underTwentyValues[digits[0]] + "hundred"
        } else {
            words += underTwentyValues[digits[0]] + "hundredand" + intToString(number: (number % 100))
        }
    } else if number == 1000 {
        words += "onethousand"
    }
    return words
}

func calcNumLetters(max: Int) -> Int {
    var length: Int = 0
    
    for i in 1 ... max {
        length += intToString(number: i).count
        print(length)
    }
    
    return length
}

print(calcNumLetters(max: 1000))
