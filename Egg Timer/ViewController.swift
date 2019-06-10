//
//  ViewController.swift
//  Egg Timer
//
//  Created by Vu Tran on 6/6/19.
//  Copyright © 2019 Vu Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func pauseButton(_ sender: UIBarButtonItem) {
        timer.invalidate()
    }
    
    @IBAction func addTimeButton(_ sender: UIBarButtonItem) {
        let time = 10
        if let currentTime = Int(timerLabel.text!) {
            timerLabel.text = "\(currentTime + time)"
        }
        
    }
    @IBAction func subtractTimeButton(_ sender: UIBarButtonItem) {
        let time = 10
        if let currentTime = Int(timerLabel.text!) {
            if currentTime >= 10 {
                timerLabel.text = "\(currentTime - time)"
            }
        }
    }
    
    @IBAction func resetButton(_ sender: UIBarButtonItem) {
        let startTime = 210
        timerLabel.text = "\(startTime)"
    }
    
    @IBAction func playButton(_ sender: UIBarButtonItem) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(processTimer), userInfo: nil, repeats: true)
    }
    
    @objc func processTimer() {
        if var time = Int(timerLabel.text!) {
            time -= 1
            timerLabel.text = "\(time)"
            if time == 0 {
                timer.invalidate()
            }
        }
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

