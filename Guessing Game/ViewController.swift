//
//  ViewController.swift
//  Guessing Game
//
//  Created by Daggs, Kari K on 1/28/17.
//  Copyright © 2017 Daggs, Kari K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var userMessage: UILabel!
    @IBOutlet weak var figuresTextField: UITextField!

    
    @IBAction func guess(_ sender: Any) {
        
        let diceRoll = String(arc4random_uniform(6))
        
        if figuresTextField.text == diceRoll {
            
            userMessage.text = "You're Right!"
        } else {
            
            userMessage.text = "Wrong! It was a " + diceRoll + "."
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
