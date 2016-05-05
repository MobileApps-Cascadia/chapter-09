//
//  ViewController.swift
//  HelloWorld-Swift
//
//  Created by Brian Bansenauer on 5/3/15.
//  Copyright (c) 2015 Cascadia College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblOutput: UILabel!
    @IBOutlet weak var txtLastName: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Say hello on button tap
    @IBAction func showOutput(sender: AnyObject) {
        
        let firstName=txtName.text!
        let lastName=txtLastName.text!
        
        // If both first and last are empty, print Hello World!
        if firstName.isEmpty && lastName.isEmpty
        {
            lblOutput.text = "Hello World!"
        }
        
        // If either first or last, or both, have data, print
        // Hello <name>!
        else
        {
            lblOutput.text = "Hello " + firstName + " " + lastName + "!";
        }
        
    }
    
    @IBAction func Clear(sender: AnyObject) {
        
        // Clear the first and last name        
        txtName.text = "";
        txtLastName.text = "";
    }
    
    
    //Hide the on-screen keyboard
    @IBAction func backgroundTap(sender: AnyObject){
        self.view.endEditing(true);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

