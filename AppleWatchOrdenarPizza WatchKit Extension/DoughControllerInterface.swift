//
//  DoughControllerInterface.swift
//  AppleWatchOrdenarPizza
//
//  Created by Jonathan Silva on 16/05/16.
//  Copyright © 2016 Jonathan Silva. All rights reserved.
//

import WatchKit
import Foundation


class DoughControllerInterface: WKInterfaceController {
    
    @IBOutlet var pickerMasa: WKInterfacePicker!
    
    var masa = ["Delgada","Crujiente","Gruesa"]
    var tamaño = ""
    var pos = 0

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if let size = context as? Size {
            tamaño = size.size
        }
        
        let pickerItems: [WKPickerItem] = masa.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0
            return pickerItem
        }
        pickerMasa.setItems(pickerItems)
    }
    
    @IBAction func pickerChanged(value: Int) {
        let m = masa[value]
        pos = value
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        if segueIdentifier == "segueQueso" {
            return Dough(s:tamaño, d: masa[pos])
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
