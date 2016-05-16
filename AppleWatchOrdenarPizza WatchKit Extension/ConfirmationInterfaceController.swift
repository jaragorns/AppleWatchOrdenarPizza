//
//  ConfirmationInterfaceController.swift
//  AppleWatchOrdenarPizza
//
//  Created by Jonathan Silva on 16/05/16.
//  Copyright © 2016 Jonathan Silva. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmationInterfaceController: WKInterfaceController {
    
    @IBOutlet var labelTamaño: WKInterfaceLabel!
    @IBOutlet var labelMasa: WKInterfaceLabel!
    @IBOutlet var labelQueso: WKInterfaceLabel!
    @IBOutlet var labelAdd1: WKInterfaceLabel!
    @IBOutlet var labelAdd2: WKInterfaceLabel!
    @IBOutlet var labelAdd3: WKInterfaceLabel!
    @IBOutlet var labelAdd4: WKInterfaceLabel!
    @IBOutlet var labelAdd5: WKInterfaceLabel!
    @IBOutlet var labelAdd6: WKInterfaceLabel!
    @IBOutlet var labelAdd7: WKInterfaceLabel!
    @IBOutlet var labelAdd8: WKInterfaceLabel!
    @IBOutlet var labelAdd9: WKInterfaceLabel!
    @IBOutlet var labelAdd0: WKInterfaceLabel!
    @IBOutlet var labelSinAdd: WKInterfaceLabel!

    var tamaño = ""
    var masa = ""
    var queso = ""
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
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if let pizza = context as? Pizza {
            tamaño = pizza.size
            masa = pizza.dough
            queso = pizza.cheese
            add0 = pizza.add0
            add1 = pizza.add1
            add2 = pizza.add2
            add3 = pizza.add3
            add4 = pizza.add4
            add5 = pizza.add5
            add6 = pizza.add6
            add7 = pizza.add7
            add8 = pizza.add8
            add9 = pizza.add9
            print(tamaño)
            print(masa)
            print(queso)
        }
        
        labelTamaño.setText(tamaño)
        labelMasa.setText(masa)
        labelQueso.setText(queso)
        if(!add0 && !add1 && !add2 && !add3 && !add4 && !add5 && !add6 && !add7 && !add8 && !add9){
            labelSinAdd.setText("Sin Adicionales")
        }else{
            labelSinAdd.setText("")
        }
        if(add0){
            labelAdd0.setText("Jamón")
            add0 = false
        }else{
            labelAdd0.setText("")
        }
        if(add1){
            labelAdd1.setText("Pepperoni")
            add1 = false
        }else{
            labelAdd1.setText("")
        }
        if(add2){
            labelAdd2.setText("Tocineta")
            add2 = false
        }else{
            labelAdd2.setText("")
        }
        if(add3){
            labelAdd3.setText("Pollo")
            add3 = false
        }else{
            labelAdd3.setText("")
        }
        if(add4){
            labelAdd4.setText("Salchicha")
            add4 = false
        }else{
            labelAdd4.setText("")
        }
        if(add5){
            labelAdd5.setText("Maíz")
            add5 = false
        }else{
            labelAdd5.setText("")
        }
        if(add6){
            labelAdd6.setText("Anchoas")
            add6 = false
        }else{
            labelAdd6.setText("")
        }
        if(add7){
            labelAdd7.setText("Chorizo")
            add7 = false
        }else{
            labelAdd7.setText("")
        }
        if(add8){
            labelAdd8.setText("Piña")
            add8 = false
        }else{
            labelAdd8.setText("")
        }
        if(add9){
            labelAdd9.setText("Pimentón")
            add9 = false
        }else{
            labelAdd9.setText("")
        }
        
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
