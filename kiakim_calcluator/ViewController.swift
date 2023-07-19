//
//  ViewController.swift
//  kiakim_calcluator
//
//  Created by kiakim on 2023/07/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var workingCalculator: UILabel!
    @IBOutlet weak var resultCalculator: UILabel!
    
    var workings: String=""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()

    }

    func clearAll() {
        workings=""
        workingCalculator.text=""
        resultCalculator.text=""
    }
    
    func addToWorking(value: String){
        workings = workings + value
        workingCalculator.text = workings
    }
    
    @IBAction func allClearTap(_ sender: Any) {
        clearAll()
        print("버튼작동됨 ! ")
    }
    
    @IBAction func plusTap(_ sender: Any) {
        addToWorking(value: "+")
    }
    
    @IBAction func minusTap(_ sender: Any) {
        addToWorking(value: "-")

        
    }
    
    @IBAction func timesTap(_ sender: Any) {
        addToWorking(value: "×")

    }
    
    @IBAction func davideTap(_ sender: Any) {
        addToWorking(value: "/")

    }
    
    @IBAction func equalsTap(_ sender: Any) {
        addToWorking(value: "=")

    }
    
   
    @IBAction func zeroTap(_ sender: Any) {
        addToWorking(value: "0")

    }
    
    @IBAction func oneTap(_ sender: Any) {
        addToWorking(value: "1")

    }
    
    @IBAction func twoTap(_ sender: Any) {
        addToWorking(value: "2")
        print("이게 된다고 ?")

    }
        
    @IBAction func threeTap(_ sender: Any) {
        addToWorking(value: "3")

    }
    
    @IBAction func fourTap(_ sender: Any) {
        addToWorking(value: "4")

    }
    
    @IBAction func fiveTap(_ sender: Any) {
        addToWorking(value: "5")
        
    }
       
    @IBAction func sixTap(_ sender: Any) {
        addToWorking(value: "6")
    }
    
    @IBAction func sevenTap(_ sender: Any) {
        addToWorking(value: "7")
    }
    
    @IBAction func eightTap(_ sender: Any) {
        addToWorking(value: "8")
    }
    
    @IBAction func nineTap(_ sender: Any) {
        addToWorking(value: "9")
    }
    
    
    
    
}

