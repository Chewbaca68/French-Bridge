//
//  Main_menuController.swift
//  French_Bridge
//
//  Created by Brandon Baca on 12/11/15.
//  Copyright © 2015 Baca_Family. All rights reserved.
//

import Foundation
import UIKit
import Parse


class Main_menu: UIViewController{
    
    
    
    override func viewDidLoad() {
        //put code to run after the screen is switched
    }
    
    @IBAction func Sign_out_pressed(sender: AnyObject) {
        
        PFUser.logOut()
        let signout = "signout"
        
         self.performSegueWithIdentifier(signout, sender: nil)
    }
    
    
    //show player online ready to join a game
    @IBAction func Online_Players_pressed(sender: AnyObject) {
        
        let query = PFQuery(className: "Session")
        query.whereKeyExists("user")
       // let nameonline = query.findObjects()
        //print(nameonline)
        
        PFCloud.callFunction("getusers", withParameters: "username" : users)
        
        
        query.findObjectsInBackgroundWithBlock {
            (objects: [PFObject]?, error: NSError?) -> Void in
            
            if error == nil {
                // The find succeeded.
                print("Successfully retrieved \(objects!.count) scores.")
                // Do something with the found objects
                if let objects = objects {
                    for object in objects {
                        print(object.objectId)
                    }
                }
            } else if let error = error {
                self.showErrorView(error) // if failed display the error
            }
        
        
        
        
        }
        
    }
    
    //desplay the game rules and how to play
    @IBAction func How_to_Play_pressed(sender: AnyObject) {
        //TODO:: put in descrition here
        let rules = "   "
        let alert = UIAlertController(title: "How to Play", message: rules, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        presentViewController(alert, animated: true, completion: nil)

    }
}