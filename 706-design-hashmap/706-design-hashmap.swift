
class MyHashMap {
    var dict: [Int: Int]
    init() {
        dict = [:]
    }
    
    func put(_ key: Int, _ value: Int) {
        dict[key] = value
    }
    
    func get(_ key: Int) -> Int {
        return dict[key] ?? -1
    }
    
    func remove(_ key: Int) {
        dict[key] = nil
    }
}

/**
 * Your MyHashMap object will be instantiated and called as such:
 * let obj = MyHashMap()
 * obj.put(key, value)
 * let ret_2: Int = obj.get(key)
 * obj.remove(key)
 */