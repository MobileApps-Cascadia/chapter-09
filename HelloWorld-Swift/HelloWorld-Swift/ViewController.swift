//
//  ViewController.swift
//  HelloWorld-Swift
//
//  Created by Brian Bansenauer on 5/3/15.
//  Copyright (c) 2015 Cascadia College. All rights reserved.
//
// Add comments just to make a change to the file.
// Add another comment to make a change to the file.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var lblOutput: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showOutput(sender: AnyObject) {
        if(txtFirstName == nil && txtLastName == nil)
        {
            lblOutput.text = "Hello World!"
        }
        else
        {
            lblOutput.text = "Hello " + txtFirstName.text + txtLastName.text
        //lblOutput.text = "Hello \(txtName.text)"
        }
    }
    
    @IBAction func showOutput2(sender: AnyObject) {
        
        lblOutput.text = "Hello World!"
    }
    
    @IBAction func backgroundTap(sender: AnyObject){
        self.view.endEditing(true);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

