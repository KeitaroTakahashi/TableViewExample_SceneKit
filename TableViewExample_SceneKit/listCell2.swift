//
//  SceneKitTest.swift
//  TableViewExample_SceneKit
//
//  Created by Keitaro Takahashi on 12/1/15.
//  Copyright © 2015 Keitaro. All rights reserved.
//


import Foundation
import SceneKit
import Cocoa

class listCell2: NSViewController{
    
    @IBOutlet weak var label: NSTextField!
    
    @IBOutlet weak var myView: SceneClass!
    
    @IBAction func reloadAction(sender: AnyObject) {
        
        myView.backgroundColor = NSColor.whiteColor()
        
    }
    
    
    
}