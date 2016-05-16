//
//  CheeseController.swift
//  AppleWatchOrdenarPizza
//
//  Created by Jonathan Silva on 15/05/16.
//  Copyright © 2016 Jonathan Silva. All rights reserved.
//

import WatchKit
import Foundation

class CheeseController: WKInterfaceController {
    
    @IBOutlet var pickerCheese: WKInterfacePicker!
    var queso = ["Mozarela", "Cheddar", "Parmesano", "Sin queso"]
    var tamaño = ""
    var masa = ""
    var pos = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if let dough = context as? Dough {
            tamaño = dough.size
            masa = dough.dough
        }
        
        let pickerItems: [WKPickerItem] = queso.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0
            return pickerItem
        }
        pickerCheese.setItems(pickerItems)
    }

    @IBAction func pickerChanged(value: Int) {
        let q = queso[value]
        //print(q)
        pos = value
        //pushControllerWithName("segueMasa", context: size)
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        if segueIdentifier == "segueAdditional" {
            return Cheese(s:tamaño, d:masa, c:queso[pos])
        }
        return nil
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
}