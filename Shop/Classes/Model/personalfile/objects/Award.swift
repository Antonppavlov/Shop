import Foundation

class Award {
    let id: String
    var date: Date
    var money: Double

    init(_ money: Double) {
        self.id = Date.init().description
        self.date = Date.init()
        self.money = money
    }

}