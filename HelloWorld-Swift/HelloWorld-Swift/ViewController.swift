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
    @IBOutlet weak var txtLast: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Say hello on button tap
    @IBAction func showOutput(sender: AnyObject) {
        let first = txtName.text
        let last = txtLast.text
        
        if !first!.isEmpty && !last!.isEmpty {
            lblOutput.text = "Hello \(first!) \(last!)" ;
            //lblOutput.text = "Hello \(txtName.text!).";
        }
        else {
            lblOutput.text = "Howdy"
        }
    }
    
    //Hide the on-screen keyboard
    @IBAction func backgroundTap(sender: AnyObject){
        self.view.endEditing(true);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sayHello(sender: AnyObject) {
        lblOutput.text = "Hallo Welt"
    }
}

