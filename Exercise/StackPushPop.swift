//
//  StackPushPop.swift
//  Exercise
//
//  Created by Dahye on 2021/03/11.
//

import UIKit

class Solution {
    func validateStackSequences(_ pushed: [Int], _ popped: [Int]) -> Bool {
        var stack: [Int] = []
        var popCount = 0
        
        for push in pushed {
            stack.append(push)
            print("stack: " + "\(stack)")
            
            while popCount < popped.count && popped[popCount] == stack.last {
                stack.removeLast()
                popCount += 1
            }
        }
        
        return stack.isEmpty
    }
}

let s = Solution()
let re = s.validateStackSequences([1,2,3,4,5,6,7,8,9], [5,4,3,7,6,9,8,2,1])

// 접근
// 1. pop은 push된 배열의 마지막 값과 pop 배열의 접근 index 값이 동일할 때 진행되어야 한다
// 2. pop 배열 값 접근 index는 stack의 값이 지워질 때 마다 1씩 증가되어야 한다
// 3. index가 pop 배열의 크기보다 1보다 작을 때만 진행한다
// 4. 최종 stack이 비어있다면 true를 리턴한다


