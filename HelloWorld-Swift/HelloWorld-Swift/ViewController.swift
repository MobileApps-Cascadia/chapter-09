//
//  ViewController.swift
//  HelloWorld-Swift
//
//  Created by Brian Bansenauer on 5/3/15.
//  Copyright (c) 2015 Cascadia College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var lblOutput: UILabel!
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Excercise #1 & 2
    @IBAction func showOutput(sender: AnyObject) {
        //if both text fields first and last name empty then display "Hello World!" message
        if(txtFirstName.text.isEmpty && txtLastName.text.isEmpty){
            lblOutput.text = "Hello World!"
        }else{
            lblOutput.text = "Hello, \(txtFirstName.text) \(txtLastName.text)"
    
        }
    }
    
    //Exercise #4, Tap Me button will change lblOutput text
    @IBAction func showHelloWorld(sender: AnyObject) {
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

//Complete Exercise #1 thru 4