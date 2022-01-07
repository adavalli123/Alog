class Solution {
    func firstUniqChar(_ s: String) -> Int {
        let dict = s.reduce(into: [:]) { $0[$1, default: 0] += 1 }
        for (index, ch) in s.enumerated() { if dict[ch] == 1 { return index } }
        return -1
    }
}