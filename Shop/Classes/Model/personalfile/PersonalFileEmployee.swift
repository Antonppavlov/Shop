import Foundation

/**
 * Позволяет создать древовидную структуру из любого набора объектов, которые реализуют интерфейс ITreeNode
 * Паттерн "Компановщик" - вольная реализация
 */

protocol PTreeNode {

    func getId() -> String //каждый элемент дерева должен иметь свой униальный индетификатор

    func setId(_ id: String)

    func getHeadId() -> String

    func getName() -> String //каждый элемент должен иметь свое имя

    func addSubjects(_ child: PTreeNode) // добавить дочерный элемент

    func removeSubjects(_ child: PTreeNode) //удалить дочерний элемент

    func getListSubjects() -> [PTreeNode] //получить список дочерних элеметонв

    func getSubjects(_ id: String); //получение дочернего элемента по id

    func getHead() -> PTreeNode //получение родительсного элемента

    func setHead(_ parent: PTreeNode); //установка родительского элемента

    func hasSubjects() -> Bool //проверяет есть ли дочерние элементы

    func hasHead() -> Bool //проверяет есть ли дочерние элементы

}

protocol PPersonalFileEmployee {
    //дата найма
    func getDateOfEmployment() -> Date

    func setDateOfEmployment(_ date: Date)
    //зарплата
    func getSalary() -> Double

    func setSalary(_ salary: Double)
    //премии Awards
    func getAwards() -> [Double]
    func addAward(_award: Double)
    func removeAwardInId(_ id: Int)
    //награды Rewards
    //предупреждения Warnings
    //штрафы Fines
    func getHistoryEmployeeInCompany() -> [String]
    func addHistory(_award: Double)
    func removeHistoryInId(_ id: Int)
}

class PersonalFileEmployee {

}