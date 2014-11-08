//
//  ViewController.swift
//  PostCard
//
//  Created by rahman on 11/8/14.
//  Copyright (c) 2014 VE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var txtName: UILabel!
    @IBOutlet weak var txtMessage: UITextField!
    @IBOutlet weak var cmdSend: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cmdSendMail(sender: UIButton) {
        lblMessage.hidden = false
        lblMessage.text = txtName.text
        txtName.text = ""
        
        lblMessage.textColor = UIColor.redColor()
        
        txtName.resignFirstResponder()
        cmdSend.setTitle("Mail Sent !", forState: UIControlState.Normal)
        
        
    }

}

