//
//  loginViewController.swift
//  thirdTimeIsACharm
//
//  Created by GEGWC22 on 8/3/16.
//  Copyright © 2016 Hayoun. All rights reserved.
//

import UIKit


class loginViewController: UIViewController {
    
    @IBOutlet var userEmailTextField: UITextField!
    @IBOutlet var userPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func loginButtonTapped(sender: AnyObject) {
        
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
    
        let userEmailStored = NSUserDefaults.standardUserDefaults().stringForKey("userEmail");
        
        let userPasswordStored = NSUserDefaults.standardUserDefaults().stringForKey("userPassword");
        
        if(userEmailStored == userEmail)
        {
            if(userPasswordStored == userPassword)
            {
                // Login is successfull
                NSUserDefaults.standardUserDefaults().setBool(true,forKey:"isUserLoggedIn");
                NSUserDefaults.standardUserDefaults().synchronize();
                
                self.dismissViewControllerAnimated(true, completion:nil);
            }
        }
        
        
    }}