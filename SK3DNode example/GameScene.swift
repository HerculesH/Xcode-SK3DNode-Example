//
//  GameScene.swift
//  SK3DNode example
//
//  Created by Hercules Hjalmarsson on 10/9/20.
//  Copyright © 2020 Hercules Hjalmarsson. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var didPresentScene: Bool = false
    
    override func didMove(to view: SKView) {
        
    }
    
    override func mouseDown(with event: NSEvent) {
        
    }
    
    override func mouseDragged(with event: NSEvent) {
        
    }
    
    override func mouseUp(with event: NSEvent) {
        
    }
    
    override func keyDown(with event: NSEvent) {
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        
        //Boolean that only loads instance once
        if(!didPresentScene)
        {
            //Loads the SCN asset
            do{ let exampleScene: SCNScene = {
                let scnScene = SCNScene(named: "SK.scnassets/scene3DExample.scn")!
                
                return scnScene
                }()
                
                //Creates the SK3DNode variable and initalizes it to a CGSize
                let scn3DNode = SK3DNode(viewportSize: CGSize(width: 1024, height: 768))
                //Sets the position and Zposition value
                scn3DNode.position = CGPoint(x:0,y:0)
                scn3DNode.zPosition = 1
                //attaches the scene to the SK3DNode
                scn3DNode.scnScene = exampleScene
                
                //Adds the node to the current Gamescene
                addChild(scn3DNode)
            }
            
            didPresentScene = true
        }
    }
}
