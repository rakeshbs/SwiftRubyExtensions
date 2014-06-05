//
//  Int.swift
//  TicTacToe
//
//  Created by Rakesh on 05/06/14.
//  Copyright (c) 2014 Rakesh. All rights reserved.
//

import Foundation


extension Int {
    
    func times (loop : ()->())
    {
        for t in 1...self {
            loop()
        }
    }
    
    func times (loop : (Int)->())
    {
        for t in 1...self {
            loop(t)
        }
    }
    
    func upto (upto:Int, loop : (Int)->())
    {
        for t in self...upto {
            loop(t)
        }
    }
    
    func downto (downto:Int, loop : (Int)->())
    {
        for t in downto...self {
            loop(self - t + downto)
        }
    }
    
}
