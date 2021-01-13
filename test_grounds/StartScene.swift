//
//  StartScene.swift
//  test_grounds
//
//  Created by javier pizarro on 1/8/21.
//  Copyright © 2021 javierpizarro. All rights reserved.
//

import SpriteKit
import UIKit




class StartScene: SKScene{
    
    var hormiguerosbp: UIBezierPath! = TestClass().hormiguerosDrawBezierPath()//TestClass().createYauco()    var municipiobp
    var caboRojobp: UIBezierPath = TestClass().caboRojoDrawBezierPath()
    //var SKSpriteNodesArray: [SKSpriteNode] = []
    //TestClass().createPRMap()
    

    
    
    
    
    
     override func didMove(to view: SKView){
        
        self.backgroundColor = SKColor.blue
        //let puertoRicoSKSpriteNode: SKSpriteNode = TestClass().puertoRicoBezierPathToSKSpriteNode(bpPuertoRico: puertoRicobp)
        //puertoRicoSKSpriteNode.xScale = -1.0
        //puertoRicoSKSpriteNode.zRotation = 9.5
       // puertoRicoSKSpriteNode.position = CGPoint(x:100, y: 100)
        //SKSpriteNodesArray.append(puertoRicoSKSpriteNode)
        let caboRojoSKSpriteNode: SKSpriteNode = TestClass().caboRojoBezierPathToSKSpriteNode(bpCaboRojo: caboRojobp)
        caboRojoSKSpriteNode.xScale = -1.0
        caboRojoSKSpriteNode.zRotation = 9.5
        caboRojoSKSpriteNode.position = CGPoint(x:50.25, y: 125.37)
        
        let hormiguerosSKSpriteNode: SKSpriteNode = TestClass().hormiguerosBezierPathToSKSpriteNode(bphormigueros: hormiguerosbp)
        //SKSpriteNodesArray.append(caboRojoSKSpriteNode)
        hormiguerosSKSpriteNode.xScale = -1.0
        hormiguerosSKSpriteNode.zRotation = 9.5
        hormiguerosSKSpriteNode.position = CGPoint(x:65.25, y: 126.99)

            
        self.addChild(caboRojoSKSpriteNode)
        self.addChild(hormiguerosSKSpriteNode)
            
        
        
       // let shapeNode = SKShapeNode(path: municipiobp.cgPath)
        //shapeNode.fillColor = UIColor.red
        //shapeNode.strokeColor = UIColor.white
        //shapeNode.position = CGPoint(x: 0, y: 0)
       // let view = SKView(frame: UIScreen.main.bounds)
        //let texture = view.texture(from: shapeNode)!
       // let municipioNode = SKSpriteNode(texture: texture)
       // self.addChild(municipioNode)    }
        
    }

}
