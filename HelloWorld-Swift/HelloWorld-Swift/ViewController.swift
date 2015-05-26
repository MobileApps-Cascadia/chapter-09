//
//  ViewController.swift
//  HelloWorld-Swift
//
//  Created by Brian Bansenauer on 5/3/15.
//  Copyright (c) 2015 Cascadia College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var lblOutput: UILabel!
    @IBOutlet weak var idNum: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showOutput(sender: AnyObject) {
        if (firstName.text != "" || lastName.text != "" || idNum != "")
        {
            lblOutput.text = "Hello \(firstName.text) \(lastName.text) ID #\(idNum.text)"
        }
        else
        {
            lblOutput.text = "Hello World!"
        }
        
        self.view.endEditing(true);
    }
    
    @IBAction func backgroundTap(sender: AnyObject){
        self.view.endEditing(true);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func clearTextFields() {
        firstName.text = ""
        lastName.text = ""
        idNum.text = ""
        self.view.endEditing(true);    }

    @IBAction func reset() {
        clearTextFields()
        lblOutput.text = "Hello World!"
        self.view.endEditing(true);
    }
}

