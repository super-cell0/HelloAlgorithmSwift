//
//  sortAlgorithm.swift
//  HelloAlgorithmSwift
//
//  Created by mac on 2024/4/27.
//

import Foundation


class SortAlgorithm {
    //工作原理非常简单：开启一个循环，每轮从未排序区间选择最小的元素，将其放到已排序区间的末尾
    //数组的长度为 n
    //初始状态下，所有元素未排序，即未排序（索引）区间为 [0, n-1]
    //选取区间 [0, n-1] 中的最小元素，将其与索引 0 处的元素交换。完成后，数组前 1 个元素已排序。
    //选取区间 [1, n-1] 中的最小元素，将其与索引 1 处的元素交换。完成后，数组前 2 个元素已排序。
    //以此类推。经过 n-1 轮选择与交换后，数组前 n-1 个元素已排序
    //仅剩的一个元素必定是最大元素，无须排序，因此数组排序完成
    //非稳定排序
    func selectionSort(onArray: [Int]) {
        var nums = onArray
        for i in 0..<(nums.count - 1) {
            var k = i // 最小元素
            for j in (i + 1)..<nums.count {
                if nums[j] < nums[k] {
                    k = j
                }
            }
            if k != i {
                let temp = nums[i]
                nums[i] = nums[k]
                nums[k] = temp
            }
        }
        print(nums) 
    }
    
    func demo2(onArray: [Int]) {
        var nums = onArray
        for i in nums.indices.dropLast() {
            var k = i
            for j in nums.indices.dropFirst(i + 1) {
                if nums[j] < nums[k] {
                    k = j
                }
            }
            nums.swapAt(i, k)
            print(nums)
        }
    }
    
    // 冒泡排序
    func bubbleSort(onArray: [Int]) {
        var arr = onArray
        for i in 0..<(arr.count - 1) {
            var flag = false
            //每轮冒泡排序都会确定一个未排序部分的最大值这个最大值会被冒泡到数组的右侧因此内层循环不需要遍历到已经有序的部分
            for j in 0..<(arr.count - 1 - i){
                if arr[j] > arr[j + 1] {
                    let t = arr[j]
                    arr[j] = arr[j + 1]
                    arr[j + 1] = t
                    flag = true
                }
            }
            if !flag {
                break
            }
            print(arr)
        }
    }
    
    func demo(onArr: [Int]) {
        var arr = onArr
        for i in 0..<arr.count - 1 {
            var flag = false
            for j in 0..<arr.count - 1 - i {
                if arr[j] > arr[j+1] {
                    let t = arr[j]
                    arr[j] = arr[j+1]
                    arr[j+1] = t
                    flag = true
                }
            }
            if !flag {
                break
            }
            print(arr)
        }
    }
    
    
}

/*
数据结构的分类：
 1 线性数据结构：数组、链表、栈、队列、哈希表。元素之间是一对一的顺序关系
 2 非线性数据结构：树、堆、图、哈希表
 
 非线性数据结构可以进一步划分为树形结构和网状结构：
 1 树形结构：树、堆、哈希表，元素之间是一对多的关系
 2 网状结构：图，元素之间是多对多的关系
 
 索引本质上是内存地址的偏移量
 */
