import UIKit

func asIs() {
    var s = 0
    let t: [Int] = Array(repeating: 0, count: 34)
    
    for j in 0 ..< 34 {
        s += (t[j] * 4) / 5
    }
}

func toBe() {
    let numberOfTasks: Int = 34
    let realDaysPerIdealDay: Int = 4
    let workDaysPerWeek: Int = 5 // 찾기가 쉬운 이름
    var sum: Int = 0 // 좋지 않은 이름이나 최소 검색이 가능
    let taskEstimate: [Int] = Array(repeating: 0, count: numberOfTasks)
    
    for j in 0 ..< numberOfTasks {
        let realTaskDays: Int = taskEstimate[j] * realDaysPerIdealDay
        let realTaskWeeks: Int = realTaskDays / workDaysPerWeek
        sum += realTaskWeeks
    }
}
