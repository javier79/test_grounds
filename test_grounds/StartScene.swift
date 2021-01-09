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
    
    var puertoRicobp: UIBezierPath! = TestClass().createMunicipiosBezierPath()//TestClass().createYauco()    var municipiobp
    
    //TestClass().createPRMap()
    

    
    
    
    
    
     override func didMove(to view: SKView){
        
        self.backgroundColor = SKColor.blue
        let puertoRicoSKSpriteNode: SKSpriteNode = TestClass().drawMunicipiosBezierPath(bpPuertoRico: puertoRicobp)
        puertoRicoSKSpriteNode.xScale = -1.0
       puertoRicoSKSpriteNode.zRotation = 9.5
      puertoRicoSKSpriteNode.position = CGPoint(x:100, y: 100)
        self.addChild( puertoRicoSKSpriteNode)
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
