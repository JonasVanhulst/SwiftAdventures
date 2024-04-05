/*
  Swift Learning Journey
  
  This Swift program helped me to start 
  programming the swift programming language. Each
  chapter introduces key concepts in Swift programming.
  
  Author: [Jonas Vanhulst]
  Date: [10/02/2024]

  Feel free to explore and enjoy my Swift learning journey!
*/

import UIKit
import foundation

/*
 Swift Learning Journey
 Chapter 1 : Basics
*/

// 1. Write a Swift program to compute the sum of the two integers. If the values are equal return the triple their sum.
func summing(firts_digit : Int , second_digit : Int ) -> Int {
    if firts_digit == second_digit {
        return (firts_digit + second_digit) * 3
    } else {
        return firts_digit + second_digit
    }
}

// 2. Write a Swift program to compute and return the absolute difference of n and 51, if n is over 51 return double the absolute difference.
func compute(digit : Int) -> Int {
    if digit > 51 {
        return (digit - 51) * 2
    } else {
        return 51 - digit
    }
}

// 3. Write a Swift program that accept two integer values and return true if one of them is 20 or if their sum is 20.
func accept(first_digit : Int , second_digit : Int) -> Bool {
    if first_digit == 20 || second_digit == 20 || (first_digit + second_digit) == 20 {
        return true
    } else {
        return false
    }
}

// 4. Write a Swift program to accept two integer values and return true if one is negative and one is positive. Return true only if both are negative.
func digit_check(first_digit : Int , second_digit : Int) -> Bool {
    if first_digit < 0 && second_digit < 0 {
        return true
    } else if first_digit > 0 && second_digit < 0 {
        return true
    } else if first_digit < 0 && second_digit > 0 {
        return true
    } else {
        return false
    }
}

// 5. Write a Swift program to add "Is" to the front of a given string. However, if the string already begins with "Is", return the given string.
func string_check(sentence :  String) -> String {
    if sentence.hasPrefix("Is") {
        return sentence
    } else {
        return "Is \(sentence)"
    }
}

// 6. Write a Swift program to remove a character at specified index of a given non-empty string. The value of the specified index will be in the range 0..str.length()-1 inclusive.
func remove_char(sentence : String, n : Int) -> String {
    let count = sentence.count
    var new_sentence = sentence
    let index = sentence.index(sentence.startIndex, offsetBy: n)
    if  count > 0
    {
        new_sentence.remove(at: index)
    }
    return new_sentence
}

// 7. Write a Swift program to change the first and last character of a given string.
func first_last_remover(sentence : String) -> String {
    let count = sentence.count
    
    if count < 1 {
        return sentence
    }
    
    var result = sentence
    let first_char = result.remove(at: result.startIndex)
    let findLast = result.index(before: result.endIndex)
    let last_char = result.remove(at: findLast)
    
    return result
}

// 8. Write a Swift program to add the last character (given string) at the front and back of a given string. The length of the given string must be 1 or more.
func last_append(sentence : String) -> String {
    let count = sentence.count
    
    if count < 1 {
        return sentence
    }
    
    var result_word = sentence
    let last_char = result_word.removeLast()
    let last_str = String(last_char)
    return last_str + sentence + last_str
}

// 9. Write a Swift program to check if a given non-negative number is a multiple of 3 or a multiple of 5.
func non_negative_digit_check(number : Int) -> Bool {
    if number % 3 == 0 || number % 5 == 0 {
        return true
    } else {
        return false
    }
}

// 10. Write a Swift program to take the first two characters from a given string and create a new string with the two characters added at both the front and back.
func two_digit_adder(sentence : String) -> String {
    let count = sentence.count
    
    if count < 1 {
        return sentence
    }
    
    let first_two = sentence.prefix(2)
    return first_two + sentence + first_two
}

// 11. Write a Swift program to test a given string whether it starts with "Is". Return true or false.
func is_string_check(sentence : String) -> Bool {
    if sentence.hasPrefix("Is") {
        return true
    } else {
        return false
    }
}

// 12. Write a Swift program that return true if either of two given integers is in the range 10..30 inclusive.
func range_check(first_digit : Int , second_digit : Int) -> Bool {
    if first_digit >= 10 && first_digit <= 30 {
        return true
    } else if second_digit >= 10 && second_digit <= 30 {
        return true
    } else {
        return false
    }
}

// 13. Write a Swift program to check if a given string begins with "fix", except the 'f' can be any character or number.
func find_character(word : String) -> Bool {
    let count = word.count
    
    if count < 1 {
        return false
    }
    
    var new_word = word
    let corrected_word = new_word.removeFirst()
    
    if new_word.hasPrefix("ix") {
        return true
    } else {
        return false
    }

}

// 14. Write a Swift program to find the largest number among three given integers.
func find_largest(first_number : Int, second_number : Int, third_number : Int) -> Int {
    if first_number > second_number {
        if first_number > third_number {
            return first_number
        } else {
            return third_number
        }
    } else {
        if second_number > third_number {
            return second_number
        } else {
            return third_number
        }
    }
}

// 15. Write a Swift program that accept two integer values and to test which value is nearest to the value 10, or return 0 if both integers have same distance from 10.
func check_nearest(first_number : Int, second_number : Int) -> Int {
    var subresult_one = 0
    var subresult_two = 0
    
    if first_number > 10 {
        subresult_one = first_number - 10
    } else {
        subresult_one = 10 - first_number
    } 
    
    if second_number > 10 {
        subresult_two = second_number - 10
    } else {
        subresult_two = 10 - second_number
    }
    
    if subresult_one == subresult_two {
        return 0
    } else if subresult_one < subresult_two {
        return first_number
    } else {
        return second_number
    }
}

// 16. Write a Swift program that accept two integer values and test if they are both in the range 20..30 inclusive, or they are both in the range 30..40 inclusive.
func check_20_40_range(first_number : Int, second_number : Int) -> Bool {
    if (first_number >= 20 && second_number >= 20) && (first_number <= 30 && second_number <= 30) {
        return true
    } else if (first_number >= 30 && second_number >= 30) && (first_number <= 40 && second_number <= 40) {
        return true
    } else {
        return false
    }
}

