//
//  ViewController.swift
//  nowplaying
//
//  Created by IkegamiYuki on 2018/06/04.
//  Copyright © 2018 IkegamiYuki. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var songLabel: NSTextField!
    @IBOutlet weak var artistLabel: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        songLabel.stringValue = "Loading Song..."
        artistLabel.stringValue = "Loading Artist..."
        getSonginfo()
        Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(ViewController.getSonginfo), userInfo: nil, repeats: true)
    }

    @objc func getSonginfo() {
        let now = itunesScript.init()
        let songInfo = now.getMusicInfo()
        if songInfo["Song"]! != nil {
            print("test")
            songLabel.stringValue = songInfo["Song"]!! as! String
            artistLabel.stringValue = songInfo["Artidt"]!! as! String
        } else {
            songLabel.stringValue = "Song Load Error"
            artistLabel.stringValue = "Artist Load Error"
        }
    }
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}
