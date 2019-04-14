//
//  Angry.swift
//  Bitcamp2019
//
//  Created by Zac on 4/13/19.
//  Copyright © 2019 Zac. All rights reserved.
//

import Foundation
import UIKit

import AVKit
import AVFoundation

class AngryController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
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
