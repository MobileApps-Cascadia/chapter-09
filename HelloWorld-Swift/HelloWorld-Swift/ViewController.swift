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
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var clearBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Say hello on button tap
    @IBAction func showOutput(_ sender: AnyObject){
    
    if txtName.text == "" && lastName.text == ""
    {
        lblOutput.text = "Hello World!"
    
    }
    else
    
    {
        lblOutput.text = "Hello " + txtName.text! + " " + lastName.text!;
    }
    
    }
    
    //clear//
    @IBAction func clearBtn(sender: AnyObject)
    {
        lblOutput.text = ""
        txtName.text=""
        lastName.text=""
    }
    
    //Hide the on-screen keyboard
    func backgroundTap(_ sender: AnyObject){
        self.view.endEditing(true);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

