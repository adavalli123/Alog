class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var dict = magazine.reduce(into: [:]) { $0[$1, default: 0] += 1 }
        for ch in ransomNote {
            if let val = dict[ch], val > 0 { dict[ch, default: 0] -= 1; continue }
            return false
        }
        
        return true
    }
}