//
//  Sad.swift
//  Bitcamp2019
//
//  Created by Zac on 4/14/19.
//  Copyright © 2019 Zac. All rights reserved.
//

import Foundation
import UIKit
import MessageUI

class SadController: UIViewController, MFMessageComposeViewControllerDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func youtubeButton(_ sender: UIButton) {
        
        print("youtube")
        UIApplication.shared.openURL(NSURL(string: "https://www.youtube.com/results?search_query=funny")! as URL)
    }
    
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
    }
    
    func displayMessageInterface() {
        let composeVC = MFMessageComposeViewController()
        composeVC.messageComposeDelegate = self
        
        // Configure the fields of the interface.
        composeVC.recipients = ["741741"];
        composeVC.body = "CONNECT"
        
        // Present the view controller modally.
        if MFMessageComposeViewController.canSendText() {
            self.present(composeVC, animated: true, completion: nil)
        } else {
            print("Can't send messages.")
        }
    }
    @IBAction func textFriend(_ sender: UIButton) {
        
          displayMessageInterface()
    }
}
