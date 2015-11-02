//
//  Trailer1ViewController.swift
//  MyFilesSwift9
//
//  Created by Charles Konkol on 2015-11-02.
//  Copyright © 2015 Rock Valley College. All rights reserved.
//
import UIKit
import AVKit
import AVFoundation

import UIKit

class Trailer1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue,
        sender: AnyObject?) {
            let destination = segue.destinationViewController as!
            AVPlayerViewController
            //Change to match you video filename in supporting files
            let termsPath:String? = NSBundle.mainBundle().pathForResource("trailer1", ofType: "mp4")!
            let url = NSURL(fileURLWithPath: termsPath!)
            destination.player = AVPlayer(URL: url)
    }

}
