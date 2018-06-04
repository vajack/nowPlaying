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
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

