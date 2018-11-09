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
    
    @IBOutlet weak var txtNameTwo: UITextField!
    @IBOutlet weak var lblNameTwo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // Create and event handler for the button
    @IBAction func showOutput(_ sender: UIButton) {
        // grab the text from the text field
        // and write it into the label
        lblName.text = txtName.text
        
        lblNameTwo.text = txtNameTwo.text;
        
        if(txtName.text?.isEmpty)!{
            lblName.text = "Hello";
            lblNameTwo.text = "World!";
        }
    }
    @IBAction func HelloWorldButton(_ sender: UIButton) {
        lblName.text = "Hello World!";
    }
    
    @IBAction func Clear(_ sender: UIButton) {
        lblName.text = "Hello";
        lblNameTwo.text = "";
    }
    
}

