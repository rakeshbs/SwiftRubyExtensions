//
//  Array.swift
//  TicTacToe
//
//  Created by Rakesh on 05/06/14.
//  Copyright (c) 2014 Rakesh. All rights reserved.
//

import Foundation

extension  Array  {
    
    var length : Int {
        get {
            return self.count
        }
    }
    
    var size : Int {
        get {
            return self.count
        }
    }
    
    var first : Element? {
        get {
            
            if (self.count > 0) { return self[0] }
            return nil
        }
    }
    
    var last : Element? {
        get {
            if (self.count > 0) { return self[count-1] }
            return nil
        }
    }
    
    func empty () -> Bool {
        return (self.count == 0) ? true : false
    }
    
    func take (n:Int) -> Array<Element>?  {
        
        if n > self.count {
            return nil
        }
        
        var result:Array<Element> = []
        
        for index in (0..<n){
            
            result.append(self[index])
        }
        return result
    }
    
    subscript (startIndex:Int,length:Int)  -> Array? {
        
        if (length == 0) {
            return nil
        }
        
        if (length > 0) {
            
            if (startIndex + length) > self.count {
                return nil
            }
            
            var result:Array<Element> = []
            
            for index in (startIndex..<(startIndex+length)){
                
                result.append(self[index])
            }
            return result
        }
        else {
            
            return nil
        }
    }
    
    func collect<B> (loop : (element:Element) -> B) -> Array<B>
    {
        return self.map(loop)
    }
    
    
    func inject <B> (startValue:B?, loop : ((accumulator:B?,element:Element) -> B?)) -> (B?)
    {
        var result:B? = startValue
        for e in self
        {
            result = loop(accumulator: result,element: e)
        }
        
        return result
    }
    
    func each (loop: (element:Element) ->()) {
        
        for e in self {
            loop(element:e)
        }
        
    }
    
    func eachWithIndex (loop: (index : Int, element:Element) ->()) {
        
        var counter : Int = 0
        for e in self {
            loop(index: counter, element:e)
            counter += 1
        }
        
    }
    
    
    func reverseEach (loop: (element:Element) ->()) {
        
        (0..<self.count).each() { index in
            loop(element:self[self.count-index - 1])
        }
    }
    
    func reverseEachWithIndex (loop: (index : Int, element:Element) ->()) {
        
        (0..<self.count).each() { index in
            loop(index: self.count - index - 1, element:self[self.count-index - 1])
        }
    }
    
    mutating func pop () -> Element {
        
        return self.removeLast()
    }
    
    mutating func push (newElement: Element) {
        
        return self.append(newElement)
    }
    
    
    mutating func shift () -> Element {
        
        return self.removeAtIndex(0)
    }
    
    mutating func unshift (newElement: Element) {
        
        self.insert(newElement, atIndex: 0)
    }
    
}
