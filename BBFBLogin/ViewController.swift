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
        let alertController = UIAlertController(title: "Select Source", message: "", preferredStyle: .Alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            println(action)
        }
        let imageAction = UIAlertAction(title: "Image", style: .Default) { (_) in
            let image: UIImage = UIImage(named: "doggie")!
            FBSDKMessengerSharer.shareImage(image, withOptions: nil)
        }
        let videoAction = UIAlertAction(title: "Video", style: .Default) { (_) in
            let filepath:String = NSBundle.mainBundle().pathForResource("video", ofType: "mov")!
            let videoData: NSData = NSData(contentsOfFile: filepath)!
            FBSDKMessengerSharer.shareVideo(videoData, withOptions: nil)
        }

        
        
        alertController.addAction(imageAction)
        alertController.addAction(videoAction)
        alertController.addAction(cancelAction)
        
        self.presentViewController(alertController, animated: true){}

        
        
        }
    

    


}

