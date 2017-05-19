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

    //зарплата
    func getSalaryList() -> [Salary]

    func addSalary(_ salary: Salary)

    func removeSalaryForIndex(_ index: Int)

    //премии Awards
    func getAwards() -> [Award]

    func addAward(_award: Award)

    func removeAwardInIndex(_ index: Int)

    //награды Rewards
    //предупреждения Warnings
    //штрафы Fines
    func getHistoryEmployeeInCompany() -> [Entry]

    func addEntry(_ entry: Entry)

    func removeEntryInIndex(_ index: Int)
}

class PersonalFileEmployee {
    let id: String
    var head: PTreeNode?
    var name: String
    var listSubjects: [PTreeNode]

    init(_ name: String, _ head: PTreeNode?) {
        self.id = Date.init().description
        self.head = head
        self.name = name
        self.listSubjects = [PTreeNode]()
    }

}














extension PersonalFileEmployee : PTreeNode{

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