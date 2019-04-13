//
//  StatController.swift
//  Bitcamp2019
//
//  Created by Zac on 4/13/19.
//  Copyright © 2019 Zac. All rights reserved.
//

import UIKit
var x = -63
var xDiff = 60

class StatController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if(angryClicks > 7){
//            angryClicks = 7
//        }
//        var imageViewAnxious = UIImageView(frame: CGRect(x: 10, y: 400 - anxiousClicks * 30 , width: 50, height: anxiousClicks * 30)); // set as you want
//        var anxiousBar = UIImage(named: "bar.png");
//        imageViewAnxious.image = anxiousBar;
//        self.view.addSubview(imageViewAnxious);
//
//        if(angryClicks > 7){
//            angryClicks = 7
//        }
//        angryLabel.text = String(describing: angryClicks)
//        var imageView = UIImageView(frame: CGRect(x: 70, y: 400 - angryClicks * 30 , width: 50, height: angryClicks * 30)); // set as you want
//        var angryBar = UIImage(named: "bar.png");
//        imageView.image = angryBar;
//        self.view.addSubview(imageView);
        
        
        
       
        
        
        
        func updateBars(clicks: Int, xCoord: Int){
            
            if(clicks <= 5){
                
                var imageView = UIImageView(frame: CGRect(x: xCoord, y: 550 - (clicks * 70) - 10, width: 210, height: clicks * 70)); // set as you want
                var bar = UIImage(named: "mainBar.png");
                imageView.image = bar;
                self.view.addSubview(imageView);
            }
            else
            {
                var imageView = UIImageView(frame: CGRect(x: xCoord, y: 550 - (5 * 70) - 10, width: 210, height: 5 * 70)); // set as you want
                var bar = UIImage(named: "mainBar.png");
                imageView.image = bar;
                self.view.addSubview(imageView);
            }
            
        }
        updateBars(clicks: anxiousClicks, xCoord: Int(x))
        updateBars(clicks: angryClicks, xCoord: Int(x-1) + 1 * xDiff)
        updateBars(clicks: suicideClicks, xCoord: Int(x-2) + 2 * xDiff)
        updateBars(clicks: sadClicks, xCoord: Int(x-3) + 3 * xDiff)
        updateBars(clicks: happyClicks, xCoord: Int(x-3) + 4 * xDiff)
        updateBars(clicks: sleepyClicks, xCoord: Int(x-4) + 5 * xDiff)
        
       
       
    }
        // Do any additional setup after loading the view.
}
