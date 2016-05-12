//
//  Stack.swift
//  MLStructure
//
//  Created by moLiang on 16/5/11.
//  Copyright (c) 2014 Arbutus Software Inc. All rights reserved.
//

import Foundation

public struct MLStack<T> {
    
    private var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int{
        return array.count
    }
    
    public mutating func push(element: T) {
        array.append(element)
    }
    
    public mutating func pop() -> T?{
        return isEmpty ? nil : array.removeLast()
    }
    
    public func peek() -> T? {
        return array.last
    }
    
}

extension MLStack: SequenceType {
    public func generate() -> AnyGenerator<T> {
        var curr = self
        return AnyGenerator {
            _ -> T? in
            return curr.pop()
        }
    }
}