// 17. Write a Swift program that accept two positive integer values and test whether the larger value is in the range 20..30 inclusive, or return 0 if neither is in that range.
func check_20_30_range(first_number: Int, second_number: Int) -> Int {
    if (first_number >= 20 && first_number <= 30) || (second_number >= 20 && second_number <= 30) {
        return max(first_number, second_number)
    } else {
        return 0
    }
}

// 18. Write a Swift program to test whether the last digit of the two given non-negative integer values are same or not.
func areLastDigitsSame(firstNumber: Int, secondNumber: Int) -> Bool {
    guard firstNumber >= 0 && secondNumber >= 0 else {
        return false
    }
    
    let lastDigitFirst = firstNumber % 10
    let lastDigitSecond = secondNumber % 10

    return lastDigitFirst == lastDigitSecond
}

// 19. Write a Swift program to convert the last three characters in upper case. If the string has less than 3 chars, lowercase whatever is there.
func string_converter(sentence: String) -> String {
    var newSentence = ""
    let characterCount = sentence.count
    
    if characterCount < 3 {
        return sentence.lowercased()
    } else {
        let indexToStartUppercase = sentence.index(sentence.endIndex, offsetBy: -3)
        let prefix = sentence.prefix(upTo: indexToStartUppercase)
        let suffix = sentence.suffix(from: indexToStartUppercase).uppercased()
        newSentence = String(prefix + suffix)
        return newSentence
    }
}

// 20. Write a Swift program to check if the first instance of "a" in a given string is immediately followed by another "a".
func first_instance_check(sentence : String) -> Bool {
    if let firstAIndex = sentence.firstIndex(of: "a") {
        let nextIndex = sentence.index(after: firstAIndex)
        
        if nextIndex < sentence.endIndex && sentence[nextIndex] == "a" {
            return true
        } else {
            return false
        }
    } else {
        return false
    }
}

// 21. Write a Swift program to create a string made of every other char starting with the first from a given string. So "Python" will return "Pto"
func word_patcher(userword : String) -> String {
    var new_word = ""
    
    if userword.isEmpty {
        return "Empty string"
    } else {
        for (index, char) in userword.enumerated() {
            if (index % 2 ) == 0 {
               new_word.append(char)
            }
        }
    }
    
    return new_word
}

// 22. Write a Swift program to count the number of 7's in a given array of integers.
func check_seven(array_of_numbers : [Int]) -> Int {
    var seven_counter = 0
    for num in array_of_numbers {
        if num == 7 {
            seven_counter += 1
        }
    }
    
    return seven_counter
}

// 23. Write a Swift program to check if one of the first 4 elements in a given array of integers is a 7. The length of the array may be less than 4.
func check_7array_in4(array_of_numbers : [Int]) -> Bool {
    if array_of_numbers.count < 4 {
        return false
    } else if array_of_numbers.prefix(4).contains(7) {
        return true
    }
    
    return false
}

// 24. Write a Swift program to test if the sequence of numbers 1, 2 , 3 appears in a given array of integers somewhere.
func check_sequence(array_of_numbers : [Int]) -> Bool {
    guard array_of_numbers.count >= 3 else {
            return false
    }
        
    for (index, number) in array_of_numbers.enumerated() {
        if array_of_numbers[index] == 1 && array_of_numbers[index + 1] == 2 && array_of_numbers[index + 2] == 3 {
            return true
        }
    }

    return false
}

// 25. Write a Swift program to create a new string where all the character "a" have been removed except the first and last positions.
func a_remover(sentence : String) -> String {
    var new_sentence = sentence
    let start = new_sentence.index(after: new_sentence.startIndex)
    let end = new_sentence.index(before: new_sentence.endIndex)
    let middle_range = start ..< end
    
    guard !sentence.isEmpty else {
        return "Collected string is too small"
    }
       
    var sub_string = new_sentence.substring(with: middle_range)
       
    while sub_string.contains("a") {
        sub_string.remove(at: sub_string.firstIndex(of: "a")!)
    }
       
    new_sentence.replaceSubrange(middle_range, with: sub_string)
       
    return new_sentence
}

// 26. Write a Swift program to create a string taking characters at indexes 0, 2, 4, 6, 8, .. from a given string.
func char_remover_atindex(sentence : String) -> String {
    var new_word = ""
    
    if sentence.isEmpty {
        return "Empty string"
    } else {
        for (index, char) in sentence.enumerated() {
            if (index % 2 ) == 0 {
               new_word.append(char)
            }
        }
    }
    
    return new_word
}

// 27. Write a Swift program to count the number of times that two 7's are next to each other in a given array of integers.
func check_double_7(array_of_numbers : [Int]) -> Int {
    var double_counter = 0
    
    guard array_of_numbers.count >= 2 else {
            return 0
    }
    
    for (index, number) in array_of_numbers.enumerated() {
        if array_of_numbers[index] == 7 && array_of_numbers[index + 1] == 7 {
            double_counter += 1
        }
    }
    
    return double_counter
}

// 28. Write a Swift program to test whether a value presents sequentially three times in an array of integers or not.
func check_tripple(array_of_numbers : [Int]) -> Int {
    var tripple_counter = 0
    
    guard array_of_numbers.count >= 3 else {
            return 0
    }
    
    for (index, number) in array_of_numbers.enumerated() {
        if array_of_numbers[index] == index && array_of_numbers[index + 1] == index && array_of_numbers[index + 1] == index {
            tripple_counter += 1
        }
    }
    
    return tripple_counter
}

/*
 Swift Learning Journey
 Chapter 2 : Arrays
*/

// 1. Write a Swift program to check if 5 appears as either the first or last element in a given array of integers. The array length should be 1 or more.
func hasFive(arrayOfNumbers: [Int]) -> Bool {
    guard arrayOfNumbers.count >= 1 else {
        return false
    }
    
    return arrayOfNumbers.first == 5 || arrayOfNumbers.last == 5
}

// 2. Write a Swift program to check whether the first element and the last element of a given array of integers are equal. The array length must be 1 or more.
func areFirstAndLastEqual(arrayOfNumbers: [Int]) -> Bool {
    guard arrayOfNumbers.count >= 1 else {
        return false
    }
    
    return arrayOfNumbers.first == arrayOfNumbers.last
}

// 3. Write a Swift program to test if two given arrays of integers have the same first and last element. Both arrays length must be 1 or more.
func haveSameFirstAndLast(arrayOne: [Int], arrayTwo: [Int]) -> Bool {
    guard arrayOne.count >= 1 && arrayTwo.count >= 1 else {
        return false
    }
    
    return arrayOne.first == arrayTwo.first && arrayOne.last == arrayTwo.last
}

