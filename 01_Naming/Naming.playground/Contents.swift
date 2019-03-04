import UIKit

let d = "X" // 경과시간 (단위: 날짜)

// 측정하려는 값과 단위를 표현하는 이름이 필요

let elapsedTimeInDays = "O" // 경과 된 시간 (일)
let daysSinceCreation = "O" // 창조 이후의 날들
let daysSinceModification = "O" // 변경 이후 경과 일수
let fileAgeInDays = "O" // 파일 보존 기간

// 하지 말아야 할 변수 명
// Unix 변종을 가르키는 이름이기 때문
let hp = "X"
let aix = "X"
let sco = "X"

// 배열 명명 법
// List 는 피하라
let acoountGroup = "O"
let bunchOfAccounts = "O"
let Accounts = "O"

// Class 명명 법
// 클래스 이름과 객체 이름은 명사나 명사구가 적합하다.
// 동사는 사용하지 않는다.
class Customer { // O
    
}

class WikiPage { // O
    
}

class Account { // O
    
}

class AddressParser { // O
    
}

class Manager { // X
    
}

class Processor { // X
    
}

class Data { // X
    
}

class Info { // X
    
}
