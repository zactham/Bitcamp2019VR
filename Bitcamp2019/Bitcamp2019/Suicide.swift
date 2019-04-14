//
//  Suicide.swift
//  Bitcamp2019
//
//  Created by Zac on 4/13/19.
//  Copyright © 2019 Zac. All rights reserved.
//

import Foundation
import UIKit

class SuicideController: UIViewController{

    @IBOutlet weak var quoteButton: UIButton!
    
    var quoteArray:[String] = ["quote1.jpg", "quote2.jpg", "quote3.jpg", "quote4.jpg", "quote5.jpg", "quote6.jpg", "quote7.jpg", "quote8.jpg", "quote9.jpg", "quote10.jpg"]
    
    var randomString = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func callButton(_ sender: UIButton) {
        
        guard let number = URL(string: "tel://" + "18002738255") else { return }
        UIApplication.shared.open(number)
        UIApplication.shared.open(number, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func quotesButton(_ sender: UIButton) {
        
        var rand = Int.random(in: 0 ... 9)
        while(randomString == rand ){
            rand = Int.random(in: 0 ... 9)
        }
        randomString = rand
        
        quoteButton.setImage(UIImage(named: quoteArray[randomString]), for: .normal)
        
        
    }
    
    
    
}
