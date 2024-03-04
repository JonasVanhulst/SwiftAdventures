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

/*
 Swift Learning Journey
 Chapter 3 : Strings
*/

print("Welcome to my Swift Learning Journey!")
print("Chapter 1: Basics")
print("Learn the fundamentals of Swift programming language.")
// print(summing(firts_digit: 55, second_digit: 5))
// print(compute(digit: 45))
// print(accept(first_digit: 10, second_digit: 10))
// print(digit_check(first_digit: 12, second_digit: 5))
// print(string_check(sentence: "Is swift"))
// print(remove_char(sentence: "Python", n: 1))
// print(first_last_remover(sentence: "Apple"))
// print(last_append(sentence: "Apple"))
// print(non_negative_digit_check(number: 33))
// print(two_digit_adder(sentence: "Apple"))
// print(is_string_check(sentence: "I s appel "))
// print(range_check(first_digit: 15, second_digit: 40))
// print(find_character(word: "fix gold"))
// print(find_largest(first_number: 200, second_number: 2, third_number: 130))
// print(check_nearest(first_number: 8, second_number: 13))
// print(check_20_40_range(first_number: 20, second_number: 30))
// print(check_20_30_range(first_number: 22, second_number: 29))
// print(areLastDigitsSame(firstNumber: 3, secondNumber: 13))
// print(string_converter(sentence: "hi"))
// print(first_instance_check(sentence: "abbcaad"))
// print(word_patcher(userword: "Python"))
// print(check_seven(array_of_numbers: [5,1,7,3,3,7,3]))
// print(check_7array_in4(array_of_numbers: [1, 2, 7, 3, 4]))
// print(check_sequence(array_of_numbers: [1, 2, 3, 4, 5]))
// print(a_remover(sentence: "aabaaaacdaa"))
// print(char_remover_atindex(sentence: "abcdefgh"))
// print(check_double_7(array_of_numbers: [7, 7, 2, 7, 7, 5]))
// print(check_tripple(array_of_numbers: [1, 1, 1, 2, 2]))

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

let array7 = [3, 8, 2, 5, 8, 1]
print("Function 7 Result: \(setAllToLargerValue(arrayOfNumbers: array7))")

let array8 = [3, 8, 2, 5, 8, 1]
print("Function 8 Result: \(sumOfFirstTwoElements(arrayOfNumbers: array8))")


print("Chapter 3: Strings")
print("Understand string operations and manipulations in Swift.")

















