//
//  SceneKitTest.swift
//  TableViewExample_SceneKit
//
//  Created by Keitaro Takahashi on 12/1/15.
//  Copyright © 2015 Keitaro. All rights reserved.
//

import Foundation
import SceneKit


class DrawObjectClass{
    
    
    var w:CGFloat
    var h:CGFloat
    var mat:SCNMatrix4
    
    init(w:CGFloat,h:CGFloat)
    {
        self.w = w
        self.h = h
        let m = GLKMatrix4MakeOrtho(0, Float(w), 0, Float(h), -100, 100)
        self.mat = SCNMatrix4FromGLKMatrix4(m)
        
        print("w = \(w) : h = \(h)")
        
    }
    
    
    
    func drawSphere(inout scene:SCNScene)
    {
        
        let camera = SCNNode()
        camera.camera = SCNCamera()
        scene.rootNode.addChildNode(camera)
        camera.position = SCNVector3(x: 0.0, y: 0.0, z: 50)
        
        for i in 0..<100{
            let secondSphereGeometry = SCNSphere(radius: 10.0)
            let secondSphereNode = SCNNode(geometry: secondSphereGeometry)
            let x:CGFloat = CGFloat(arc4random()%1000) / 50.0 - 5.0
            let y:CGFloat = CGFloat(arc4random()%1000) / 50.0 - 5.0
            let z:CGFloat = CGFloat(arc4random()%1000) / 50.0 - 5.0
            
            secondSphereNode.geometry!.firstMaterial!.emission.contents = NSColor.blackColor()
            secondSphereNode.geometry!.firstMaterial!.name = "sphere"+i.description
            
            //secondSphereNode.camera!.setProjectionTransform(self.mat)
            
            secondSphereNode.position = SCNVector3(x: x, y: y, z: z-5.0)
            scene.rootNode.addChildNode(secondSphereNode)
  
            
        }
        
        print("drawSphere done.")
                
        //}
        
    }
    
}

