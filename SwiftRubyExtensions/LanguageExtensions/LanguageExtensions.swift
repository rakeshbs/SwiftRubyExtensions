//
//  LanguageExtensions.swift
//  TicTacToe
//
//  Created by Rakesh on 05/06/14.
//  Copyright (c) 2014 Rakesh. All rights reserved.
//

import Foundation

/*
operator infix <| {}

@infix func <| (closure1: ()-> (), closure2: () -> Bool)
{
    if closure2() {
        closure1()
    }
}
*/
@infix func - <T:Comparable> (a:Array<T>, b:Array<T>) -> Array<T>
{
    var result = a
    result.unshare()
    
    for var i = 0; i < result.length; i++ {
        
        for elementtocompare in b {
            
            if (elementtocompare == result[i]) {
                
                result.removeAtIndex(i)
                i--
                break
            }
        
        }
    }
    
    return result
}


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

