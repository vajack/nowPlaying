//
//  AppDelegate.swift
//  nowplaying
//
//  Created by IkegamiYuki on 2018/06/04.
//  Copyright © 2018 IkegamiYuki. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {


    @IBOutlet weak var statusBar: NSMenu!
    
    let statusItem = NSStatusBar.system.statusItem(withLength: -1)
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        self.statusItem.title = "Song - Artist"
        self.statusItem.highlightMode = true
        self.statusItem.menu = statusBar
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

