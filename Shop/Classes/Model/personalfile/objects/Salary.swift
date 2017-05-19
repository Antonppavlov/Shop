import Foundation


class Salary{
    let id: String
    var paidPeriod: String
    var datePayment : Date
    var money: Double

    init(_ paidPeriod:String, _ money:Double) {
        self.id = Date.init().description
        self.paidPeriod=paidPeriod;
        self.datePayment=Date.init()
        self.money=money
    }

}