// 4. Write a Swift program to compute the sum of all the elements of a given array of integers and length 4.
func sumOfFourElements(arrayOfNumbers: [Int]) -> Int {
    guard arrayOfNumbers.count == 4 else {
        return 0
    }
    
    return arrayOfNumbers.reduce(0, +)
}

// 5. Write a Swift program to rotate the elements of an array of integers to left direction. Therefore {1, 2, 3} yields {2, 3, 1}.
func rotateLeft(arrayOfNumbers: [Int]) -> [Int] {
    guard arrayOfNumbers.count >= 2 else {
        return arrayOfNumbers
    }
    
    var rotatedArray = arrayOfNumbers
    let firstElement = rotatedArray.removeFirst()
    rotatedArray.append(firstElement)
    
    return rotatedArray
}

// 6. Write a Swift program to create a new array with the elements in reverse order of a given array of integers.
func reverseArray(arrayOfNumbers: [Int]) -> [Int] {
    guard arrayOfNumbers.count >= 2 else {
        return arrayOfNumbers
    }
    
    var reversedArray : [Int] = arrayOfNumbers.reversed()
    return reversedArray
}

// 7. Write a Swift program to find the larger value of a given array of integers and set all the other elements with that value. Return the changed array.
func setAllToLargerValue(arrayOfNumbers: [Int]) -> [Int] {
    guard arrayOfNumbers.count >= 2 else {
        return arrayOfNumbers
    }
    
    if let max = arrayOfNumbers.max() {
        var largerArray = arrayOfNumbers
        
        for index in 0..<largerArray.count {
            largerArray[index] = max
        }
        
        return largerArray
    } else {
        return arrayOfNumbers
    }
}

// 8. Write a Swift program to compute the sum of the first 2 elements of a given array of integers. Return 0 if the length of the given array is 0 and return the first element value If the array length is less than 2.
func sumOfFirstTwoElements(arrayOfNumbers: [Int]) -> Int {
    guard !arrayOfNumbers.isEmpty else {
        return 0
    }
    
    if arrayOfNumbers.count <= 2 {
        return arrayOfNumbers.startIndex
    }
    
    var firstIndex = arrayOfNumbers[0]
    var secondIndex = arrayOfNumbers[1]
    
    var sum = firstIndex + secondIndex
    return sum
}

// 9. Write a Swift program to create a new array of length 2 containing the middle elements from two give array of integers and length 3.
func addMiddleElement(arrayOfNumbers1: [Int], arrayOfNumbers2: [Int] ) -> [Int] {
    var newArray: [Int] = []
    
    guard arrayOfNumbers1.count == 3 && arrayOfNumbers2.count == 3 else {
        return newArray
    }
    
    newArray.append(arrayOfNumbers1[1])
    newArray.append(arrayOfNumbers2[1])
    
    return newArray
}

// 10. Write a Swift program to create a new array of length 2 containing the first and last elements from a given array of integers. The given array length must be 1 or more.
func takeFirstLast(arrayOfNumbers1: [Int]) -> [Int] {
    var newArray: [Int] = []
    guard arrayOfNumbers1.count >= 1 else {
        return newArray
    }
    
    newArray.append(arrayOfNumbers1.first!)
    newArray.append(arrayOfNumbers1.last!)
    
    return newArray
}

// 11. Write a Swift program to test if an array of integers contains a 3 or a 5.
func checkContains_3_5(arrayOfNumbers1: [Int]) -> Bool {
    guard arrayOfNumbers1.count >= 2 else {
        return false
    }
    
    if arrayOfNumbers1.contains(3) || arrayOfNumbers1.contains(5) {
        return true
    } else {
        return false
    }
}

// 12. Write a Swift program to test if an array of integers does not contain a 3 or a 5.
func checkNotContains_3_5(arrayOfNumbers1: [Int]) -> Bool {
    guard arrayOfNumbers1.count >= 2 else {
        return false
    }
    
    if !arrayOfNumbers1.contains(3) || !arrayOfNumbers1.contains(5) {
        return true
    } else {
        return false
    }
}

// 13. Write a Swift program to create a new array with double the length of a given array of integers and its last element is the same as the given array. The given array will be length 1 or more. By default, a new integer array contains all 0's.
func createNewArrayWithDoubleLength(arrayOfNumbers1: [Int]) -> [Int] {
    var newArray = Array(repeating: 0, count: arrayOfNumbers1.count * 2)
    
    for i in 0..<arrayOfNumbers1.count {
        newArray[i] = arrayOfNumbers1[i]
    }
    
    newArray[arrayOfNumbers1.count * 2 - 1] = arrayOfNumbers1[arrayOfNumbers1.count - 1]
    
    return newArray
}

// 14. Write a Swift program to check if a given array of integers contains 3 twice, or 5 twice.
func checkTwiceContains_3_5(arrayOfNumbers1: [Int]) -> Bool {
    guard arrayOfNumbers1.count >= 2 else {
        return false
    }
    var threeCounter: Int = 0
    var fiveCounter: Int = 0
    
    for num in arrayOfNumbers1 {
        if num == 3 {
            threeCounter += 1
        } else if num == 5 {
            fiveCounter += 1
        }
    }
    
    return threeCounter == 2 || fiveCounter == 2
}

// 15. Write a Swift program to check if two given arrays of integers have 0 as their first element.
func check_contains_0(arrayOfNumbers1: [Int], arrayOfNumbers2: [Int]) -> Bool {
    guard arrayOfNumbers1.count >= 1 && arrayOfNumbers2.count >= 1 else {
        return false
    }
    
    if arrayOfNumbers1.first == 0 && arrayOfNumbers2.first == 0 {
        return true
    } else {
        return false
    }
}

// 16. Write a Swift program to compute the sum of the values of two given array of integers and each length 2. Find the array which has the largest sum and return the first array if the sum of two given arrays are equal.
func checkGreatestArray(arrayOfNumbers1: [Int], arrayOfNumbers2: [Int]) -> [Int] {
    guard arrayOfNumbers1.count >= 2 && arrayOfNumbers2.count >= 2 else {
        return [0,0,0,0]
    }
    
    var sumOne: Int = 0, sumTwo: Int = 0

    for num in arrayOfNumbers1{
        sumOne += num
    }
    
    for num in arrayOfNumbers2{
        sumTwo += num
    }
    
    if sumOne > sumTwo {
        return arrayOfNumbers1
    } else if sumOne == sumTwo {
        return arrayOfNumbers1
    } else {
        return arrayOfNumbers2
    }
}

