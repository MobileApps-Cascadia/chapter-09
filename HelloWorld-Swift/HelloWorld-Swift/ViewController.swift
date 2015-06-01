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

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showOutput(sender: AnyObject) {
        lblOutput.text = "Hello " + firstName.text + " " + lastName.text
        if (firstName.text == "" && lastName.text == ""){
            lblOutput.text = "Hello World!"
        }
    }
    
    @IBAction func sayHello(sender: AnyObject) {
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

