//
//  MLPriorityQueue.swift
//  MLStructure
//
//  Created by moLiang on 16/5/12.
//  Copyright © 2016年 moliang. All rights reserved.
//

import Foundation

public struct MLPriorityQueue<T> {
    private var heap: MLHeap<T>
    
    /*
     To create a max-priority queue, supply a > sort function. For a min-priority
     queue, use <.
     */
    public init(sort: (T, T) -> Bool) {
        heap = MLHeap(sort: sort)
    }
    
    public var isEmpty: Bool {
        return heap.isEmpty
    }
    
    public var count: Int {
        return heap.count
    }
    
    public func peek() -> T? {
        return heap.peek()
    }
    
    public mutating func enqueue(element: T) {
        heap.insert(element)
    }
    
    public mutating func dequeue() -> T? {
        return heap.remove()
    }
    
    /*
     Allows you to change the priority of an element. In a max-priority queue,
     the new priority should be larger than the old one; in a min-priority queue
     it should be smaller.
     */
    public mutating func changePriority(index i: Int, value: T) {
        return heap.replace(index: i, value: value)
    }
}

extension MLPriorityQueue where T: Equatable {
    public func indexOf(element: T) -> Int? {
        return heap.indexOf(element)
    }
}