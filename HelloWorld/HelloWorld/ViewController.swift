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
    
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // Create and event handler for the button
    @IBAction func showOutput(_ sender: UIButton) {
        // grab the text from the text field
        // and write it into the label
        
        var helloWorldMSG: String
        helloWorldMSG = "Hello world!  Please enter first and last name"
        
        var fullName: String
        fullName = txtName.text! + txtLastName.text!
        
        //lblName.text = txtName.text
        
        if txtName.text == "" && txtLastName.text == ""{
            lblName.text = helloWorldMSG
        }else{
            lblName.text = fullName
        }
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        
        var emptyMSG: String
        emptyMSG = "ther is nothing to clear"
        
        if txtName.text == txtName.text && txtLastName.text == txtLastName.text{
            lblName.text = ""
        }else if(lblName.text == ""){
            lblName.text = emptyMSG
        }
        
    }
    
    
    
}

