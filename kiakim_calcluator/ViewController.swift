//
//  ViewController.swift
//  kiakim_calcluator
//
//  Created by kiakim on 2023/07/19.
//

extension String {
    func calculate() -> Double? {
        return NSExpression(format: self).expressionValue(with: nil, context: nil) as? Double
    }
}

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var workingCalculator: UILabel!
    @IBOutlet weak var resultCalculator: UILabel!
    
    var workings: String=""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()

    }

    
    
    func evaluateExpression() {
        var expressionString = workings
            .replacingOccurrences(of: "×", with: "*")
            .replacingOccurrences(of: "÷", with: "/")
        
        while "+-*/".contains(expressionString.last ?? Character("")) {
                 expressionString = String(expressionString.dropLast())
             }
        
        if let result = expressionString.calculate() {
                resultCalculator.text = String(result)
        } else {
            resultCalculator.text = "Error"
        }
    }

    
    
    func clearAll() {
        workings=""
        workingCalculator.text=""
        resultCalculator.text=""
    }
    
    func addToWorking(value: String){
        workings += value
             workingCalculator.text = workings
    }
    
    @IBAction func allClearTap(_ sender: UIButton) {
        clearAll()
    }
    
    @IBAction func plusTap(_ sender: UIButton) {
        addToWorking(value: "+")
    }
    
    @IBAction func minusTap(_ sender: UIButton) {
        addToWorking(value: "-")
    }
    
    @IBAction func timesTap(_ sender: UIButton) {
        addToWorking(value: "×")
    }
    
    @IBAction func davideTap(_ sender: UIButton) {
        addToWorking(value: "÷")
    }
    
    @IBAction func equalsTap(_ sender: UIButton) {
        evaluateExpression()
    }
    
   
    @IBAction func oneTap(_ sender: UIButton) {
        addToWorking(value: "1")
    }
    
    @IBAction func twoTap(_ sender: UIButton) {
        addToWorking(value: "2")
    }
        
    @IBAction func threeTap(_ sender: UIButton) {
        addToWorking(value: "3")
    }
    
    @IBAction func fourTap(_ sender: UIButton) {
        addToWorking(value: "4")
    }
    
    @IBAction func fiveTap(_ sender: UIButton) {
        addToWorking(value: "5")

    }
    
    @IBAction func sixTap(_ sender: UIButton) {
        addToWorking(value: "6")

    }
    
    @IBAction func sevenTap(_ sender: UIButton) {
        addToWorking(value: "7")
    }
    
    @IBAction func eightTap(_ sender: UIButton) {
        addToWorking(value: "8")
    }
    
    @IBAction func nineTap(_ sender: UIButton) {
        addToWorking(value: "9")
    }
    
  
    @IBAction func zeroTap(_ sender: UIButton) {
        addToWorking(value: "0")
    }
    
    
}

