//
//  Range.swift
//  TicTacToe
//
//  Created by Rakesh on 05/06/14.
//  Copyright (c) 2014 Rakesh. All rights reserved.
//

import Foundation


extension Range {
    
    func each (loop: (value:T) ->()) {
        
        for e in self {
            loop(value:e)
        }
        
    }
    
    func reverse_each (loop: (value:T) ->()) {
        
        for e in Range(start: self.endIndex,end: self.startIndex) {
            loop(value:e)
        }
        
    }
    
}