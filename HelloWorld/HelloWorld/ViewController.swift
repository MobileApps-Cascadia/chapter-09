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
    @IBOutlet weak var FirstName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func TouchBack(_ sender: UIControl) {
        
           self.view.endEditing(true)
    }
    
    @IBAction func NullMaker(_ sender: Any) {
        lblName.text = "hello world";
    }
    
    // Create and event handler for the button
    @IBAction func showOutput(_ sender: UIButton) {
        // grab the text from the text field
        // and write it into the label
        if(txtName.text?.isEmpty)!{
            lblName.text = "hello World";
        }
        else{
            let Last = txtName.text;
            let First = FirstName.text;
            lblName.text = First! +  " " +  Last!;
        }
        
    }
    
}

