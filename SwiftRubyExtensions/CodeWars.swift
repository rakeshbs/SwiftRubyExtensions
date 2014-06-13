//
//  CodeWars.swift
//  SwiftRubyExtensions
//
//  Created by Rakesh on 12/06/14.
//  Copyright (c) 2014 Rakesh. All rights reserved.
//

import Foundation

operator infix <| {}

@infix func <| (closure1: ()-> (), closure2: () -> Bool)
{
    if closure2() {
        closure1()
    }
}

class User
{
    var rankIndex = 0
    var progress = 0
    var progression = Array(-8..8) - [0]
    
    var rank : Int
    {
        get
        {
            return progression[rankIndex]
        }
    }
    
    func inc_progress(activityRank:Int)
    {
        { self.progress += 3 } <| { self.progression[self.rankIndex] == activityRank }
        { self.progress += 1 } <| { self.progression[self.rankIndex] == activityRank - 1 }
        { self.progress += 1 } <| { self.progression[self.rankIndex] == activityRank - 2 }
        
        {
            var difference = self.progression[self.rankIndex] - activityRank
            self.progress += 10 * difference * difference
            
        } <| {self.progression[self.rankIndex] > activityRank }
     
        rankIndex += (progress / 100) as Int
        progress = progress % 100
        
    }
}