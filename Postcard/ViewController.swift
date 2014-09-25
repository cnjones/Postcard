//
//  ViewController.swift
//  Postcard
//
//  Created by Christopher Jones on 2014-09-25.
//  Copyright (c) 2014 ONESTEP Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameText: UITextField!
    @IBOutlet weak var enterMessageText: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        nameLabel.text = enterNameText.text
        enterNameText.text = ""
        enterNameText.resignFirstResponder()
        
        messageLabel.text = enterMessageText.text
        enterMessageText.text = ""
        enterMessageText.resignFirstResponder()
        
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