// 17. Write a Swift program to create an array of length 2 containing the middle two elements from a given array of integers and even length 2 or more.
func addMiddleOfArray(arrayOfNumbers1: [Int]) -> [Int] {
    guard arrayOfNumbers1.count >= 2 else {
        return [0,0]
    }
    
    var newArray: [Int] = []
    
    if arrayOfNumbers1.count % 2 == 0 {
        let secondValue = arrayOfNumbers1.count / 2
        let firstValue = secondValue - 1
        newArray.append(arrayOfNumbers1[firstValue])
        newArray.append(arrayOfNumbers1[secondValue])
    }
    return newArray
}

// 18. Write a Swift program to test if an array of length four containing all their elements from two given array (each length two) of integers.
func appendArray(arrayOfNumbers1: [Int], arrayOfNumbers2: [Int]) -> [Int]{
    guard arrayOfNumbers1.count >= 2 && arrayOfNumbers2.count >= 2 else {
        return [0,0]
    }
    
    var newArray: [Int] = []
    
    newArray.append(contentsOf: arrayOfNumbers1)
    newArray.append(contentsOf: arrayOfNumbers2)
    
    return newArray
}

// 19. Write a Swift program to swap the first and last elements of a given array of integers. Return the modified array (length will be at least 1).
func swapFirstLast(arrayOfNumbers1: [Int]) -> [Int]{
    guard arrayOfNumbers1.count >= 1  else {
        return [0,0]
    }
    
    var newArray: [Int] = arrayOfNumbers1
    
    newArray.swapAt(0, newArray.count - 1)
    
    return newArray
}

// 20. Write a Swift program to create a new array of length 3 containing the elements from the middle of a given array of integers and length will be at least 3.
func addMiddleOf3(arrayOfNumbers1: [Int]) -> [Int] {
    guard arrayOfNumbers1.count >= 3 else {
        return [0,0,0]
    }
    
    var newArray: [Int] = []
    
    if arrayOfNumbers1.count % 2 == 1 {
        let secondValue = arrayOfNumbers1.count / 2
        let firstValue = secondValue - 1
        let thirdValue = secondValue + 1
        newArray.append(arrayOfNumbers1[firstValue])
        newArray.append(arrayOfNumbers1[secondValue])
        newArray.append(arrayOfNumbers1[thirdValue])
    }
    return newArray
}

// 21. Write a Swift program to find the largest value from the first, last, and middle values in a given array of integers and length will be at least 1.
func checkLargest(arrayOfNumbers1: [Int]) -> Int {
    guard arrayOfNumbers1.count >= 1 else {
        return 0
    }
    
    var middleValue: Int = arrayOfNumbers1.count / 2
    var firstValue: Int = arrayOfNumbers1.first ?? 0
    var lastValue: Int = arrayOfNumbers1.last ?? 0
    
    let largestValue = max(firstValue, lastValue, middleValue)
    
    return largestValue
}

// 22. Write a Swift program to create a new array, taking first two elements from a given array of integers. If the length of the given array is less than 2 use the single element of the given array.
func takeFirstSecond(arrayOfNumbers1: [Int]) -> [Int] {
    guard arrayOfNumbers1.count >= 1 else {
        return [0]
    }
    
    var newArray: [Int] = []
    var firstValue: Int = arrayOfNumbers1.first ?? 0
    var secondValue: Int = arrayOfNumbers1[1]
    
    newArray.append(firstValue)
    newArray.append(secondValue)
    
    return newArray
}

// 23. Write a Swift program to create a new array taking the first element from two given arrays of integers. If either array is length 0, ignore that array.
func takeFirstSecondInTwoArrays(arrayOfNumbers1: [Int], arrayOfNumbers2: [Int]) -> [Int] {
    guard !arrayOfNumbers1.isEmpty && !arrayOfNumbers2.isEmpty else {
         return []
     }

    var newArray = [Int]()
    
    if arrayOfNumbers1.count == 0 && arrayOfNumbers2.count != 0 {
        newArray.append(arrayOfNumbers2.first!)
    } else if arrayOfNumbers1.count != 0 && arrayOfNumbers2.count == 0 {
        newArray.append(arrayOfNumbers1.first!)
    } else {
        newArray.append(arrayOfNumbers1.first!)
        newArray.append(arrayOfNumbers2.first!)
    }
    
    return newArray
}

// 24. Write a Swift program to count the number of even integers in the given array.
func countEvenNumbers(arrayOfNumbers1: [Int]) -> Int {
    guard arrayOfNumbers1.count >= 1 else {
        return 0
    }
    
    var counter: Int = 0
    
    for numbers in arrayOfNumbers1 {
        if numbers % 2 == 0 {
            counter += 1
        }
    }
    
    return counter
}

// 25. Write a Swift program to find the difference between the largest and smallest values in a given array of integers and length 1 or more.
func diffMinMax(arrayOfNumbers1: [Int]) -> Int {
    guard !arrayOfNumbers1.isEmpty else {
        return 0
    }
    
    var minValue = arrayOfNumbers1[0]
    var maxValue = arrayOfNumbers1[0]
    
    for x in 0..<arrayOfNumbers1.count {
        minValue = min(arrayOfNumbers1[x], minValue)
        maxValue = max(arrayOfNumbers1[x], maxValue)
    }
    
    return maxValue - minValue
}


// 26. Write a Swift program to compute the sum of the numbers of a given array of integers except the number immediately after a 11.
func sumExceptAfter11(arrayOfNumbers: [Int]) -> Int {
    guard !arrayOfNumbers.isEmpty else {
        return 0
    }
    
    var sum = 0
    var skipNext = false
    
    for number in arrayOfNumbers {
        if skipNext {
            skipNext = false
        } else {
            if number == 11 {
                skipNext = true
            } else {
                sum += number
            }
        }
    }
    
    return sum
}

