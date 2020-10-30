/*:
 # Problem 2 - Check Permutation
 * Given two strings, write a method to decide if one is a permutation of the other.

 # Hints
 * Describe what it means for two strings to be permutations of each other. Now, look at that definition you provided. Can you check the strings against that definition?
 * There is one solution that is 0 (N log N) time. Another solution uses some space, but isO(N) time.
 * Could a hash table be useful?
 * Two strings that are permutations should have the same characters, but in different
 orders. Can you make the orders the same?
 */

/// # URL: https://www.geeksforgeeks.org/check-if-two-strings-are-permutation-of-each-other/


/// # Brute Force
func checkPermutation(_ s: String, _ s1: String) -> Bool {
    guard s.count == s1.count else { return false }
    
    for ch in s {
        var isThere = false
        for ch1 in s1 {
            if ch == ch1 { isThere = true; break }
        }
        
        if !isThere { return false }
    }
    
    return true
}

func checkPermutation(_ s: String, _ s1: String) -> Bool {
    guard s.count == s1.count else { return false }
    
    var dict: [Character: Bool] = [:], isThere = true
    s.forEach { dict[$0] = true }
    s1.forEach { if dict[$0] == nil { isThere = false } }
    return isThere
}

func checkPermutation(_ s: String, _ s1: String) -> Bool {
    guard s.count == s1.count else { return false }
    return s.sorted() == s1.sorted()
}

checkPermutation("abc", "bca")

