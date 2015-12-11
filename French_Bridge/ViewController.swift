//
//  ViewController.swift
//  French_Bridge
//
//  Created by Brandon Baca on 12/8/15.
//  Copyright © 2015 Baca_Family. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    @IBOutlet weak var Login_button: UIButton!
    @IBOutlet weak var Username_txt: UITextField!
    @IBOutlet weak var Password_txt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let testObject = PFObject(className: "TestObject")
        testObject["foo"] = "bar"
        testObject.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            print("Object has been saved.")
        }
    }
    
    
    @IBAction func Login_tapped(sender: UIButton) {
        
        // exicuted when send button is tapped 
        let testObject = PFObject(className: "send_test")
        testObject["test_top"] = "test item"
        testObject.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in print("send test sent to surver")}
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

