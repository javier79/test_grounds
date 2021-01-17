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
    var containerNode: SKSpriteNode = TestClass().nodesContainer()
    

    
    
    
    
    
     override func didMove(to view: SKView){
        
        self.backgroundColor = SKColor.white
        


        let caboRojoSKSpriteNode: SKSpriteNode = TestClass().caboRojoBezierPathToSKSpriteNode(bpCaboRojo: caboRojobp)
        caboRojoSKSpriteNode.xScale = -1.0
        caboRojoSKSpriteNode.zRotation = 9.45
        caboRojoSKSpriteNode.position = CGPoint(x: 100, y: 100)
        //containerNode.addChild(caboRojoSKSpriteNode)
        
        let hormiguerosSKSpriteNode: SKSpriteNode = TestClass().hormiguerosBezierPathToSKSpriteNode(bphormigueros: hormiguerosbp)
        //SKSpriteNodesArray.append(caboRojoSKSpriteNode)
        hormiguerosSKSpriteNode.xScale = -1.0
        hormiguerosSKSpriteNode.zRotation = 9.45
        hormiguerosSKSpriteNode.position = CGPoint(x:108.5, y: 126.4)
        //containerNode.addChild(hormiguerosSKSpriteNode)
        
        self.addChild(containerNode)
        self.addChild(caboRojoSKSpriteNode)
        self.addChild(hormiguerosSKSpriteNode)
        

        }
       
            

       // let shapeNode = SKShapeNode(path: municipiobp.cgPath)
        //shapeNode.fillColor = UIColor.red
        //shapeNode.strokeColor = UIColor.white
        //shapeNode.position = CGPoint(x: 0, y: 0)
       // let view = SKView(frame: UIScreen.main.bounds)
        //let texture = view.texture(from: shapeNode)!
       // let municipioNode = SKSpriteNode(texture: texture)
       // self.addChild(municipioNode)    }
        
    }


