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
    
    var municipiobp: UIBezierPath! = TestClass().createMunicipiosBezierPath()//TestClass().createYauco()    var municipiobp
    
    //TestClass().createPRMap()
    

    
    
    
    
    
     override func didMove(to view: SKView){
        
        self.backgroundColor = SKColor.blue
        let municipioSKSpriteNode: SKSpriteNode = TestClass().drawMunicipiosBezierPath(bpmunicipio: municipiobp)
        self.addChild(municipioSKSpriteNode)
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
