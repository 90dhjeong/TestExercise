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
var input = readLine()?.split(separator: " ").map( {Int(String($0))!} )
var input2 = readLine()?.split(separator: " ").map( {Int(String($0))!} )

if let a1 = input, let a2 = input2 {
    let n = a1[0]
    let k = a1[1]
    let everyDays = a2

    var sum: Int = 0
    for i in 0..<k {
        sum += everyDays[i]
    }
    var result: Int = sum
    
    var temp: Int = sum
    for i in k..<n {
        temp -= everyDays[i-k]
        temp += everyDays[i]
        
        if temp > result {
            result = temp
        }
    }
    print(result)
}


