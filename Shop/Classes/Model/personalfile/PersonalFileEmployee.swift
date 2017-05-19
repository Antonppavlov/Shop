import Foundation

/**
 * Позволяет создать древовидную структуру из любого набора объектов, которые реализуют интерфейс ITreeNode
 * Паттерн "Компановщик" - вольная реализация
 */

protocol PTreeNode {

    func getId() -> String //каждый элемент дерева должен иметь свой униальный индетификатор

    func getHeadId() -> String?


    func getName() -> String //каждый элемент должен иметь свое имя

    func addSubjects(_ child: PTreeNode) // добавить дочерный элемент

    func removeSubjects(_ child: PTreeNode) //удалить дочерний элемент

    func getListSubjects() -> [PTreeNode] //получить список дочерних элеметонв

    func getSubjects(_ id: String) -> PTreeNode? //получение дочернего элемента по id

    func setHead(_ head: PTreeNode?); //установка родительского элемента

    func getHead() -> PTreeNode? //получение родительсного элемента

    func hasSubjects() -> Bool //проверяет есть ли дочерние элементы

    func hasHead() -> Bool //проверяет есть ли дочерние элементы

}

protocol PPersonalFileEmployee {
    //дата найма
    func getDateOfEmployment() -> Date

    func setDateOfEmployment(_ date: Date)
    //Department
    func getDepartmentName() -> String

    func setDepartmentName(_ name: String)
    //position
    func getPositionName() -> String

    func setPositionName(_ name: String)

    //зарплата
    func getSalaryList() -> [Salary]

    func addSalary(_ salary: Salary)

    func removeSalaryForIndex(_ index: Int)

    //премии Awards
    func getAwards() -> [Award]

    func addAward(_ award: Award)

    func removeAwardInIndex(_ index: Int)

    //награды Rewards
    //предупреждения Warnings
    //штрафы Fines
    func getEntryList() -> [Entry]

    func addEntry(_ entry: Entry)

    func removeEntryInIndex(_ index: Int)
}

class PersonalFileEmployee {
    let id: String
    let name:String
    var head: PTreeNode?
    var listSubjects: [PTreeNode]


    var dateOfEmployment: Date
    var departmentName: String
    var positionName: String
    var salaryList: [Salary]
    var awardList: [Award]
    var entryList: [Entry]

    init(
            name: String,
            departmentName: String,
            positionName: String,
            dateOfEmployment: Date,
            head: PTreeNode?) {

        self.id = ""
        self.head = head
        self.name = name
        self.listSubjects = [PTreeNode]()

        self.dateOfEmployment=dateOfEmployment
        self.departmentName = departmentName
        self.positionName = positionName
        self.salaryList=[Salary]()
        self.awardList=[Award]()
        self.entryList=[Entry]()
    }

}


extension PersonalFileEmployee: PPersonalFileEmployee {
    func getDateOfEmployment() -> Date {
        return dateOfEmployment
    }

    func setDateOfEmployment(_ date: Date) {
        self.dateOfEmployment = date
    }

    func getDepartmentName() -> String {
        return departmentName
    }

    func setDepartmentName(_ name: String) {
        self.departmentName = name
    }

    func getPositionName() -> String {
        return positionName
    }

    func setPositionName(_ name: String) {
        self.positionName = name
    }

    func getSalaryList() -> [Salary] {
        return salaryList
    }

    func addSalary(_ salary: Salary) {
        salaryList.append(salary)
    }

    func removeSalaryForIndex(_ index: Int) {
        salaryList.remove(at: index)
    }

    func getAwards() -> [Award] {
        return awardList
    }

    func addAward(_ award: Award) {
        awardList.append(award)
    }

    func removeAwardInIndex(_ index: Int) {
        awardList.remove(at: index)
    }

    func getEntryList() -> [Entry] {
        return entryList
    }

    func addEntry(_ entry: Entry) {
        entryList.append(entry)
    }

    func removeEntryInIndex(_ index: Int) {
        entryList.remove(at: index)
    }

}


extension PersonalFileEmployee: PTreeNode {

    func getId() -> String {
        return id
    }

    func getHeadId() -> String? {
        if (head == nil) {
            return nil
        }
        return head!.getId()
    }

    func getName() -> String {
        return name
    }

    func addSubjects(_ child: PTreeNode) {
        listSubjects.append(child)
    }

    func removeSubjects(_ child: PTreeNode) {
        for index in 0..<listSubjects.count {
            if (listSubjects[index].getId() == child.getId()) {
                listSubjects.remove(at: index)
            }
        }
    }

    func getListSubjects() -> [PTreeNode] {
        return listSubjects
    }

    func getSubjects(_ id: String) -> PTreeNode? {
        for index in 0..<listSubjects.count {
            if (listSubjects[index].getId() == id) {
                return listSubjects[index]
            }
        }
        return nil
    }

    func getHead() -> PTreeNode? {
        return head
    }

    func setHead(_ head: PTreeNode?) {
        self.head = head
    }


    func hasSubjects() -> Bool {
        return listSubjects.count > 0
    }

    func hasHead() -> Bool {
        return head != nil
    }

}
