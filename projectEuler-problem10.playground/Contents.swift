//: Samar Seth
//: Problem found at [Project Euler Question 10](https://projecteuler.net/problem=10)
//: *Prompt*: Find the sum of all the primes below two million.
   
func sieve(length: Int = 2000000) -> [Int] {
    var numbers: [Int] = [0, 0] + Array(repeating: 1, count: length-1)
    for p in 2 ... Int(Double(length).squareRoot() + 1.0) {
        if numbers[p] == 1 {
            var i = 2*p
            while i < length + 1 {
                numbers[i] = 0
                i += p
            }
        }
    }
    return numbers
}

func primeSumCalculator(input: Int = 2000000) {
    var sum: Int = 0
    let markedPrimes = sieve()
    for i in 0 ..< markedPrimes.count {
        if markedPrimes[i] == 1 {
            sum += i
        }
    }
    
    print(sum)
}

primeSumCalculator()
