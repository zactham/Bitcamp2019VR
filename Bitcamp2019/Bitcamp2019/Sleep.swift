//
//  Sleep.swift
//  Bitcamp2019
//
//  Created by Zac on 4/14/19.
//  Copyright © 2019 Zac. All rights reserved.
//

import Foundation
import UIKit

class SleepController: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func start(_ sender: UIButton) {

       displaySheep()
        
    }
    
    func displaySheep(){
        
        var xCoord = Int.random(in: 40 ... 300)
        var yCoord = Int.random(in: 250 ... 550)
        
        var imageView = UIImageView(frame: CGRect(x: xCoord, y: yCoord, width: 40, height: 40));// set as you want
        var sheepImage = UIImage(named: "sheep.png");
        imageView.image = sheepImage;
        self.view.addSubview(imageView);
    }
}
