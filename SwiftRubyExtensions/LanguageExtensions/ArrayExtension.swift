//
//  Array.swift
//  TicTacToe
//
//  Created by Rakesh on 05/06/14.
//  Copyright (c) 2014 Rakesh. All rights reserved.
//

import Foundation


extension  Array  {
    
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
