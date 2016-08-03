//
//  RegisterPageViewController.swift
//  thirdTimeIsACharm
//
//  Created by GEGWC22 on 8/3/16.
//  Copyright © 2016 Hayoun. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {
    
    @IBOutlet var userEmailTextField: UITextField!
    @IBOutlet var userPasswordTextField: UITextField!
    @IBOutlet var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func registerButtonTapped(sender: AnyObject) {
        
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
        let userConfirmPassword = confirmPasswordTextField.text;
        
        // Check for empty fields
        if(userEmail!.isEmpty || userPassword!.isEmpty || userConfirmPassword!.isEmpty)
        {
            
            // display alert message
            
            displayMyAlertMessage("All fields are required");
            
            return;
        }
        
        // Check if passwords match
        if(userPassword != userConfirmPassword)
        {
            
            // display alert message
            
            displayMyAlertMessage("Passwords do not match");
            
            return;
        }
        
        
        // Store data
        
        // Display alert message with confirmation
        
        let myAlert = UIAlertController(title:"Alert", message: "Registration was successful", preferredStyle: UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction(title:"Ok", style: UIAlertActionStyle.Default)
        { action in
            self.dismissViewControllerAnimated(true, completion: nil)
            
        }
        
        myAlert.addAction(okAction);
        self.presentViewController(myAlert, animated: true, completion: nil)
        
        
    }
    
    func displayMyAlertMessage(userMessage:String)
    {
        
        let myAlert = UIAlertController(title:"Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction(title:"Ok", style: UIAlertActionStyle.Default, handler: nil);
        
        myAlert.addAction(okAction);
        
        self.presentViewController(myAlert, animated: true, completion: nil);
        
    }
}