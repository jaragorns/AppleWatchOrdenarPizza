//
//  InterfaceController.swift
//  AppleWatchOrdenarPizza WatchKit Extension
//
//  Created by Jonathan Silva on 15/05/16.
//  Copyright © 2016 Jonathan Silva. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var pickerSize: WKInterfacePicker!
    
    var tamaño: [String] = [
        "Chica","Mediana","Grande"]
    var pos = 0

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        let pickerItems: [WKPickerItem] = tamaño.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0
            return pickerItem
        }
        pickerSize.setItems(pickerItems)
    }
    
    @IBAction func pickerChanged(value: Int) {
        let s = tamaño[value]
        pos = value
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        if segueIdentifier == "segueMasa" {
            return Size(s: tamaño[pos])
        }
        return nil
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
