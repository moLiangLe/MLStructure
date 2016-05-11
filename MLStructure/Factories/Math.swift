//
//  Math.swift
//  MLStructure
//
//  Created by moLiang on 16/5/11.
//  Copyright © 2015 Arbutus Software Inc. All rights reserved.
//

import Foundation


class Math {


    //MARK: Fibonacci algorithms
    
    
    //build fibonacci sequence to a specified position - default
    func fib(n: Int) -> Array<Int>! {
        
        
        //check trivial condition
        guard n > 2 else {
            return nil
        }
        
        
        //initialize the sequence
        var sequence: Array<Int> = [0, 1]
        
        
        var i: Int = sequence.count
        
        while i != n {
            
            let results: Int = sequence[i - 1] + sequence[i - 2]
            sequence.append(results)
            
            i += 1
        }
        
        
        return sequence
        
    }
    
    
    
    //build fibonacci sequence to a specified position - recursive
    func fib(n: Int, sequence: Array<Int> = [0, 1]) {
        

        //check trivial condition
        guard n > 2 else {
            return
        }
        

        //mutated copy
        var output = sequence
        
        let i: Int = output.count
        
        
        //set base condition
        if i == n {
            return
        }
        
        let results: Int = output[i - 1] + output[i - 2]
        output.append(results)

        
        //set iteration
        fib(n, sequence: output)
    
    }
    
    
    
    //build fibonacci sequence to a specified position - trailing closure
    func fib(n: Int, formula: Array<Int> -> Int) -> Array<Int>! {
                

        //check trivial condition
        guard n > 2 else {
            return nil
        }
        
        
        //initialize the sequence
        var sequence: Array<Int> = [0, 1]
        
        var i: Int = sequence.count
        
        while i != n {
            
            let results: Int = formula(sequence)
            sequence.append(results)
            
            i += 1
        }

        
        return sequence
        
        
    } //end function
    
    
}