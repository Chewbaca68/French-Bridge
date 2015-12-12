//
//  Sine_upController.swift
//  French_Bridge
//
//  Created by Brandon Baca on 12/10/15.
//  Copyright © 2015 Baca_Family. All rights reserved.
//

import Foundation
import UIKit
import Parse


class Sign_up: UIViewController{
    
    
    @IBOutlet weak var Username_text: UITextField!
    
    @IBOutlet weak var Password_txt: UITextField!
    
    override func viewDidLoad() {
        //put code to run after the screen is switched
    }
    
    @IBAction func Sign_up_pressed(sender: AnyObject) {
        
        let user = PFUser()
        
        user.username = Username_text.text
        user.password = Password_txt.text
        
        user.signUpInBackgroundWithBlock { succeded, error in
            if (succeded){
                print("signup worked")
                //TODO: make this go to the start of the game
                
            } else if let error=error{
                self.showErrorView(error)
            }
    }
    }
}