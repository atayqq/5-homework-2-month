
import Foundation
class DataBase {
    var users: [User] = []
    
    func printUsers(user: User){
        users.append(user)
        
    }
    func printAllUsers(){
        for i in users {
            print ("\(i.name) \(i.lastName) \(i.code.rawValue)\(i.number) ")
        }
    }
    func printUsersByCountry(code: CountryCode){
        for user in users where user.code == code{
            print ("\(user.name) \(user.lastName) \(user.code.rawValue)\(user.number) ")
        }
    }
}

