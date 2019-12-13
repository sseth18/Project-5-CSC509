//: Samar Seth
//: Problems found at [Coding Bat Array-1](https://codingbat.com/java/Array-1) 

//: **Problem**: [firstLast6](https://codingbat.com/prob/p185685)
//: *Prompt*: Given an array of ints, return true if 6 appears as either the first or last element in the array. The array will be length 1 or more.
print("firstLast6")

func firstLast6(numbers: [Int]) -> Bool {
    if numbers.first == 6 || numbers.last == 6 {
        return true
    }
    
    return false
}

print(firstLast6(numbers: [1, 2, 3]))
print(firstLast6(numbers: [1, 2, 6]))
print(firstLast6(numbers: [6, 2, 3]))

//: **Problem**: [commonEnd](https://codingbat.com/prob/p191991)
//: *Prompt*: Given 2 arrays of ints, a and b, return true if they have the same first element or they have the same last element. Both arrays will be length 1 or more.
print()
print("commonEnd")

func commonEnd(list1: [Int], list2: [Int]) -> Bool {
    return list1.last == list2.last
}

print(commonEnd(list1: [1, 2, 3, 4], list2: [7, 6, 5, 4]))
print(commonEnd(list1: [1, 2, 3, 3], list2: [7, 6, 5, 4]))
print(commonEnd(list1: [1, 2, 3, 4], list2: [1, 6, 5, 2]))

//: **Problem**: [reverse3](https://codingbat.com/prob/p112409)
//: *Prompt*: Given an array of ints length 3, return a new array with the elements in reverse order.
print()
print("reversed")

func reverse3(numbers: [Int]) -> [Int] {
    let reversed: [Int] = [numbers[2], numbers[1], numbers[0]]
    return reversed
}

print(reverse3(numbers: [1, 2, 3]))
print(reverse3(numbers: [3, 2, 1]))

//: **Problem**: [rotateLeft3](https://codingbat.com/prob/p185139)
//: *Prompt*: Given an array of ints length 3, return an array with the elements "rotated left" so {1, 2, 3} yields {2, 3, 1}.
print()
print("rotateLeft3")

func rotateLeft3(numbers: [Int]) -> [Int] {
    let rotated: [Int] = [numbers[1], numbers[2], numbers[0]]
    return rotated
}

print(rotateLeft3(numbers: [1, 2, 3]))
print(rotateLeft3(numbers: [3, 2, 1]))

//: **Problem**: [swapEnds](https://codingbat.com/prob/p118044)
//: *Prompt*: Given an array of ints, swap the first and last elements in the array. Return the modified array. The array length will be at least 1.
print()
print("swapEnds")

func swapEnds(numbers: [Int]) -> [Int] {
    var swappedEnds: [Int] = [numbers[numbers.count - 1]]
    for i in 1 ..< numbers.count - 1 {
        swappedEnds.append(numbers[i])
    }
    swappedEnds.append(numbers[0])
    
    return swappedEnds
}

print(swapEnds(numbers: [1, 2, 3]))
print(swapEnds(numbers: [4, 3, 2, 1]))
