//
//  String.swift
//  TicTacToe
//
//  Created by Rakesh on 05/06/14.
//  Copyright (c) 2014 Rakesh. All rights reserved.
//

import Foundation

extension String {
    
    subscript(index:Int) -> String {
        
        if index >= countElements(self)  || index < 0 {return ""}
            
            return self.bridgeToObjectiveC().substringWithRange(NSMakeRange(index, 1))
    }
    

    
    subscript(startIndex:Int,endIndex:Int) -> String {
        
        if endIndex >= countElements(self)  ||  endIndex < 0 {return ""}
            
        else if startIndex < 0 || startIndex >= self.bridgeToObjectiveC().length   {return ""}
            
            return self.bridgeToObjectiveC().substringWithRange(NSMakeRange(startIndex, endIndex-startIndex+1))
    }
    
    //Get concatenation of characters at indices
    
    subscript(indices:Int[]) -> String {
        
        var concat = ""
            for index in indices {
                
                if index >= countElements(self) || index < 0 {return ""}
                
                concat += self.bridgeToObjectiveC().substringWithRange(NSMakeRange(index, 1))
            }
            return concat
    }
    
}