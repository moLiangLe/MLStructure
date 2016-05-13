//
//  MLSort.swift
//  MLStructure
//
//  Created by moLiang on 16/5/13.
//  Copyright © 2016年 moliang. All rights reserved.
//

import Foundation

func binarySearch<T: Comparable>(a: [T], key: T) -> Int? {
    var range = 0 ..< a.count
    while range.startIndex < range.endIndex {
        let midIndex = range.startIndex + (range.endIndex - range.startIndex) / 2
        if a[midIndex] == key {
            return midIndex
        } else if a[midIndex] < key {
            range.startIndex = midIndex + 1
        } else {
            range.endIndex = midIndex
        }
    }
    return nil
}