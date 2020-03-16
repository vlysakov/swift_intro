//
//  main.swift
//  L1_Lysakov
//
//  Created by Slava V. Lysakov on 16.03.2020.
//  Copyright © 2020 Slava V. Lysakov. All rights reserved.
//

import Foundation

//Решение квадратного уравнения
print("Введите значение a")
let a :Double = Double(readLine() ?? "0") ?? 0
print("Введите значение b")
let b :Double = Double(readLine() ?? "0") ?? 0
print("Введите значение c")
let c :Double = Double(readLine() ?? "0") ?? 0

let d = b*b - 4*a*c

if (d>=0) {
    let x1 = (-b+sqrt(d))/(2*a)
    let x2 = (-b-sqrt(d))/(2*a)
    d != 0 ? print (String(format: "x1 = %.3f \nx2 = %.3f", x1, x2)) : print (String(format: "x = %.3f", x1))
} else {
    print ("Уравнение не имеет корней")
}

