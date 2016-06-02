//
//  Range.swift
//  TicTacToe
//
//  Created by Rakesh on 05/06/14.
//  Copyright (c) 2014 Rakesh. All rights reserved.
//

import Foundation


extension Range {
    
    func each (loop: (value:Element) ->()) {
        
        for e in self {
            loop(value:e)
        }
        
    }
    
}
