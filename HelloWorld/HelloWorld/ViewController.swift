//
//  ViewController.swift
//  HelloWorld
//
//  Created by Brian Bansenauer on 11/6/18.
//  Copyright © 2018 Cascadia College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Get a reference to the Text Field, Label
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // Create and event handler for the button
    @IBAction func showOutput(_ sender: UIButton) {
        // grab the text from the text field
        // and write it into the label
        lblName.text = txtName.text
    }
    
}

