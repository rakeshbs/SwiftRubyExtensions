//
//  LanguageExtensions.swift
//  TicTacToe
//
//  Created by Rakesh on 05/06/14.
//  Copyright (c) 2014 Rakesh. All rights reserved.
//

import Foundation




@assignment func << <T> (inout left:T[], right:T)
{
    left.append(right)
}

@assignment func << <T> (inout left:T[], right:T[])
{
    for element in right {
        left << element
    }
}

class ArrayRange
{
    var startIndex:Int
    var endIndex:Int
    
    init (startIndex:Int,endIndex:Int)
    {
        self.startIndex = startIndex
        self.endIndex = endIndex
    }
}



