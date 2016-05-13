//
//  ThreadHelper.swift
//  MLStructure
//
//  Created by moLiang on 16/5/13.
//  Copyright © 2016年 moliang. All rights reserved.
//

import Foundation

func dispatch_async_safely_to_main_queue(block: ()->()) {
    dispatch_async_safely_to_queue(dispatch_get_main_queue(), block)
}

func dispatch_async_safely_to_queue(queue: dispatch_queue_t, _ block:()->()){
    if queue === dispatch_get_main_queue() && NSThread.isMainThread() {
        block()
    } else {
        dispatch_async(queue) {
            block()
        }
    }
}
