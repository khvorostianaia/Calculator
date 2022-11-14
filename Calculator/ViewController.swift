//
//  ViewController.swift
//  Calculator
//
//  Created by user on 08.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var operand = ""
    var numberOne = ""
    var numberTwo = ""

    @IBOutlet weak var resultlabel: UILabel!

    @IBAction func clearAction(_ sender: UIButton) {
        numberOne = ""
        numberTwo = ""
        operand = ""
        resultlabel.text = "0"
    }
    
    @IBAction func inputNumber(_ sender: UIButton) {
        
        if operand.isEmpty {
            numberOne = numberOne + (sender.titleLabel?.text)!
            resultlabel.text = numberOne
        } else {
            numberTwo = numberTwo + (sender.titleLabel?.text)!
            resultlabel.text = numberTwo
        }
        
    }
    
        @IBAction func inputOperand(_ sender: UIButton) {
            operand = (sender.titleLabel?.text)!
        }
    
    @IBAction func resultAction(_ sender: Any) {
        var result = 0.0
        
        switch operand {
        case "/":
            result = Double(numberOne)! / Double(numberTwo)!
        case "*":
            result = Double(numberOne)! * Double(numberTwo)!
        case "-":
            result = Double(numberOne)! - Double(numberTwo)!
        case "+":
            result = Double(numberOne)! + Double(numberTwo)!
        default:
            break
        }
    
        if result.truncatingRemainder(dividingBy: 1.0) == 00 {
            resultlabel.text = String(Int(result))
        } else {
            resultlabel.text = String(result)
    }
}
    
}

