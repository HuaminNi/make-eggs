//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var theLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    
//    let softTime = 5
//    let mediumTime = 7
//    let hardTime = 12
    var timer = Timer()
        @IBAction func hardnessSelected(_ sender: UIButton) {
            timer.invalidate()
            var passedTime = 0
            let hardness  = sender.currentTitle! //sender.currenttitle是一个optional type,因为有些button可能没有title
            //  countdown timer solution comes from the article:https://codewithchris.com/swift-timer/
            let totalTime = eggTimes[hardness]!
            progressBar.progress = 0.0
            theLabel.text = hardness
                  Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                        print("\(totalTime - passedTime) seconds")
                        
                        passedTime += 1
                    self.progressBar.progress = Float(passedTime) / Float(totalTime)
                    
                    if(passedTime==totalTime){
                        self.theLabel.text = "Done!"
                                timer.invalidate()
                            }
                   }
            
            
        
            
            //print(result!) //这里要也加！因为dictionary取值可能为nil
            
            
    }
            
    
}
