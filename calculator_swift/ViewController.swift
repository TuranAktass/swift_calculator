//
//  ViewController.swift
//  calculator_swift
//
//  Created by Risetime on 8.12.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBOutlet weak var number1Field: UITextField!
    @IBOutlet weak var number2Field: UITextField!
    @IBOutlet weak var result: UILabel!
    
    @IBAction func multiply(_ sender: Any) {
        var number1 = getNumberFromString(text: number1Field.text!)
        var number2 = getNumberFromString(text: number2Field.text!)
        let res = number1 * number2
        result.text = String(res)
    }
    @IBAction func divide(_ sender: Any) {
        var number1 = getNumberFromString(text: number1Field.text!)
        var number2 = getNumberFromString(text: number2Field.text!) == 0 ? 1 :getNumberFromString(text: number2Field.text!)
        var res = number1 / number2
        result.text = String(res)}
    @IBAction func diiference(_ sender: Any) {
        var number1 = getNumberFromString(text: number1Field.text!)
        var number2 = getNumberFromString(text: number2Field.text!)
        var res = number1 - number2
        result.text = String(res)
    }
    @IBAction func sum(_ sender: Any) {
        var number1 = getNumberFromString(text: number1Field.text!)
        var number2 = getNumberFromString(text: number2Field.text!)
        var res = number1 + number2
        result.text = String(res)
    }
    
     func  getNumberFromString(text: String) -> Int{
        return Int(text) ?? 0
    }
 
}

