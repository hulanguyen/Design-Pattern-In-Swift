import UIKit

enum CompanyTitle: String {
    case ceo = "ceo"
    case cfo = "cfo"
    case cio = "cio"
    case head = "head"
    case teamLead = "team leader"
    case member = "member"
}

extension CompanyTitle {
    var level: Int {
        switch self {
        case .ceo:
            return 0
        case .cio, .cfo:
            return 1
        case .head:
            return 2
        case .teamLead:
            return 3
        case .member:
            return 4
        }
    }
}

//Leafs
class Employee {
    var name: String
    var age: Int
    var title: CompanyTitle
    var salary: Float
    
    init(name: String, age: Int, title: CompanyTitle, salary: Float) {
        self.name = name
        self.age = age
        self.title = title
        self.salary = salary
    }
    
}

extension Employee: CustomStringConvertible {
    var description: String {
        let intent = String(repeating: "\t", count: title.level)
        return "\n\(intent) - \(name.uppercased())  title: \(title.rawValue.uppercased()) age: \(age)"
    }
}
//complex object

class Manager {
    var name: String
    var age: Int
    var title: CompanyTitle
    var salary: Float
    var totalBuget: Float {
        var result = salary
        for member in members {
            if let employee = member as? Employee {
                result += employee.salary
            } else if let mamaner = member as? Manager {
                result += mamaner.totalBuget
            }
        }
        return result
    }
    private var members: [Any] = []
    
    init(name: String, age: Int, title: CompanyTitle, salary: Float) {
        self.name = name
        self.age = age
        self.title = title
        self.salary = salary
    }
    
    func add(member: Any) {
        if member is Employee || member is Manager {
            members.append(member)
        }
    }
    
    func detail() {
        print(self.description)
        for member in members {
            if let employee = member as? Employee {
                print(employee.description)
            } else if let mamaner = member as? Manager {
                mamaner.detail()
            }
        }
    }
//    mutating func remmove(member: Any) {
//        if member is Employee || member is Manager {
//            if let index = members.firstIndex(where: {member == })
//        }
//    }
}

extension Manager: CustomStringConvertible {
    var description: String {
        let intent = String(repeating: "\t", count: title.level)
        return "\n\(intent) - \(name.uppercased())  title: \(title.rawValue.uppercased()) age: \(age) buget: \(totalBuget)"
    }
}



var member1 = Employee(name: "Poca", age: 15, title: .member, salary: 1000)
var member2 = Employee(name: "HuThi", age: 16, title: .member, salary: 1200)
let member3 = Employee(name: "Bihu", age: 30, title: .member, salary: 800)
var teamLead = Manager(name: "HuHu", age: 24, title: .teamLead, salary: 1500)
teamLead.add(member: member1)
teamLead.add(member: member2)
teamLead.add(member: member3)
var head = Manager(name: "Huphu", age: 18, title: .head, salary: 3000)
head.add(member: teamLead)

var ceo = Manager(name: "Hula", age: 33, title: .ceo, salary: 10000)
var cio = Manager(name: "Hulo", age: 20, title: .cio, salary: 6000)
var cfo = Manager(name: "TuAn", age: 35, title: .cfo, salary: 9000)
cio.add(member: head)
ceo.add(member: cfo)
ceo.add(member: cio)



ceo.detail()
