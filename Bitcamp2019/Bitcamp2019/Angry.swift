//
//  Angry.swift
//  Bitcamp2019
//
//  Created by Zac on 4/13/19.
//  Copyright © 2019 Zac. All rights reserved.
//

import Foundation
import UIKit
import MessageUI
import AVKit
import AVFoundation

class AngryController: UIViewController, MFMessageComposeViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
    }
    
    func displayMessageInterface() {
        let composeVC = MFMessageComposeViewController()
        composeVC.messageComposeDelegate = self
        
        // Configure the fields of the interface.
        composeVC.recipients = ["2179799423"]
        composeVC.body = "I got something on mind, are you free?"
        
        // Present the view controller modally.
        if MFMessageComposeViewController.canSendText() {
            self.present(composeVC, animated: true, completion: nil)
        } else {
            print("Can't send messages.")
        }
    }
    
    @IBAction func friendButton(_ sender: UIButton) {
        
        displayMessageInterface()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func exerciseButton(_ sender: UIButton) {
        
        UIApplication.shared.openURL(NSURL(string: "https://www.google.com/maps/search/gym/")! as URL)
    }
    
    @IBAction func activitesButton(_ sender: UIButton) {
        
        UIApplication.shared.openURL(NSURL(string: "https://www.google.com/maps/search/movies/")! as URL)
    }
}
