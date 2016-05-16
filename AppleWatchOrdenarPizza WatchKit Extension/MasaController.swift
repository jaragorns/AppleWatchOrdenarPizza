//
//  MasaController.swift
//  AppleWatchOrdenarPizza
//
//  Created by Jonathan Silva on 15/05/16.
//  Copyright © 2016 Jonathan Silva. All rights reserved.
//

import WatchKit
import Foundation

class MasaController: WKInterfaceController {
    
    @IBOutlet var pickerMasa: WKInterfacePicker!
    
    var masa = ["Delgada","Crujiente","Gruesa"]
    var size = ""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let s = context as! Size
        // Configure interface objects here.
        print(s.size)
        let pickerItems: [WKPickerItem] = masa.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0
            return pickerItem
        }
        pickerMasa.setItems(pickerItems)
    }
    
    @IBAction func siguiente() {
        //pushControllerWithName("segueQueso", context: AnyObject?)
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