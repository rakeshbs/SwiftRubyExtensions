//
//  Dictionary.swift
//  TicTacToe
//
//  Created by Rakesh on 05/06/14.
//  Copyright (c) 2014 Rakesh. All rights reserved.
//

import Foundation

extension  Dictionary  {
    
    func each (loop: (key:KeyType,value:ValueType) ->()) {
        
        for (k,v) in self {
            loop(key:k,value:v)
        }
        
    }
    
}