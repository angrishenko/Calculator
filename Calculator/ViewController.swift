//
//  ViewController.swift
//  Calculator
//
//  Created by Антон Грищенко on 17.09.16.
//  Copyright © 2016 Антон Грищенко. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        
        let digit = sender.currentTitle!
        if userInTheMiddleOfTyping {
            let textCurrentOnDisplay = display.text!
            display.text = textCurrentOnDisplay + digit
        }
        else {
            display.text = digit
        }
        userInTheMiddleOfTyping = true
        
    }
    @IBAction func performOperation(_ sender: UIButton) {
        userInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            if mathematicalSymbol == "π" {
                display.text = String(M_PI)
            }
        }
    }
}

