class Solution {
    func sumZero(_ n: Int) -> [Int] {
        return [Int](-n/2 ... n/2).filter { if $0 == 0, n % 2 == 0 { return false }; return true }
    }
}