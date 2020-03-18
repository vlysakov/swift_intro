//
//  main.swift
//  L2_Lysakov
//
//  Created by Slava V. Lysakov on 18.03.2020.
//  Copyright © 2020 Slava V. Lysakov. All rights reserved.
//

import Foundation

//Определяет четный параметр или нет
func isEven (_ value: Int) -> Bool {
    return value%2 == 0
}

//Определяет делится число без остатка на 3 или нет
func isDevideThree (_ value: Int) -> Bool {
    return value%3 == 0
}

//Удаление всех четных чисел и всех чисел, которые не делятся на 3
func removeEvenAndThree (_ value: inout [Int]) {
    value.removeAll(where: {isEven($0)||(!isDevideThree($0))})
}

func printArray (_ a:[Int]) {
    a.forEach{print($0, terminator:" ")}
    print()
}

var arr = (0..<10).map{ _ in Int.random(in: 1...1000)}
print ("Исходный массив")
printArray(arr)
print ("Отсортированный массив")
arr.sort(by:<)
printArray(arr)
print("Массив без четных чисел и всех чисел, которые не делятся на 3")
removeEvenAndThree(&arr)
printArray(arr)



