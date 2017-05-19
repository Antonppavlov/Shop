import Foundation

protocol PPeople {
    func getName() -> String
    func setName(name: String)
    func getDateOfBirth() -> Date
    func setDateOfBirth(date: Date)
    func getSex() -> Bool
    func setSex(sex: Bool)
    func getEducation() -> String
    func setEducation(education: String)
}

class People: PPeople {
    private var name: String
    private var dateOfBirth: Date
    private var sex: Bool
    private var education: String

    init(_ name: String,_ dateOfBirth: Date,_ sex: Bool,_ education: String) {
        self.name = name
        self.dateOfBirth = dateOfBirth
        self.sex = sex
        self.education = education
    }

    func getName() -> String {
        return name
    }

    func getDateOfBirth() -> Date {
        return dateOfBirth
    }

    func getSex() -> Bool {
        return sex
    }

    func getEducation() -> String {
        return education
    }

    func setName(name: String) {
        self.name = name
    }

    func setDateOfBirth(date: Date) {
        self.dateOfBirth = date
    }

    func setSex(sex: Bool) {
        self.sex = sex
    }

    func setEducation(education: String) {
        self.education = education
    }

}
