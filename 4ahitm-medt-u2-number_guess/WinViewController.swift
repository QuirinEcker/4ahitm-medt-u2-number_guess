//
//  WinViewController.swift
//  4ahitm-medt-u2-number_guess
//
//  Created by Quirin Ecker on 17.10.20.
//  Copyright © 2020 Quirin Ecker. All rights reserved.
//

import UIKit

class WinViewController: UIViewController {
    
    var model: Model?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func showGuesses(_ sender: Any) {
        performSegue(withIdentifier: "guess", sender: self)
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "guess" {
            let tableViewController = segue.destination as! TableViewController
            
            tableViewController.model = self.model
        }
    }
}
