//
//  ViewController.swift
//  BBFBLogin
//
//  Created by Bryan A Bolivar M on 25/03/15.
//  Copyright (c) 2015 Bryan A Bolivar M. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var loginButton:FBSDKLoginButton = FBSDKLoginButton()
        loginButton.center = self.view.center;
        self.view.addSubview(loginButton)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sharePhotoInMessenger(sender: AnyObject) {
            let image: UIImage = UIImage(named: "doggie")!
            FBSDKMessengerSharer.shareImage(image, withOptions: nil)
   
        }
    
}