// 27. Write a Swift program to check if a given array of integers contains a 3 next to a 3 somewhere.
func checkOnDubble3(_ arrayOfInt: [Int]) -> Bool {
    guard !arrayOfInt.isEmpty else {
        return false
    }

    for i in 0.. < arrayOfInt.count - 1 {
        if arrayOfInt[i] == 3 && arrayOfInt[i + 1] == 3 {
        return true
        }
    }
    return false
}

// 28. Write a Swift program to test if the number of 1's is greater than the number of 3's of a given array of integers.
func checkNumbers(_ arrayOfInt: [Int]) -> Bool {
    var isIncreasing = 0
    var isDecreasing = 0

    guard !arrayOfInt.isEmpty else {
        return false
    }
    
    for i in 0..<arrayOfInt.count {
        if arrayOfInt[i] == 1{
        isDecreasing += 1
        } else if arrayOfInt[i] == 3 {
        isIncreasing += 1
        }
    }

  return isDecreasing > isIncreasing
}

// 29. Write a Swift program to test if every element is a 2 or a 5 of a given array of integers.
func testing2or5(_ arrayOfInt: [Int]) -> Bool {
    guard !arrayOfInt.isEmpty else {
        return false
    }
    
    for i in 0..<arrayOfInt.count {
        if arrayOfInt[i] == 2 || arrayOfInt[i] == 5{
        return true
        }
    }

  return false
}

// 30. Write a Swift program to check if a given array of integers contains no 2's or it contains no 5's.
func testingNot2or5(_ arrayOfInt: [Int]) -> Bool {
    guard !arrayOfInt.isEmpty else {
        return false
    }

    var number_count2 = 0
    var number_count5 = 0
    
    for numbers in arrayOfInt {
        if numbers == 2 {
        number_count2 += 1
        } else if numbers == 5 {
        number_count5 += 1
        }
    }
  
  return number_count2 == 0 || number_count5 == 0
}

// 31. Write a Swift program to check if a given array of integers contains a 3 next to a 3 or a 5 next to a 5, but not both.
func check33Or55(_ arrayOfInt: [Int]) -> Bool {
    guard !arrayOfInt.isEmpty else {
        return false
    }

    var numberCheck3 = false
    var numberCheck5 = false

    for index in 0..<(arrayOfInt.count - 1) {
        if arrayOfInt[index] == 3 && arrayOfInt[index + 1] == 3 {
            numberCheck3 = true
        } else if arrayOfInt[index] == 5 && arrayOfInt[index + 1] == 5 {
            numberCheck5 = true
        }
    }
  
  return (numberCheck3 && !numberCheck5) || (!numberCheck3 && numberCheck5)
}

// 32. Write a Swift program to test if a given array of integers contains two 5's next to each other, or there are two 5's separated by one element.
func check55(_ arrayOfInt: [Int]) -> Bool {
  guard !arrayOfInt.isEmpty else {
    return false
  }

  for index in 0..<(arrayOfInt.count - 1) {
    if (arrayOfInt[index] == 5 && arrayOfInt[index + 1] == 5) || (arrayOfInt[index] == 5 && arrayOfInt[index + 2] == 5) {
        return true
    }
  }
  
  return false
}

// 33. Write a Swift program to test if there is a 1 in the array with a 3 somewhere later in a given array of integers.
func check1and3(_ arrayOfInt: [Int]) -> Bool {
  guard !arrayOfInt.isEmpty else {
    return false
  }

  var check1FollowedBy3 = false
  
  for index in 0..<(arrayOfInt.count - 1) {
      if arrayOfInt[index] == 1 {
          for nextIndex in index+1..<arrayOfInt.count {
              if arrayOfInt[nextIndex] == 3 {
                  check1FollowedBy3 = true
                  break
              }
          }
      }
  }
  
  return check1FollowedBy3
}

// 34. Write a Swift program to test if a given array of integers contains either 2 even or 2 odd values all next to each other.
func check2OddOrEven(_ arrayOfInt: [Int]) -> Bool {
  guard !arrayOfInt.isEmpty else {
    return false
  }

  var hasTwoEvenOrOddAdjacent = false

  for i in 0..<(arrayOfInt.count - 1) {
      if arrayOfInt[i] % 2 == 0 && arrayOfInt[i+1] % 2 == 0 {
          hasTwoEvenOrOddAdjacent = true
          break
      } 
      
      if arrayOfInt[i] % 2 != 0 && arrayOfInt[i+1] % 2 != 0 {
          hasTwoEvenOrOddAdjacent = true
          break
      }
  }

  return hasTwoEvenOrOddAdjacent
}

// 35. Write a Swift program to test if the value 5 appears in a given array of integers exactly 2 times, and no 5's are next to each other.
func check2OddOrEven(_ arrayOfInt: [Int]) -> Bool {
    guard !arrayOfInt.isEmpty else {
        return false
    }

    var has5 = 0

    for i in 0..<(arrayOfInt.count - 1) {
        if arrayOfInt[i] == 5 && arrayOfInt[i + 1] != 5 {
            has5 += 1
        }
    }

    return has5 == 2
}

// 36. Write a Swift program to test if every 3 that appears in a given array of integers is next to another 3.
func check33(_ arrayOfInt: [Int]) -> Bool {
    guard !arrayOfInt.isEmpty else {
        return false
    }

    var numberCheck3 = false

    for index in 0..<(arrayOfInt.count - 1) {
        if arrayOfInt[index] == 3 && arrayOfInt[index + 1] == 3 {
            numberCheck3 = true
        } 
    }

  return numberCheck3
}

// 37. Write a Swift program to test if a given array of integers contains three increasing adjacent numbers.
func checkIncrement(_ arrayOfInt: [Int]) -> Bool{
    guard !arrayOfInt.isEmpty else {
        return false
    }

    var check3increasment = false
  
    for i in 1..<arrayOfInt.count - 1{
      if arrayOfInt[i] == arrayOfInt[i + 1] - 1 && arrayOfInt[i + 1] == arrayOfInt[i + 2] - 1 {
        check3increasment = true
      }
    }

    return check3increasment
}

// 38. Write a Swift program to create a new array that is left shifted from a given array of integers. So [11, 15, 13, 10, 45, 20] will be [15, 13, 10, 45, 20, 11].
func shiftLeft(_ arrayOfInt: [Int]) -> [Int]{
    guard !arrayOfInt.isEmpty else {
        return [0]
    }

    var newArray = arrayOfInt
  
    for i in 1..<arrayOfInt.count {
      newArray[i - 1] = arrayOfInt[i]
    }

    newArray[newArray.count - 1] = arrayOfInt.first!

    return newArray
}

