
func isPrime(input: Int) -> Bool {
    if input <= 1 { return false }
    if input % 2 == 0 { return input == 2 }
    if input % 3 == 0 { return input == 3 }
    let r = Int((Double(input)).squareRoot())
    var f: Int = 5
    while f <= r {
        if input % f == 0 { return false }
        f += 1
    }
    return true
}

func primeValueFinder(input: Int = 10_001) -> Int {
    var output: Int = 0
    var count: Int = 0
    var number: Int = 1

    while count < input {
        number += 1
        if isPrime(input: number) {
            output = number
            count += 1
        }

    }

    return output
}

print(primeValueFinder())

