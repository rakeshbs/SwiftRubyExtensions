//
//  Array.swift
//  TicTacToe
//
//  Created by Rakesh on 05/06/14.
//  Copyright (c) 2014 Rakesh. All rights reserved.
//

import Foundation

extension  Array  {
    
    var length : Int
    {
        get {
            return self.count
        }
    }

    var size : Int
    {
    get {
        return self.count
    }
    }
    
    func take (n:Int) -> Array<T>?
    {
        
        if n > self.count {
            return nil
        }
        
        var result:Array<T> = []
        
        for index in (0..n){
            
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
                
                var result:Array<T> = []
                
                for index in (startIndex..(startIndex+length)){
                    
                    result.append(self[index])
                }
                return result
            }
            else {
                
                return nil
            }
    }
    
    
    
    func inject <B> (startValue:B?, loop : ((accumulator:B?,element:T) -> B?)) -> (B?)
    {
        var result:B? = startValue
        for e in self
        {
            result = loop(accumulator: result,element: e)
        }
        
        return result
    }
    
    func each (loop: (element:T) ->()) {
        
        for e in self {
            loop(element:e)
        }
        
    }
    
    
    func reverse_each (loop: (element:T) ->()) {
        
        (0..self.count).each() { index in
            loop(element:self[self.count-index - 1])
        }
    }
    
    
    
}