/*
 Swift Learning Journey
 Chapter 3 : Strings
*/

// 1. Write a Swift program to draw a HTML string as bold or italic text. 
func htmlBodyTag(_ tag: String, _ title: String) -> String {
  let tagName = "<\(tag)>"
  let endTag = ""

  return "\(tagName) \(title) \(endTag)"
}

// 2. Write a Swift program to insert a given string to another given string where the second string will be in the middle of the first string.
func combineString(_ string1: String, _ word: String) -> String {
    let mid = string1.count / 2
    let start = string1.prefix(mid)
    let end = string1.suffix(string1.count - mid)
  
    return start + word + end
}

// 3. Write a Swift program to create a string made of two copies of the last two characters of a given string. The given string length must be at least 2.
func lastTwoAsString(_ string1: String) -> String {
    var newString: String = ""
    let lastTwo = string1.suffix(2)

    for _ in 0..<2 {
       newString.append(contentsOf: lastTwo)
    }
     
    return newString
}

// 4. Write a Swift program to create a new string made of a copy of the first two characters of a given string. If the given string is shorter than length 2, return whatever there is.
func firstTwoAsString(_ string1: String) -> String {
    let newString = string1.prefix(2)

    return "\(newString)"
}

// 5. Write a Swift program to return the first half of a given string of even length.
func firstHalf(_ string1: String) -> String {
    guard string1.count % 2 == 0 else {
      return "[ERROR] : String isn't even"
    }

    let half = string1.count / 2

    return String(string1.prefix(half))
}


// 6. Write a Swift program to create a new string without the first and last character of a given string. The string length must be at least 2.
func removeFirstLast(_ string1: String) -> String {
    var string2 = string1

    guard string2.count > 2 else {
      return "[ERROR] : String is too short"
    }
  
    string2.removeFirst()
    string2.removeLast()
  
    return string2
}

// 7. Write a Swift program that accept two strings of different length and return a string of the form short+long+short. Two given string's length may be 0.
func combineShortLongShort(_ string1: String, _ string2: String) -> String {
    if string1.count < string2.count {
        return string1 + string2 + string1
    } else {
        return string2 + string1 + string2
    }
}

// 8. Write a Swift program that accept two strings and return their concatenation, except the first char of each string. The given strings length must be at least 1.
func removeFirstOfBoth(_ string1: String, _ string2: String) -> String {
    var string1Copy = string1
    var string2Copy = string2
    var result = ""
    if !string1Copy.isEmpty {
        string1Copy.removeFirst()
    }
    if !string2Copy.isEmpty {
        string2Copy.removeFirst()
    }

    result.append(contentsOf: string1Copy)
    result.append(contentsOf: string2Copy)
  
    return result
}

// 9. Write a Swift program to move the first two characters of a given string to the end. The given string length must be at least 2.
func setFirstTwoAtBack(_ string1: String) -> String {
    var newString: String = ""
    var str1 = string1

    let firstTwo = string1.prefix(2)

    str1.removeFirst()
    str1.removeFirst()
  
    newString.append(contentsOf: str1)
    newString.append(contentsOf: firstTwo)

    return newString
}

// 10. Write a Swift program to move the last two characters of a given string to the start. The given string length must be at least 2.
func setLastTwoAsFirst(_ string1: String) -> String {
    let lastTwo = string1.suffix(2)
    var newString: String = ""
    var str1 = string1

    str1.removeLast()
    str1.removeLast()
  
    newString.append(contentsOf: lastTwo)
    newString.append(contentsOf: str1)

    return newString
}

// 11. Write a Swift program to create a new string without the first and last character of a given string. The string may be any length, including 0.
func removeFirstLast(_ string1: String) -> String {
    let string2 = string1.dropFirst().dropLast()

    return String(string2)
}

// 12. Write a Swift program to create a new string taking the middle two characters of a given string of even length. The given string length must be at least 2.
func getMiddleTwoChars(_ string: String) -> String {
    guard string.count >= 2 && string.count % 2 == 0 else {
        return "nil"
    }

    let middleIndex = string.index(string.startIndex, offsetBy: string.count / 2)
    let startIndex = string.index(before: middleIndex)
    let endIndex = string.index(after: middleIndex)

    return String(string[startIndex..<endIndex])
}

// 13. Write a Swift program to test if a given string starts with "ab".
func checkStartab(_ string1: String) -> String {
  guard string1.count >= 2 else {
      return "nil"
  }

  let firstTwo = string1.prefix(2)

  if firstTwo == "ab" {
    return "yes"
  } else {
    return "no"
  }
}

// 14. Write a Swift program to create a new string made of the first and last n chars from a given string. The string length will be at least n.
func getFirstLastofUser(_ string1: String, _ index: Int) -> String {
  guard string1.count >= 2 else {
      return "nil"
  }
  var newString: String = ""
  let first = String(string1.prefix(index))
  let last = String(string1.suffix(index))

  newString.append(first)
  newString.append(last)

  return newString  
}

// 15. Write a Swift program to create a new string of length three from a given string of odd length from its middle. The string length must be three.
func createStringFromMiddle(_ string1: String) -> String {
    guard string1.count >= 3 else {
        return "nil"
    }

    let middleIndex = string1.index(string1.startIndex, offsetBy: string1.count / 2)
    let middleChar = string1[middleIndex]
    let prevMidleIndex = string1.index(before: middleIndex)
    let nextMidleIndex = string1.index(after: middleIndex)
  
    return String(string1[prevMidleIndex]) + String(middleChar) + String(string1[nextMidleIndex])
}


// 16. Write a Swift program to concate two given strings and return the new string. If the new string creates a double character then omit one of the character. so "vwx" and "xyz" will return "vwxyz".
func combineStringWithoutDouble(_ string1: String, _ string2: String) -> String {
  var str1 = string1
  let str2 = string2

  if str1.last == str2.first {
    str1.removeLast()
  }

  return str1 + str2
}

