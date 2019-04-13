//
//  StatController.swift
//  Bitcamp2019
//
//  Created by Zac on 4/13/19.
//  Copyright © 2019 Zac. All rights reserved.
//

import UIKit
class StatController: UIViewController {
    
    @IBOutlet weak var angryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imageViewAnxious = UIImageView(frame: CGRect(x: 71, y: 400 - anxiousClicks * 30 , width: 50, height: anxiousClicks * 30)); // set as you want
        var anxiousBar = UIImage(named: "bar.png");
        imageViewAnxious.image = anxiousBar;
        self.view.addSubview(imageViewAnxious);
        
        angryLabel.text = String(describing: angryClicks)
        var imageView = UIImageView(frame: CGRect(x: 11, y: 400 - angryClicks * 30 , width: 50, height: angryClicks * 30)); // set as you want
        var angryBar = UIImage(named: "bar.png");
        imageView.image = angryBar;
        self.view.addSubview(imageView);
        
       
       
    }
        // Do any additional setup after loading the view.
}
