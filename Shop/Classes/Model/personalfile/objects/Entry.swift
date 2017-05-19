import Foundation

class Entry {
    let id: String
    let date:Date
    let description:String

    init(_ description:String) {
        self.id = Date.init().description
        self.date = Date.init()
        self.description = description
    }

}