// 17. Write a Swift program to create a new string of any length from a given string where the last two characters are swapped, so "abcde" will be "abced".
func swapLastTwo(_ string1: String) -> String {
  var string2 = string1
  
  let lastIndex = string2.removeLast()
  let lastTwo = string2.removeLast()
  
  string2.append(lastIndex)
  string2.append(lastTwo)
  
  return string2                                    
}

// 18. Write a Swift program to return "abc" or "xyz" if a given string begins with "abc" or "xyz" otherwise return the empty string.
func checkStart(_ string1: String) -> String {
  guard string1.count >= 3 else {
      return "nil"
  }

  let firstTwo = string1.prefix(3)

  if firstTwo == "abc" {
    return String(firstTwo)
  } else if firstTwo == "xyz" {
    return String(firstTwo)
  } else {
    return ""
  }
}

// 19. Write a Swift program to check if the first two characters are same of the last two characters of a given string.
func checkStartEnd(_ string1: String) -> Bool {
  let firstTwo = string1.prefix(2)
  let lastTwo = string1.suffix(2)

  if firstTwo == lastTwo {
    return true
  } else {
    return false
  }
}

// 20. Write a Swift program to create a new string made of 2 copies of the first 2 characters of a given string. The string may be any length.
func firstTwo(_ string1: String) -> String {
    let newString = string1.prefix(2)

    return "\(newString)" + "\(newString)"
}

// 21. Write a Swift program to check if the first or last characters are 'a' of a given string, return the given string without those 'a' characters, and otherwise return the given string. 
func removeAatFirstLast(_ string1: String) -> String {
  var newString = string1

  if newString.hasPrefix("a") {
    newString.removeFirst()
  }

  if newString.hasSuffix("a") {
    newString.removeLast()
  }

  return newString
}

print("Welcome to my Swift Learning Journey!")
print("Chapter 1: Basics")
print("Learn the fundamentals of Swift programming language.")
// Example 1
print(summing(firts_digit: 55, second_digit: 5))

// Example 2
print(compute(digit: 45))

// Example 3
print(accept(first_digit: 10, second_digit: 10))

// Example 4
print(digit_check(first_digit: 12, second_digit: 5))

// Example 5
print(string_check(sentence: "Is swift"))

// Example 6
print(remove_char(sentence: "Python", n: 1))

// Example 7
print(first_last_remover(sentence: "Apple"))

// Example 8
print(last_append(sentence: "Apple"))

// Example 9
print(non_negative_digit_check(number: 33))

// Example 10
print(two_digit_adder(sentence: "Apple"))

// Example 11
print(is_string_check(sentence: "I s appel "))

// Example 12
print(range_check(first_digit: 15, second_digit: 40))

// Example 13
print(find_character(word: "fix gold"))

// Example 14
print(find_largest(first_number: 200, second_number: 2, third_number: 130))

// Example 15
print(check_nearest(first_number: 8, second_number: 13))

// Example 16
print(check_20_40_range(first_number: 20, second_number: 30))

// Example 17
print(check_20_30_range(first_number: 22, second_number: 29))

// Example 18
print(areLastDigitsSame(firstNumber: 3, secondNumber: 13))

// Example 19
print(string_converter(sentence: "hi"))

// Example 20
print(first_instance_check(sentence: "abbcaad"))

// Example 21
print(word_patcher(userword: "Python"))

// Example 22
print(check_seven(array_of_numbers: [5,1,7,3,3,7,3]))

// Example 23
print(check_7array_in4(array_of_numbers: [1, 2, 7, 3, 4]))

// Example 24
print(check_sequence(array_of_numbers: [1, 2, 3, 4, 5]))

// Example 25
print(a_remover(sentence: "aabaaaacdaa"))

// Example 26
print(char_remover_atindex(sentence: "abcdefgh"))

// Example 27
print(check_double_7(array_of_numbers: [7, 7, 2, 7, 7, 5]))

// Example 28
print(check_tripple(array_of_numbers: [1, 1, 1, 2, 2]))

print("Chapter 2: Arrays")
print("Dive into the world of arrays and their manipulation.")
// Example for function 1
let array1 = [5, 2, 8, 3]
print("Function 1 Result: \(hasFive(arrayOfNumbers: array1))")

// Example for function 2
let array2 = [4, 7, 2, 4]
print("Function 2 Result: \(areFirstAndLastEqual(arrayOfNumbers: array2))")

// Example for function 3
let array3_1 = [1, 2, 3]
let array3_2 = [1, 4, 3]
print("Function 3 Result: \(haveSameFirstAndLast(arrayOne: array3_1, arrayTwo: array3_2))")

// Example for function 4
let array4 = [3, 5, 1, 7]
print("Function 4 Result: \(sumOfFourElements(arrayOfNumbers: array4))")

// Example for function 5
let array5 = [1, 2, 3]
print("Function 5 Result: \(rotateLeft(arrayOfNumbers: array5))")

// Example for function 6
let array6 = [4, 7, 2, 1, 9]
print("Function 6 Result: \(reverseArray(arrayOfNumbers: array6))")

// Example for function 7
let array7 = [3, 8, 2, 5, 8, 1]
print("Function 7 Result: \(setAllToLargerValue(arrayOfNumbers: array7))")

// Example for function 8
let array8 = [3, 8, 2, 5, 8, 1]
print("Function 8 Result: \(sumOfFirstTwoElements(arrayOfNumbers: array8))")

// Example for function 9
let array9_1 = [1, 2, 3]
let array9_2 = [4, 5, 6]
print("Funciton 9 Result: \(addMiddleElement(arrayOfNumbers1: array9_1, arrayOfNumbers2: array9_2))")

// Example for function 10
let array10 = [1, 2, 3]
print("Funciton 10 Result: \(takeFirstLast(arrayOfNumbers1: array10))")

// Example for function 11
let array11 = [1, 2, 3]
print("Funciton 11 Result: \(checkContains_3_5(arrayOfNumbers1: array11))")

// Example for function 12
let array12 = [1, 2, 3]
print("Funciton 12 Result: \(checkNotContains_3_5(arrayOfNumbers1: array12))")

// Example for function 13
let array13 = [1, 2, 3]
print("Funciton 13 Result: \(createNewArrayWithDoubleLength(arrayOfNumbers1: array13))")

// Example for function 14
let array14 = [5, 5, 3]
print("Funciton 14 Result: \(checkTwiceContains_3_5(arrayOfNumbers1: array14))")

