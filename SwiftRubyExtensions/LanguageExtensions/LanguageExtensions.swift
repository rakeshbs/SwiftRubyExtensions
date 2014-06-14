//
//  LanguageExtensions.swift
//  TicTacToe
//
//  Created by Rakesh on 05/06/14.
//  Copyright (c) 2014 Rakesh. All rights reserved.
//

import Foundation

func memoize <T:Hashable, U> (body:(T -> U,T) -> U) -> (T -> U)
{
    var memo = Dictionary<T,U> ()
    var result:((T)->U)!
    result = { x in
        
        if let v = memo[x] { return v }
        let v = body(result, x)
        memo[x] = v
        return v
    }
    return result
}


@infix func - <T:Equatable> (a:Array<T>, b:Array<T>) -> Array<T>
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

