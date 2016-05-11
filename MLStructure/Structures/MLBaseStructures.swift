//
//  MLListNode.swift
//  MLStructure
//
//  Created by moLiang on 16/5/11.
//  Copyright © 2016年 moliang. All rights reserved.
//

import Foundation

class MLListNode<T> {
    var key: T!
    var next: MLListNode?
    var previous: MLListNode?
}


class MLQueueNode<T> {
    var key: T!
    var next: MLQueueNode!
}

public class MLTrieNode {
    
    var key: String!
    var children: Array<MLTrieNode>
    var isFinal: Bool
    var level: Int
    
    init() {
        self.children = Array<MLTrieNode>()
        self.isFinal = false
        self.level = 0
    }
}

public class MLEdge {
    
    var neighbor: MLVertex
    var weight: Int
    
    init() {
        weight = 0
        self.neighbor = MLVertex()
    }
    
}

public class MLVertex{
    
    var key: String?
    var neighbors: Array<MLEdge>
    var visited: Bool = false
    
    init() {
        self.neighbors = Array<MLEdge>()
    }
    
    
}

class Path {
    
    var total: Int!
    var destination: MLVertex
    var previous: Path!
    
    init(){
        destination = MLVertex()
    }
    
}

class MLHashNode {
    
    var firstname: String!
    var lastname: String!
    var next: MLHashNode!
    
}
