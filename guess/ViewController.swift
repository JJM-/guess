//
//  ViewController.swift
//  guess
//
//  Created by Jeremy Matheny on 1/8/16.
//  Copyright © 2016 Jeremy Matheny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    
    
    @IBOutlet weak var userGuess: UITextField!
    @IBOutlet weak var resultBox: UILabel!
    
    @IBAction func makeGuess(sender: AnyObject) {
    
        if userGuess.text == nil{
        resultBox.text = "Please enter a number between 0-5"
        }
        else
        {
            
        var guess = Int(userGuess.text!)!
        var fingersUp = Int(arc4random_uniform(6))
        
        
        if guess == fingersUp {
            resultBox.text = "Great Job! You guessed \(guess) correctly!"
        }
        else{
            resultBox.text = "Sorry! You guessed \(guess) but the computer had \(fingersUp) fingers up!  Try Again"
        }
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

