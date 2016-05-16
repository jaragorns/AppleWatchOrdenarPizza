//
//  AdditionalController.swift
//  AppleWatchOrdenarPizza
//
//  Created by Jonathan Silva on 15/05/16.
//  Copyright © 2016 Jonathan Silva. All rights reserved.
//

import WatchKit
import Foundation

class AdditionalController: WKInterfaceController {
    
    @IBOutlet var ingredientesSeleccionados: WKInterfaceLabel!
    @IBOutlet var jamon: WKInterfaceSwitch!
    @IBOutlet var pepperoni: WKInterfaceSwitch!
    @IBOutlet var tocineta: WKInterfaceSwitch!
    @IBOutlet var pollo: WKInterfaceSwitch!
    @IBOutlet var salchicha: WKInterfaceSwitch!
    @IBOutlet var maiz: WKInterfaceSwitch!
    @IBOutlet var anchoas: WKInterfaceSwitch!
    @IBOutlet var chorizo: WKInterfaceSwitch!
    @IBOutlet var piña: WKInterfaceSwitch!
    @IBOutlet var pimenton: WKInterfaceSwitch!
    
    var contador = 0
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
        
        if let cheese = context as? Cheese {
            tamaño = cheese.size
            masa = cheese.dough
            queso = cheese.cheese
        }
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        if segueIdentifier == "segueConfirmacion" {
            return Pizza(s:tamaño, d:masa, c:queso, a0:add0, a1:add1, a2:add2, a3:add3, a4:add4, a5:add5, a6:add6, a7:add7, a8:add8, a9:add9)
        }
        return nil
    }
    
    @IBAction func jamon(value: Bool) {
        if(value){
            if(contador > 4){
                jamon.setOn(false)
                add0=false
                //alert()
            }else{
                jamon.setOn(true)
                add0=true
                contador += 1
                ingredientesSeleccionados.setText(String(contador))
            }
        }else{
            jamon.setOn(false)
            add0=false
            contador -= 1
            ingredientesSeleccionados.setText(String(contador))
        }
    }
    
    @IBAction func pepperoni(value: Bool) {
        if(value){
            if(contador > 4){
                pepperoni.setOn(false)
                add1=false
                //alert()
            }else{
                pepperoni.setOn(true)
                add1=true
                contador += 1
                ingredientesSeleccionados.setText(String(contador))
            }
        }else{
            pepperoni.setOn(false)
            add1=false
            contador -= 1
            ingredientesSeleccionados.setText(String(contador))
        }
    }
    
    @IBAction func tocineta(value: Bool) {
        if(value){
            if(contador > 4){
                tocineta.setOn(false)
                add2=false
                //alert()
            }else{
                tocineta.setOn(true)
                add2=true
                contador += 1
                ingredientesSeleccionados.setText(String(contador))
            }
        }else{
            tocineta.setOn(false)
            add2=false
            contador -= 1
            ingredientesSeleccionados.setText(String(contador))
        }
    }
    
    @IBAction func pollo(value: Bool) {
        if(value){
            if(contador > 4){
                pollo.setOn(false)
                add3=false
                //alert()
            }else{
                pollo.setOn(true)
                add3=true
                contador += 1
                ingredientesSeleccionados.setText(String(contador))
            }
        }else{
            pollo.setOn(false)
            add3=false
            contador -= 1
            ingredientesSeleccionados.setText(String(contador))
        }
    }
    
    @IBAction func salchicha(value: Bool) {
        if(value){
            if(contador > 4){
                salchicha.setOn(false)
                add4=false
                //alert()
            }else{
                salchicha.setOn(true)
                add4=true
                contador += 1
                ingredientesSeleccionados.setText(String(contador))
            }
        }else{
            salchicha.setOn(false)
            add4=false
            contador -= 1
            ingredientesSeleccionados.setText(String(contador))
        }
    }
    
    @IBAction func maiz(value: Bool) {
        if(value){
            if(contador > 4){
                maiz.setOn(false)
                add5=false
                //alert()
            }else{
                maiz.setOn(true)
                add5=true
                contador += 1
                ingredientesSeleccionados.setText(String(contador))
            }
        }else{
            maiz.setOn(false)
            add5=false
            contador -= 1
            ingredientesSeleccionados.setText(String(contador))
        }
    }
    
    @IBAction func anchoas(value: Bool) {
        if(value){
            if(contador > 4){
                anchoas.setOn(false)
                add6=false
                //alert()
            }else{
                anchoas.setOn(true)
                add6=true
                contador += 1
                ingredientesSeleccionados.setText(String(contador))
            }
        }else{
            anchoas.setOn(false)
            add6=false
            contador -= 1
            ingredientesSeleccionados.setText(String(contador))
        }
    }
    
    @IBAction func chorizo(value: Bool) {
        if(value){
            if(contador > 4){
                chorizo.setOn(false)
                add7=false
                //alert()
            }else{
                chorizo.setOn(true)
                add7=true
                contador += 1
                ingredientesSeleccionados.setText(String(contador))
            }
        }else{
            chorizo.setOn(false)
            add7=false
            contador -= 1
            ingredientesSeleccionados.setText(String(contador))
        }
    }
    
    @IBAction func piña(value: Bool) {
        if(value){
            if(contador > 4){
                piña.setOn(false)
                add8=false
                //alert()
            }else{
                piña.setOn(true)
                add8=true
                contador += 1
                ingredientesSeleccionados.setText(String(contador))
            }
        }else{
            piña.setOn(false)
            add8=false
            contador -= 1
            ingredientesSeleccionados.setText(String(contador))
        }
    }
    
    @IBAction func pimenton(value: Bool) {
        if(value){
            if(contador > 4){
                pimenton.setOn(false)
                add9=false
                //alert()
            }else{
                pimenton.setOn(true)
                add9=true
                contador += 1
                ingredientesSeleccionados.setText(String(contador))
            }
        }else{
            pimenton.setOn(false)
            add9=false
            contador -= 1
            ingredientesSeleccionados.setText(String(contador))
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