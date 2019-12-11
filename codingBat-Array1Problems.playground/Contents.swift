
// Problem name: firstLast6
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

// Problem name: commonEnd
print()
print("commonEnd")

func commonEnd(list1: [Int], list2: [Int]) -> Bool {
    return list1.last == list2.last
}

print(commonEnd(list1: [1, 2, 3, 4], list2: [7, 6, 5, 4]))
print(commonEnd(list1: [1, 2, 3, 3], list2: [7, 6, 5, 4]))
print(commonEnd(list1: [1, 2, 3, 4], list2: [1, 6, 5, 2]))

// Problem name: reverse3
print()
print("reversed")

func reverse3(numbers: [Int]) -> [Int] {
    let reversed: [Int] = [numbers[2], numbers[1], numbers[0]]
    return reversed
}

print(reverse3(numbers: [1, 2, 3]))
print(reverse3(numbers: [3, 2, 1]))

// Problem name: rotateLeft3
print()
print("rotateLeft3")

func rotateLeft3(numbers: [Int]) -> [Int] {
    let rotated: [Int] = [numbers[1], numbers[2], numbers[0]]
    return rotated
}

print(rotateLeft3(numbers: [1, 2, 3]))
print(rotateLeft3(numbers: [3, 2, 1]))

// Problem name: swapEnds
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
