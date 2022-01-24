class Solution {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        var dict: [Character: String] = [:]
        
        var seperatedArray: [String] = []
        var temp = ""
        Array(s).forEach {
            if String($0) == " " {
                seperatedArray.append(temp)
                temp = ""
            }
            
            else {
                 temp += String($0)
            }
        }
        
        if !temp.isEmpty {
            seperatedArray.append(temp)
        }
        
        guard Set(pattern).count == Set(seperatedArray).count, pattern.count == seperatedArray.count else { return false } 
        for (ch, str) in zip(pattern, seperatedArray) {
            if let val = dict[ch], !val.isEmpty, val != str {
                return false
            } 
            
            dict[ch] = str
        }   
        
        // print(dict)
        
        return true
    }
}