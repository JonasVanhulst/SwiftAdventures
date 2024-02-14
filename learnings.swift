import UIKit

// Write a Swift program to compute the sum of the two integers. If the values are equal return the triple their sum.
func summing(firts_digit : Int , second_digit : Int ) -> Int {
    if firts_digit == second_digit {
        return (firts_digit + second_digit) * 3
    } else {
        return firts_digit + second_digit
    }
}

// Write a Swift program to compute and return the absolute difference of n and 51, if n is over 51 return double the absolute difference.
func compute(digit : Int) -> Int {
    if digit > 51 {
        return (digit - 51) * 2
    } else {
        return 51 - digit
    }
}

// Write a Swift program that accept two integer values and return true if one of them is 20 or if their sum is 20.
func accept(first_digit : Int , second_digit : Int) -> Bool {
    if first_digit == 20 || second_digit == 20 || (first_digit + second_digit) == 20 {
        return true
    } else {
        return false
    }
}

// Write a Swift program to accept two integer values and return true if one is negative and one is positive. Return true only if both are negative.
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

// Write a Swift program to add "Is" to the front of a given string. However, if the string already begins with "Is", return the given string.
func string_check(sentence :  String) -> String {
    if sentence.hasPrefix("Is") {
        return sentence
    } else {
        return "Is \(sentence)"
    }
}

// Write a Swift program to remove a character at specified index of a given non-empty string. The value of the specified index will be in the range 0..str.length()-1 inclusive.
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

// Write a Swift program to change the first and last character of a given string.
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

// Write a Swift program to add the last character (given string) at the front and back of a given string. The length of the given string must be 1 or more.
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

// Write a Swift program to check if a given non-negative number is a multiple of 3 or a multiple of 5.
func non_negative_digit_check(number : Int) -> Bool {
    if number % 3 == 0 || number % 5 == 0 {
        return true
    } else {
        return false
    }
}

// Write a Swift program to take the first two characters from a given string and create a new string with the two characters added at both the front and back.
func two_digit_adder(sentence : String) -> String {
    let count = sentence.count
    
    if count < 1 {
        return sentence
    }
    
    let first_two = sentence.prefix(2)
    return first_two + sentence + first_two
}

// Write a Swift program to test a given string whether it starts with "Is". Return true or false.
func is_string_check(sentence : String) -> Bool {
    if sentence.hasPrefix("Is") {
        return true
    } else {
        return false
    }
}

// Write a Swift program that return true if either of two given integers is in the range 10..30 inclusive.
func range_check(first_digit : Int , second_digit : Int) -> Bool {
    if first_digit >= 10 && first_digit <= 30 {
        return true
    } else if second_digit >= 10 && second_digit <= 30 {
        return true
    } else {
        return false
    }
}

var greeting = "swift, playground"

print(summing(firts_digit: 55, second_digit: 5))
print(compute(digit: 45))
print(accept(first_digit: 10, second_digit: 10))
print(digit_check(first_digit: 12, second_digit: 5))
print(string_check(sentence: "Is swift"))
print(remove_char(sentence: "Python", n: 1))
print(first_last_remover(sentence: "Apple"))
print(last_append(sentence: "Apple"))
print(non_negative_digit_check(number: 33))
print(two_digit_adder(sentence: "Apple"))
print(is_string_check(sentence: "I s appel "))
print(range_check(first_digit: 15, second_digit: 40))




