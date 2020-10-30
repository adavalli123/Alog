*:
 # Problem 1 - IsUnique
 * Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?
 
 # Hints
 * Hash Map
 * Set
 * Vector
 * Can you solve in o(nlogn)
 */

/// # Brute Force
/// * Time Complexity - o(n^2); Space Complexity o(1)
func isUnique(_ s: String) -> Bool {
    for i in s.indices where s.indices.count > 1 {
        var index = s.index(after: i)
        
        while index < s.endIndex {
            if s[i] == s[index] { return false }
            index = s.index(after: index)
        }
    }
    
    return true
}

/// # Dict
/// * Time Complexity - o(n); Space Complexity o(n)
func isUnique(_ s: String) -> Bool {
    var dict: [Character: Bool] = [:]
    s.forEach { dict[$0] = true }
    return s.count == dict.count
}

/// # Set
/// * Time Complexity - o(n); Space Complexity o(n)
func isUnique(_ s: String) -> Bool {
    return s.count == Set(s).count
}

isUnique("ABCDEFA")
