//
//  ViewController.swift
//  4ahitm-medt-u2-number_guess
//
//  Created by Quirin Ecker on 15.10.20.
//  Copyright © 2020 Quirin Ecker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hintText: UILabel!
    @IBOutlet weak var guessNumberField: UITextField!
    let model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func guess(_ sender: Any) {
        print(model.secretNumber)
        let guessNumber = Int(guessNumberField.text!)!
        
        if guessNumber == model.secretNumber {
            performSegue(withIdentifier: "win", sender: self)
        } else {
            model.guesses.append(guessNumber)
            hintText.text = guessNumber > model.secretNumber ? "less" : "more"
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "win" {
            let tableViewController = segue.destination as! WinViewController
            
            tableViewController.model = self.model
        }
    }
}
