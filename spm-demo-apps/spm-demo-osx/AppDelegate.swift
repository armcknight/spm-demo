//
//  AppDelegate.swift
//  spm-demo-osx
//
//  Created by Andrew McKnight on 4/3/16.
//
//

import Cocoa

import Columnize
import LeftPad
import Truncate

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        let string = "abcdefg"

        let truncatedString = string.truncate(toLength: 3)
        let leftPaddedString = string.leftPad(toWidth: 10)

        print("truncated: \(truncatedString)")
        print("leftPaddedString: \(leftPaddedString)")

        let states = [ "Washington",
                       "Virginia",
                       "Maryland",
                       "Florida",
                       "North Dakota",
                       "Mississippi",
                       "California" ]

        print("\nWide column:\n")

        for state in states {
            let wideColumn = state.columnize(toWidth: 20)
            print("state: \(wideColumn)")
        }

        print("\nNarrow column:\n")

        for state in states {
            let narrowColumn = state.columnize(toWidth: 7, truncationIndicator: "…")
            print("state: \(narrowColumn)")
        }
    }
    
}

