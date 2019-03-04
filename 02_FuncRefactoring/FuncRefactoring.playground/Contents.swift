import UIKit

class Asis {
    let theList: [[Int]] = [[0, 4, 2] , [3, 5, 3]]
    func them() -> [[Int]] {
        var list1: [[Int]] = []
        for x: [Int] in theList {
            if x[0] == 4 {
                list1.append(x)
            }
        }
        
        return list1
    }
}


class TobeStep1 {
    let gameBoard: [[Int]] = [[0, 4, 2] , [3, 5, 3]]
    let STATUS_VALUE = 0
    let FLAGGED = 4
    
    func flaggedCells() -> [[Int]] {
        var flaggedCells: [[Int]] = []
        for cell: [Int] in gameBoard {
            if cell[STATUS_VALUE] == FLAGGED {
                flaggedCells.append(cell)
            }
        }
        return flaggedCells
    }
}

class TobeStep2 {
    struct Cell {
        var value: [Int] = []
        
        private let STATUS_VALUE = 0
        private let FLAGGED = 4
        
        init(_ value: [Int]) {
            self.value = value
        }
        
        var isFlagged: Bool {
            return value[STATUS_VALUE] == FLAGGED
        }
    }
    
    let gameBoard: [Cell] = [Cell([0, 4, 2]), Cell([3, 5, 3])]
    
    func flaggedCells() -> [Cell] {
        var flaggedCells: [Cell] = []
        for cell: Cell in gameBoard {
            if cell.isFlagged {
                flaggedCells.append(cell)
            }
        }
        return flaggedCells
    }
}
