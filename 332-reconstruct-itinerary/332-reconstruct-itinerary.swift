class Solution {
    func findItinerary(_ tickets: [[String]]) -> [String] {
            var dict: [String: [String]] = tickets.reduce(into: [:]) { $0[$1[0], default: []] += [$1[1]] }.mapValues { $0.sorted { $0 > $1 } }
    var stack: [String] = ["JFK"], result: [String] = []
    
    print(dict)
    while !stack.isEmpty {
        guard let pop = stack.last else { return [] }
        if dict[pop] != nil, dict[pop]!.count != 0 {
            stack.append(dict[pop]!.popLast()!)
        } else {
            result.append(stack.popLast()!)
        }
    }
    
    return result.reversed()
    }
}