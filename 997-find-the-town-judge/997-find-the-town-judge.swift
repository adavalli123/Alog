class Solution {
    func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
        var arr = Array(repeating: 0, count: n + 1)
        for i in 0..<trust.count {
            arr[trust[i][1]] += 1
            arr[trust[i][0]] -= 1
        }
        for i in 1..<arr.count {
            if arr[i] == n - 1 {return i}
        }
        return -1
    }
}