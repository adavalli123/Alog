class Solution {
    func flipAndInvertImage(_ image: [[Int]]) -> [[Int]] {
        /*
        1 1 0 => 0 1 1 => 1 0 0
        1 0 1 => 1 0 1 => 0 1 0
        0 0 0 => 0 0 0 => 1 1 1
        
        1 0 0
        0 1 0
        1 1 1
        */
        
        var image = image
        for (index, rowImg) in image.enumerated() {
            var rowImg = rowImg
            reverse(&rowImg)
            inverse(&rowImg)
            image[index] = rowImg
        }
        
        return image
    }
    
    func reverse(_ row: inout [Int]) {
        // for i in 0 ... row.count/2 {
        //     row.swapAt(i, row.count - 1 - i)
        // }
        row = row.reversed()
        
        // print(row)
    }
    
    func inverse(_ row: inout [Int]) {
        for i in 0 ..< row.count {
            row[i] = (row[i] == 1) ? 0 : 1
        }
    }
}