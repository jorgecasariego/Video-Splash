//
//  ViewController.swift
//  VideoBackgroundScreen
//
//  Created by Jorge Casariego on 26/2/16.
//  Copyright © 2016 Jorge Casariego. All rights reserved.
//

import UIKit
import VideoSplashKit

class ViewController: VideoSplashViewController {
    
    @IBOutlet weak var goToConference: UIButton!
    @IBOutlet weak var goToTutorials: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButtons()
        setupVideoBackground()
    }
    
    func setupButtons() {
        goToConference.backgroundColor = UIColor.whiteColor()
        goToConference.layer.cornerRadius = 5.0
        goToConference.layer.masksToBounds = true
        
        goToTutorials.tintColor = UIColor.whiteColor()
        goToTutorials.backgroundColor = view.tintColor
        goToTutorials.layer.cornerRadius = 5.0
        goToTutorials.layer.masksToBounds = true
    }
    
    func setupVideoBackground() {
        let url = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("iphone6", ofType: "mp4")!)
        self.videoFrame = view.frame
        self.fillMode = .ResizeAspectFill
        self.alwaysRepeat = true
        self.sound = true
        self.startTime = 0.0
        self.duration = 100.0
        self.alpha = 0.7
        self.backgroundColor = UIColor.whiteColor()
        self.contentURL = url
        self.restartForeground = true
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
}

