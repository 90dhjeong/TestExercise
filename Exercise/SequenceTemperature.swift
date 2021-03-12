//
//  SequenceTemperature.swift
//  Exercise
//
//  Created by Dahye on 2021/03/12.
//

import Foundation
/*
 매일 측정한 온도가 정수의 수열로 주어졌을 때, 연속적인 며칠 동안의 온도의 합이 가장 큰 값을 계산하는 프로그램을 작성하시오.
 N은 온도를 측정한 전체 날짜의 수이다. N은 2 이상 100,000 이하
 K는 합을 구하기 위한 연속적인 날짜의 수이다. K는 1과 N 사이의 정수
 매일 측정한 온도를 나타내는 N개의 정수가 빈칸을 사이에 두고 주어진다. 이 수들은 모두 -100 이상 100 이하
 */

// 날짜수가 10
// 더할 날짜가 2
// 10개의 배열을 돌린다고 가정하고
func getTemp(days: Int64, sumDays: Int, everyDays: [Int64]) -> Int64 {
    var sum: Int64 = Int64.min
    
    
    var i = 0
    while i < sumDays {
        sum += everyDays[i]
        i += 1
    } // 첫번째 2개의 값을 구함
    
    for dayCount in  i...everyDays.count {
        var temp: Int64 = 0
        temp = sum - everyDays[dayCount-sumDays-1] + everyDays[dayCount]
        
        if temp > sum {
            sum = temp
        }
    }
    

    return sum
}

var days: Int64
var sumDays: Int
var everyDays: [Int]

var input = readLine()
if let input = input {
    let inputs = input.split(separator: " ")
    if let t = inputs[0] {
        days = Int64(t)
    }
    if let t = inputs[1] {
        sumDays = Int(t)
    }
    print(inputs)
}

var input2 = readLine()
if let input2 = input2 {
    let inputs = input2.split(separator: " ")
    print(inputs)
}
