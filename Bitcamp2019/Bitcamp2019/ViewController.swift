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
        
        var suicideDefault = UserDefaults.standard
        
        if(suicideDefault.value(forKey: "suicide") != nil)
        {
            suicideClicks = angryDefault.value(forKey: "suicide") as! NSInteger
            print("Loading suicide from user defaults as: ", suicideClicks);
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
        
        suicideClicks = 0;
        var suicideDefault = UserDefaults.standard
        angryDefault.setValue(suicideClicks, forKey: "suicide")
        print("Saving suicide to UserDefault as: ", suicideClicks);
        suicideDefault.synchronize()
        
        sadClicks = 0;
        var sadDefault = UserDefaults.standard
        angryDefault.setValue(sadClicks, forKey: "sad")
        print("Saving sad to UserDefault as: ", sadClicks);
        sadDefault.synchronize()
        
        happyClicks = 0;
        var happyDefault = UserDefaults.standard
        happyDefault.setValue(happyClicks, forKey: "happy")
        print("Saving happy to UserDefault as: ", happyClicks);
        happyDefault.synchronize()
        
        sleepyClicks = 0;
        var sleepyDefault = UserDefaults.standard
        sleepyDefault.setValue(suicideClicks, forKey: "sleepy")
        print("Saving suicide to UserDefault as: ", sleepyClicks);
        sleepyDefault.synchronize()
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
        var suicideDefault = UserDefaults.standard
        suicideDefault.setValue(suicideClicks, forKey: "suicide")
        print("Saving suicide to UserDefault as: ", suicideClicks);
        suicideDefault.synchronize()
    }
    
    @IBAction func increaseSadClicks(_ sender: UIButton) {
        sadClicks += 1
        var sadDefault = UserDefaults.standard
        sadDefault.setValue(suicideClicks, forKey: "sad")
        print("Saving sad to UserDefault as: ", sadClicks);
        sadDefault.synchronize()
    }
    
    
    @IBAction func increaseHappyClicks(_ sender: UIButton) {
        happyClicks += 1
        var happyDefault = UserDefaults.standard
        happyDefault.setValue(happyClicks, forKey: "happy")
        print("Saving happy to UserDefault as: ", happyClicks);
        happyDefault.synchronize()
    }
    
    @IBAction func increaseSleepyClicks(_ sender: UIButton) {
        sleepyClicks += 1
        var sleepyDefault = UserDefaults.standard
        sleepyDefault.setValue(sleepyClicks, forKey: "sleepy")
        print("Saving happy to UserDefault as: ", happyClicks);
        sleepyDefault.synchronize()
    }
    
}

