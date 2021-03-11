import UIKit

class Solution {
    func validateStackSequences(_ pushed: [Int], _ popped: [Int]) -> Bool {
        // push로 들어온 배열을 푸시하는 중에, pop으로 들어온 배열을 pop하면서 순서가 맞는지 확인
        var stack: [Int] = []
        var popCount = 0
        
        for push in pushed {
            stack.append(push)
            print("stack: " + "\(stack)")
            
            while popCount < popped.count && popped[popCount] == stack.last {
                stack.removeLast()
                popCount += 1
                print("popCount: " + "\(popCount)")
                print("stack: " + "\(stack)")
            }
        }
        
        return stack.isEmpty
    }
}

let s = Solution()
let re = s.validateStackSequences([1,0], [1,0])
print(re)