// Example for function 15
let array15_1 = [0, 5, 3]
let array15_2 = [0, 5, 3]
print("Funciton 15 Result: \(check_contains_0(arrayOfNumbers1: array15_1, arrayOfNumbers2: array15_2))")

// Example for function 16
let array16_1 = [8, 2, 3]
let array16_2 = [1, 4, 3]
print("Funciton 16 Result: \(checkGreatestArray(arrayOfNumbers1: array16_1, arrayOfNumbers2: array16_2))")

// Example for function 17
let array17 = [5, 6, 7, 8, 9, 10]
print("Funciton 17 Result: \(addMiddleOfArray(arrayOfNumbers1: array17))")

// Example for function 18
let array18_1 = [5, 6]
let array18_2 = [7, 8]
print("Funciton 18 Result: \(appendArray(arrayOfNumbers1: array18_1, arrayOfNumbers2: array18_2))")

// Example for function 19
let array19 = [5, 6, 7, 8, 9, 10]
print("Funciton 19 Result: \(swapFirstLast(arrayOfNumbers1: array19))")

// Example for function 20
let array20 = [7, 5, 4, 1, 3, 0, 9]
print("Funciton 20 Result: \(addMiddleOf3(arrayOfNumbers1: array20))")

// Example for function 21
let array21 = [7, 5, 4, 1, 3, 0, 9]
print("Funciton 21 Result: \(checkLargest(arrayOfNumbers1: array21))")

// Example for function 22
let array22 = [7, 5, 4, 1, 3, 0, 9]
print("Funciton 22 Result: \(takeFirstSecond(arrayOfNumbers1: array22))")

// Example for function 23
let array23_1 = [5, 6]
let array23_2 = [7, 8]
print("Funciton 23 Result: \(takeFirstSecondInTwoArrays(arrayOfNumbers1: array23_1, arrayOfNumbers2: array23_2))")

// Example for function 24
let array24 = [7, 5, 4, 1, 3, 0, 9]
print("Funciton 24 Result: \(countEvenNumbers(arrayOfNumbers1: array24))")

// Example for function 25
let array25 = [7, 5, 4, 1, 3, 0, 9]
print("Funciton 25 Result: \(diffMinMax(arrayOfNumbers1: array25))")

// Example for function 26
let array26 = [1, 2, 11, 3, 4, 11, 5]
print("Funciton 26 Result: \(sumExceptAfter11(arrayOfNumbers: array26))")

// Example for function 27
let array27 = [1, 2, 11, 3, 4, 11, 5]
print("Funciton 27 Result: \(checkOnDubble3(array27))")

// Example for function 28
let array28 = [1, 2, 11, 3, 4, 11, 5]
print("Funciton 28 Result: \(checkNumbers(array28))")

// Example for function 29
let array29 = [1, 2, 11, 3, 4, 11, 5]
print("Funciton 29 Result: \(testing2or5(array29))")

// Example for function 30
let array30 = [1, 2, 11, 3, 4, 11, 5]
print("Funciton 30 Result: \(testingNot2or5(array30))")

// Example for function 31
let array31 = [5, 5, 1, 3, 3]
print("Funciton 31 Result: \(check33Or55(array31))")

// Example for function 32
let array32 = [5, 0, 5, 3, 3]
print("Funciton 32 Result: \(check55(array32))")

// Example for function 33
let array33 = [5, 0, 5, 3, 3]
print("Funciton 33 Result: \(check1and3(array33))")

// Example for function 34
let array34 = [5, 0, 1, 6, 2]
print("Funciton 34 Result: \(check2OddOrEven(array34))")

// Example for function 35
let array35 = [5, 0, 5, 3, 3]
print("Funciton 35 Result: \(check2OddOrEven(array35))")

// Example for function 36
let array36 = [5, 0, 5, 3, 3]
print("Funciton 36 Result: \(check33(array36))")

// Example for function 37
let array37 = [5, 0, 5, 3, 3]
print("Funciton 37 Result: \(check1and3(array37))")

// Example for function 38
let array38 = [1, 2, 7, 4, 5, 1]
print("Funciton 38 Result: \(checkIncrement(array38))")

print("Chapter 3: Strings")
print("Understand string operations and manipulations in Swift.")

// Example 1PythonResult: \(htmlBodyTag("h1", "Hello, World!"))")

// Example 2
print("Funciton 2 of strings Result: \(combineString("[]", "Hello, World!"))")

// Example 3
print("Funciton 3 of strings Result: \(lastTwoAsString("java"))")

// Example 4
print("Funciton 4 of strings Result: \(firfirstTwoAsStringstHalf("Jave"))")

// Example 5
print("Funciton 5 of strings Result: \(firstHalf("Python"))")

// Example 6
print("Funciton 6 of strings Result: \(removeFirstLast("Swift"))")

// Example 7
print("Funciton 7 of strings Result: \(combineShortLongShort("Swift", "_PROGRAMMING_")))")

// Example 8
print("Funciton 8 of strings Result: \(removeFirstOfBoth("swift", "coding"))")

// Example 9
print("Funciton 9 of strings Result: \(setFirstTwoAtBack("Swift"))")

// Example 10
print("Funciton 10 of strings Result: \(setLastTwoAsFirst("Swift"))")

// Example 11
print("Funciton 11 of strings Result: \(removeFirstLast("Swift"))")

// Example 12
print("Funciton 12 of strings Result: \(getMiddleTwoChars("Python"))")

// Example 13
print("Funciton 13 of strings Result: \(checkStartab("abpqrs"))")

// Example 14
print("Funciton 14 of strings Result: \(getFirstLastofUser("Python", 2))")

// Example 15
print("Funciton 15 of strings Result: \(createStringFromMiddle("Swift"))")

// Example 16
print("Funciton 16 of strings Result: \(combineStringWithoutDouble("VWX", "XYZ"))")

// Example 17
print("Funciton 17 of strings Result: \(swapLastTwo("abcde"))")

// Example 18
print("Funciton 18 of strings Result: \(checkStart("xyzwujkejl"))")

// Example 19
print("Funciton 19 of strings Result: \(checkStartEnd("abcdefab"))")

// Example 20
print("Funciton 20 of strings Result: \(firstTwo("Swift"))")

// Example 21
print("Funciton 21 of strings Result: \(removeAatFirstLast("abcda"))")













