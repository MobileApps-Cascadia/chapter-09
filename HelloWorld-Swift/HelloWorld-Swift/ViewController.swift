//
//  ViewController.swift
//  HelloWorld-Swift
//
//  Created by Brian Bansenauer on 5/3/15.
//  Copyright (c) 2015 Cascadia College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fName: UITextField!
    @IBOutlet weak var lblOutput: UILabel!
    @IBOutlet weak var lName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showOutput(sender: AnyObject) {
        
        if fName.text == "" && lName.text == ""
        {
            lblOutput.text = "Hello World!"
        }
        else
        {
        lblOutput.text = "Hello " + fName.text + lName.text
        //lblOutput.text = "Hello \(txtName.text)"
        }
    }
    
    @IBAction func backgroundTap(sender: AnyObject){
        self.view.endEditing(true);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func helloworldTap(sender: AnyObject) {
        lblOutput.text = "Hello World!"
    }
}

