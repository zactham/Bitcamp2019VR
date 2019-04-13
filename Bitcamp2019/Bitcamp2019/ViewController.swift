//
//  ViewController.swift
//  Bitcamp2019
//
//  Created by Zac on 4/12/19.
//  Copyright © 2019 Zac. All rights reserved.
//

import UIKit

var anxiousClicks = 0
var angryClicks = 0
var angryAmount = 0;
var suicideClicks = 0
var sadClicks = 0
var happyClicks = 0
var sleepyClicks = 0

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var anxiousDefault = UserDefaults.standard
        
        if(anxiousDefault.value(forKey: "anxious") != nil)
        {
            anxiousClicks = anxiousDefault.value(forKey: "anxious") as! NSInteger
            print("Loading angry from user defaults as: ", anxiousClicks);
        }
        else
        {
            print("No angry key found");
        }
        
        ///
        var angryDefault = UserDefaults.standard
        
        if(angryDefault.value(forKey: "angry") != nil)
        {
            angryClicks = angryDefault.value(forKey: "angry") as! NSInteger
            print("Loading angry from user defaults as: ", angryClicks);
        }
        else
        {
            print("No angry key found");
        }
        
        
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func Reset(_ sender: UIButton) {
        
        anxiousClicks = 0;
        var anxiousDefault = UserDefaults.standard
        anxiousDefault.setValue(anxiousClicks, forKey: "anxious")
        print("Saving anxious to UserDefault as: ", anxiousClicks);
        anxiousDefault.synchronize()
        
        
        angryClicks = 0;
        var angryDefault = UserDefaults.standard
        angryDefault.setValue(angryClicks, forKey: "angry")
        print("Saving angry to UserDefault as: ", angryClicks);
        angryDefault.synchronize()
    }
    
    @IBAction func increaseAnxiousClicks(_ sender: UIButton) {
        anxiousClicks += 1
        var anxiousDefault = UserDefaults.standard
        anxiousDefault.setValue(anxiousClicks, forKey: "anxious")
        print("Saving anxious to UserDefault as: ", anxiousClicks);
        anxiousDefault.synchronize()
    }
    
    
    @IBAction func increaseAngryClicks(_ sender: UIButton) {
        angryClicks += 1
        var angryDefault = UserDefaults.standard
        angryDefault.setValue(angryClicks, forKey: "angry")
        print("Saving angry to UserDefault as: ", angryClicks);
        angryDefault.synchronize()
    }
    
    @IBAction func increaseSuicideClicks(_ sender: UIButton){
        suicideClicks += 1
    }
    
    @IBAction func increaseSadClicks(_ sender: UIButton) {
        sadClicks += 1
    }
    
    
    @IBAction func increaseHappyClicks(_ sender: UIButton) {
        happyClicks += 1
    }
    
    @IBAction func increaseSleepyClicks(_ sender: UIButton) {
        sleepyClicks += 1
    }
    
}

