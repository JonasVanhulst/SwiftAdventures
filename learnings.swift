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

// Write a Swift program to check if a given string begins with "fix", except the 'f' can be any character or number.
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

// Write a Swift program to find the largest number among three given integers.
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

// Write a Swift program that accept two integer values and to test which value is nearest to the value 10, or return 0 if both integers have same distance from 10.
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

// Write a Swift program that accept two integer values and test if they are both in the range 20..30 inclusive, or they are both in the range 30..40 inclusive.
func check_20_40_range(first_number : Int, second_number : Int) -> Bool {
    if (first_number >= 20 && second_number >= 20) && (first_number <= 30 && second_number <= 30) {
        return true
    } else if (first_number >= 30 && second_number >= 30) && (first_number <= 40 && second_number <= 40) {
        return true
    } else {
        return false
    }
}

// Write a Swift program that accept two positive integer values and test whether the larger value is in the range 20..30 inclusive, or return 0 if neither is in that range.
func check_20_30_range(first_number: Int, second_number: Int) -> Int {
    if (first_number >= 20 && first_number <= 30) || (second_number >= 20 && second_number <= 30) {
        return max(first_number, second_number)
    } else {
        return 0
    }
}

// Write a Swift program to test whether the last digit of the two given non-negative integer values are same or not.
func areLastDigitsSame(firstNumber: Int, secondNumber: Int) -> Bool {
    guard firstNumber >= 0 && secondNumber >= 0 else {
        return false
    }
    
    let lastDigitFirst = firstNumber % 10
    let lastDigitSecond = secondNumber % 10

    return lastDigitFirst == lastDigitSecond
}

// Write a Swift program to convert the last three characters in upper case. If the string has less than 3 chars, lowercase whatever is there.
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

// Write a Swift program to check if the first instance of "a" in a given string is immediately followed by another "a".
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



var tutorial = "swift, playground"

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
print(find_character(word: "fix gold"))
print(find_largest(first_number: 200, second_number: 2, third_number: 130))
print(check_nearest(first_number: 8, second_number: 13))
print(check_20_40_range(first_number: 20, second_number: 30))
print(check_20_30_range(first_number: 22, second_number: 29))
print(areLastDigitsSame(firstNumber: 3, secondNumber: 13))
print(string_converter(sentence: "hi"))
print(first_instance_check(sentence: "abbcaad"))
