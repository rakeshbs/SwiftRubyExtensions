//
//  main.swift
//  SwiftRubyExtensions
//
//  Created by Rakesh on 05/06/14.
//  Copyright (c) 2014 Rakesh. All rights reserved.
//

import Foundation


// Appending to end of Array

var array = [1,2,3]

var k = array[2,1]

array << 4

println("Appending single element : \(array)")

array << [5,6,7]

println("Appending another array : \(array)")

//Ruby like each and reverse_each

array.each { value in
    
    print("a\(value), ")
}

println()

array.reverse_each { value in
    
    print("a\(value), ")
}

println()


10.times {
     println("Test")
}


10.times { i in
    println("\(i) * 5 = \(i*5)")
}

1.upto(10) { i in
    println("\(i) * 5 = \(i*5)")
}

println()

15.downto(6) { i in
    println("\(i) * 5 = \(i*5)")
}

println()

["Spiders":8, "Humans":2, "Dogs":4].each { type,legs in
    println("\(type) has \(legs) legs.")
}




