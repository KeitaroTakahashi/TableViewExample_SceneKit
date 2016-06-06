
//
//  SceneKitTest.swift
//  TableViewExample_SceneKit
//
//  Created by Keitaro Takahashi on 12/1/15.
//  Copyright © 2015 Keitaro. All rights reserved.
//

import Cocoa
import SceneKit

class ScrollViewController: NSViewController {

    @IBOutlet weak var myScrollView: NSScrollView!
    
    struct t_data{
        var label:String
        var sceneView:SCNScene
    }
    
    var dataStr:[t_data] = []

    func setupTable(){
        
        
        
        for i in 0..<10{
            var scene = SCNScene()
            let TScene = DrawObjectClass(w:600,h:200)
            
            TScene.drawSphere(&scene)
            
            self.dataStr.append(t_data(label: "cell_"+i.description, sceneView: scene))
            //ad.TargetNMFVectorView.append(SceneClass())
        }
        
        print("setup done : data count = \(self.dataStr.count)")
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        setupTable()
        
        //self.myScrollView.documentView!.setFrameSize(NSSize(width: 1000, height: 300))
        //self.myScrollView.contentView.setFrameSize(NSSize(width: 1000, height: 1000))
        //self.myScrollView.frame = CGRect(x: 0, y: 0, width: 1000, height: 300)
        
        let height = 2000
        let view = NSView(frame: NSRect(x: 0, y: 0, width: 400, height: height))
        self.myScrollView.documentView! = view
        
        
        for i in 0..<self.dataStr.count{
            
            let v = listCell2(nibName:"listCell2",bundle:nil)
            let subView = NSView(frame: NSRect(x:10,y:height - i*400,width:600,height:400))
            subView.addSubview(v!.view)
            view.addSubview(subView)
            
            v!.label.stringValue = self.dataStr[i].label
            v!.myView.scene = self.dataStr[i].sceneView
            v!.myView.backgroundColor = NSColor.grayColor()
            
            
            
            var scene = SCNScene()
            let TScene = DrawObjectClass(w:600,h:200)
            
            TScene.drawSphere(&scene)

            
            let label = NSTextField(frame: NSRect(x: 10, y: height - i*300, width: 300, height: 300))
            label.stringValue = self.dataStr[i].label
            view.addSubview(label)
            
            
        }
        
        //self.myScrollView.scrollToBeginningOfDocument(nil)
        
        
    }
    
}
