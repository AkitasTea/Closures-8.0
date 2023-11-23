//
//  main.swift
//  Closures 8.0
//
//  Created by User on 23.11.2023.
//

import Foundation

//Написать функцию, которая принимает массив, проверяет — пустой или нет. И если пустой — нужно записать туда значения.
var numbers  = [Int]()

func verfic (numbers:[ Int]) -> [Int]{
    var numberss = numbers
        if numberss.isEmpty{
            print("массив пустой")
            numberss.append(1)
        }else{
            print("Массив не пуст")
        }
    
    return  numberss
}
var s = verfic(numbers: [])
print(s)

//Написать функцию - сайт который требует имя, фамилию, ник, емейл, пароль. Всё вывести в консоль.
let forSite = {(name: String, surname:String, nickname:String, email:String, password:String ) -> () in
    print("Вы успешно зарегистрировались \(name) \(surname)")
}

func tellMeAboutYou(name: String,
                    surname:String,
                    nickname:String,
                    email:String,
                    password:String,
                    closure: (String, String,String,String,String) -> ()){
    closure(name, surname, nickname, email, password)
    
}
tellMeAboutYou(name: "Андрей", surname: "Васильев", nickname: "Andrue", email: "Aa@hamail", password: "sada", closure: forSite)

//Написать 10 своих замыканий на примере сортировок массивов.
let someSet:Set = [1,2,3,4,5]
someSet.sorted { numberOne, NumberTwo in
    numberOne < NumberTwo
}
someSet.sorted(by: >)
print(someSet)
