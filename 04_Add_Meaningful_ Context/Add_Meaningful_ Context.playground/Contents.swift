import UIKit

// 의미 있는 맥락을 추가하라.

class asIs {
    private func printGuessStatistics(candidate: Character, count: Int) {
        var number: String = ""
        var verb: String = ""
        var pluralModifier: String = ""
        if count == 0 {
            number = "no"
            verb = "are"
            pluralModifier = "s"
        } else if count == 1 {
            number = "1"
            verb = "is"
            pluralModifier = String(count)
        } else {
            number = String(count)
            verb = "are"
            pluralModifier = "s"
        }
        
        let guessMessage = String(format: "There %@ %@ %@%@", verb, number, String(candidate), pluralModifier)
        print(guessMessage)
    }
}

class toBe {
    public class GuessStatisticsMessage {
        private var number: String = ""
        private var verb: String = ""
        private var pluralModifier: String = ""
        
        public func make(candidate: Character, count: Int) -> String {
            createPluralDependentMessageParts(count: count)
            return String(format: "There %@ %@ %@%@", verb, number, String(candidate), pluralModifier)
        }
        
        private func createPluralDependentMessageParts(count: Int) {
            if count == 0 {
                thereAreNoLetters()
            } else if count == 1 {
                thereIsOneLetter()
            } else {
                thereAreManyLetters(count: count)
            }
        }
        
        private func thereAreManyLetters(count: Int) {
            number = String(count)
            verb = "are"
            pluralModifier = "s"
        }
        
        private func thereIsOneLetter() {
            number = "1"
            verb = "is"
            pluralModifier = ""
        }
        
        private func thereAreNoLetters() {
            number = "no"
            verb = "are"
            pluralModifier = "s"
        }
    }
}
