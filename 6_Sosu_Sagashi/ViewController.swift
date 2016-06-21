//
//  ViewController.swift
//  6_Sosu_Sagashi
//
//  Created by Tomomi Tamura on 6/13/16.
//  Copyright © 2016 Tomomi Tamura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberTextField: UITextField!
    
    
    @IBAction func submitPressed(sender: AnyObject) {
        var userInput = Int(numberTextField.text!)
        var i = Int()
        var isPrime = true
        resultLabel.hidden = true
        
        if userInput == 1 {
            isPrime = false
        }
        
        if userInput != 2 && userInput != 1 {
            for i = 2; i < userInput; i += 1 {
                if userInput! % i == 0 {
                    isPrime = false
                }
            }
        }
        
        
        if isPrime == true {
            resultLabel.hidden = false
            resultLabel.text = "Yes, \(numberTextField.text!) is a prime number"
        }
        else {
            resultLabel.hidden = false
            resultLabel.text = "No, \(numberTextField.text!) is NOT a prime number"
        }
        
        
    }
    
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

