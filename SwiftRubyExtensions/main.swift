//
//  main.swift
//  SwiftRubyExtensions
//
//  Created by Rakesh on 05/06/14.
//  Copyright (c) 2014 Rakesh. All rights reserved.
//

import Foundation


var array = [1,2,3]

var k = array[2,1]



10.times {
     print("Test")
}


10.times { i in
    print("\(i) * 5 = \(i*5)")
}

1.upto(10) { i in
    print("\(i) * 5 = \(i*5)")
}

print("")

15.downto(6) { i in
    print("\(i) * 5 = \(i*5)")
}

print("")

["Spiders":8, "Humans":2, "Dogs":4].each { type,legs in
    print("\(type) has \(legs) legs.")
}




