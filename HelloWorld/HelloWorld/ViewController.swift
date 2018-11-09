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
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var txtFirst: UITextField!
    @IBOutlet weak var txtLast: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // Create and event handler for the button
    @IBAction func showOutput(_ sender: UIButton) {
        // grab the text from the text field
        // and write it into the label
        if (txtFirst.text == "" && txtLast.text != "") {
            lblName.text = "Hello " + txtLast.text!;
        }
        if (txtFirst.text != "" && txtLast.text == "") {
            lblName.text = "Hello " + txtFirst.text!;
        }
        if (txtFirst.text == "" && txtLast.text == ""){
            lblName.text = "Hello World!";
        }
        else {
            lblName.text = "Hello " + txtFirst.text! + " " + txtLast.text!;
        }
    }
    
    // event handler for clear form button
    @IBAction func clearForm(_ sender: UIButton) {
        txtFirst.text = "";
        txtLast.text = "";
    }
    
}

