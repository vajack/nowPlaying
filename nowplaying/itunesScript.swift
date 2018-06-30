//
//  applescript.swift
//  nowplaying
//
//  Created by IkegamiYuki on 2018/06/09.
//  Copyright © 2018 IkegamiYuki. All rights reserved.
//

import Cocoa

class itunesScript {
    func getMusicInfo() -> Dictionary<String, Any?> {
        let appleScript = "tell application \"iTunes.app\"\n"
            + "set trackName to name of current track\n"
            + "set trackArtist to artist of current track\n"
            + "return {trackName,trackArtist}\n"
            + "end tell"
        
        var error: NSDictionary?
        var songInfo: Dictionary<String,Any?> = ["Song": nil, "Artist": nil]
        if let scriptObject = NSAppleScript(source: appleScript) {
            if let output: NSAppleEventDescriptor = scriptObject.executeAndReturnError(&error) {
                songInfo["Song"] = output.atIndex(1)?.stringValue!
                songInfo["Artist"] = output.atIndex(2)?.stringValue!
            }else if error != nil {
                print(error!)
            }
        }
        return songInfo
    }
}
