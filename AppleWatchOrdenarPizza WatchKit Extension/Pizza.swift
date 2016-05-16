//
//  Pizza.swift
//  AppleWatchOrdenarPizza
//
//  Created by Jonathan Silva on 16/05/16.
//  Copyright © 2016 Jonathan Silva. All rights reserved.
//

import WatchKit

class Pizza: NSObject {

    var size = ""
    var dough = ""
    var cheese = ""
    var add0 = false
    var add1 = false
    var add2 = false
    var add3 = false
    var add4 = false
    var add5 = false
    var add6 = false
    var add7 = false
    var add8 = false
    var add9 = false
    
    init(s:String, d:String, c:String, a0:Bool, a1:Bool, a2:Bool, a3:Bool, a4:Bool, a5:Bool, a6:Bool, a7:Bool, a8:Bool, a9:Bool){
        size = s
        dough = d
        cheese = c
        add0 = a0
        add1 = a1
        add2 = a2
        add3 = a3
        add4 = a4
        add5 = a5
        add6 = a6
        add7 = a7
        add8 = a8
        add9 = a9
    }

}
