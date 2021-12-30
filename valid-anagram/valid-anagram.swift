class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var seen: [Character: Int] = [:]
        s.forEach { seen[$0] = (seen[$0] ?? 0) + 1  }
        t.forEach { seen[$0] = (seen[$0] ?? 0) - 1  }
        return seen.values.allSatisfy{ $0 == 0 }
    }
}