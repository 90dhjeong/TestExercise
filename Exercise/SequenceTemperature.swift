//
//  main.swift
//  Test
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
func getTemp(days: Int64, sumDays: Int, everyDays: [Int]) -> Int {
    var sum: Int = 0
    var i = 0
    while i < sumDays {
        sum += everyDays[i]
        i += 1
    } // 첫번째 2개의 값을 구함
    
    for dayCount in  0..<everyDays.count {
        var temp: Int = 0
        temp = sum - everyDays[dayCount-sumDays] + everyDays[dayCount]
        
        if temp > sum {
            sum = temp
        }
    }
    

    return sum
}

var input = readLine()?.split(separator: " ").map( {Int(String($0))!} )
var input2 = readLine()?.split(separator: " ").map( {Int(String($0))!} )

if let a1 = input, let a2 = input2 {
    let days = Int64(a1[0])
    let sumDays = a1[1]
    let everyDays = a2
    
    let c = getTemp(days: days, sumDays: sumDays, everyDays: everyDays)
    print(c)
}
