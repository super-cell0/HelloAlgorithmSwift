//
//  swift02.swift
//  HelloAlgorithmSwift
//
//  Created by mac on 2023/12/29.
//

import Foundation

///迭代与递归
class IterationAndRecursion {
    //迭代自下而上地解决问题。从最基础的步骤开始，然后不断重复或累加这些步骤，直到任务完成。
    func forLoop(n: Int) -> Int {
        var res = 0
        for i in 1...n {
            res += i
        }
        return res
    }
    //while 循环比 for 循环的自由度更高
    //条件变量每i轮进行两次更新
    func whileLoop(n: Int) -> Int {
        var res = 0
        var i = 1
        while i <= n {
            res += i
            i *= 2
        }
        return res
    }
    func nestedLoop(n: Int) -> String {
        var res = ""
        for i in 1...n {
            for j in 1...n {
                res.append("\(i), \(j)")
            }
        }
        return res
    }
    //递归
    //自上而下”地解决问题。将原问题分解为更小的子问题，这些子问题和原问题具有相同的形式
    //接下来将子问题继续分解为更小的子问题，直到基本情况时停止（基本情况的解是已知的
    func recur(n: Int) -> Int {
        if n == 1 {
            return 1
        }
        let res = recur(n: n - 1)
        return n + res
    }
    //尾递归
    func tailRecur(n: Int, res: Int) -> Int {
        if n == 0 {
            return res
        }
        return tailRecur(n: n - 1, res: res + n)
    }
    //斐波那契数列
    func fib(n: Int) -> Int {
        // 终止条件 f(1) = 0, f(2) = 1
        if n == 1 || n == 2{
            return n - 1
        }
        let res = fib(n: n - 1) + fib(n: n - 2)
        return res
    }
    //删除数组中的重复的元素
    func containsDemo(onArray: [Int]) {
        var resultArray = [Int]()
        for element in onArray {
            if !resultArray.contains(element) {
                resultArray.append(element)
            }
        }
        print(resultArray)
    }
}
