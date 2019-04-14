//
//  Anxiety.swift
//  Bitcamp2019
//
//  Created by Zac on 4/13/19.
//  Copyright © 2019 Zac. All rights reserved.
//

import Foundation
import AVKit
import AVFoundation

var audioPlayer = AVAudioPlayer()//sound
var endScreen = 0
var purchasedRemoveAds = 0


class AnxietyController: UIViewController {
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    var labelNum = 0;
    
    
    var randomString = 0;
    
    var labelArray:[String] = ["Don't worry", "Count to 10", "Only focus on the present", "Take your time", "Deep breaths", "Think calm thoughts",
    "Call a friend", "Listen to music", "Enjoy the moment", "Ignore Fear", "You got this",
    "Strength is you", "Peaceful thoughts are yours"]
    
    
    var sound1 = false;
    var sound2 = false;
    var sound3 = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Plays sound even if phone is on silent mode
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
        }
        catch {
            // report for an error
        }
    }
    
    @IBAction func updateLabel(_ sender: UIButton) {
        
        var rand = Int.random(in: 0 ... 5)
        while(randomString == rand ){
            rand = Int.random(in: 0 ... 5)
        }
        randomString = rand
        adviceLabel.text = String(describing: labelArray[randomString])
        
    }
    
    @IBAction func marleySounds(_ sender: UIButton) {
    
        if(sound1){
        audioPlayer.pause()
        sound1 = false;
        }
        //Plays sound
        else{
            
        do
            {
                sound1 = true;
                sound2 = false;
                sound3 = false;
                audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Three Little Birds", ofType: "mp3")!))
                audioPlayer.prepareToPlay()
                audioPlayer.play()
                //Loops the sound
                audioPlayer.numberOfLoops = -1
                
            }
            catch{
                print(error)
            }
        }
    }
    
    @IBAction func oceanMusic(_ sender: UIButton) {
        
        if(sound2){
            audioPlayer.pause()
            sound2 = false;
        }
        else{
            do
            {
                sound2 = true;
                sound1 = false;
                sound3 = false;
                
                audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "ocean", ofType: "mp3")!))
                audioPlayer.prepareToPlay()
                audioPlayer.play()
                //Loops the sound
                audioPlayer.numberOfLoops = -1
                
            }
            catch{
                print(error)
            }
        }
    }
    
    @IBAction func natureMusic(_ sender: UIButton) {
        
        if(sound3){
            audioPlayer.pause()
            sound3 = false;
        }
        else{
        
            //Plays sound
            do
            {
                sound3 = true;
                sound1 = false;
                sound2 = false;
                audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "nature", ofType: "mp3")!))
                audioPlayer.prepareToPlay()
                audioPlayer.play()
                //Loops the sound
                audioPlayer.numberOfLoops = -1
                
            }
            catch{
                print(error)
            }
        }
    }
    
    func toggleSound()
    {
        //print("sound pressed")
        if(audioPlayer.isPlaying)
        {
            audioPlayer.pause()
        }
        else
        {
            audioPlayer.play()
        }
    }
}
