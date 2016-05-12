//
//  MLQueue.swift
//  MLStructure
//
//  Created by moLiang on 16/5/12.
//  Copyright © 2016年 moliang. All rights reserved.
//

import Foundation

public struct MLQueue<T> {
    
    private var array = [T?]()
    private var head = 0
    
    public var isEmpty: Bool {
        return count == 0
    }
    
    public var count: Int {
        return array.count - head
    }
    
    public mutating func enqueue(element: T) {
        array.append(element)
    }
    
    public mutating func dequeue() -> T? {
        guard head < array.count, let element = array[head] else { return nil }
        
        array[head] = nil
        head += 1
        
        let percentage = Double(head)/Double(array.count)
        if array.count > 50 && percentage > 0.25 {
            array.removeFirst(head)
            head = 0
        }
        
        return element
    }
    
    public func peek() -> T? {
        if isEmpty {
            return nil
        } else {
            return array[head]
        }
    }
}