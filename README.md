# Video-Splash
Example showing an intro page with a video of the presentation of the iPhone 6

This example is using [VideoSplashKit](https://github.com/movielala/VideoSplashKit) library to show the video in a ViewController.

```swift
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
```

**Screenshot**

![alt text](https://github.com/jorgecasariego/Video-Splash/blob/master/screenshots/presentacion.gif "Example")
