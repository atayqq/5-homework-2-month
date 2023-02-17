import Foundation
//
//Создать структуру User c параметрами имя, фамилия, номер телефона. Создать enum из стран с кодами телефонов. Добавить параметр code в  структуру User. Создать класс DataBase с параметром массив юзеров и функций распечатки информации всех юзеров, функий распечатки только по определенной стране. В main cделать так, чтобы пользователь вводил все данные через ридлайн. Введенные данные должны записаться в массив в классе DataBase. Для телефона сделать 2 ридлайна, один для указывания страны по названию, другой для ввода номера. В общей информации номер телефона должен распечатываться в таком виде: “+996777777777”. Запрос для ввода данных сделать несколько раз циклом, чтобы можно было ввести разные данные.
//
let dataBase = DataBase()

while true{
    print ("Ваше имя:")
    let name = readLine()!
    print ("Ваше фамилиеэ:")
    let lastName = readLine()!
    print ("Ваша страна:")
    let country = readLine()!
    var code: CountryCode!
    switch country{
    case "KG": code = .KG
    case "RU": code = .RU
    case "USA": code = .USA
    default:
        code = .KG
    }
    print ("Ваш номер:")
    let number = readLine()!
    
    let user = User(name: name, lastName: lastName, number: number, code: code)
    dataBase.printUsers(user: user)
    dataBase.printAllUsers()
    print("Добавить еще одного человека ?")
    let answer = readLine()!
    if answer != "да"{
        print ("окей")
        break
    }
    
}
dataBase.printAllUsers()

