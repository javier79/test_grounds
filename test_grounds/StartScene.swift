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
        
        self.backgroundColor = SKColor.green
        let containerNode: SKSpriteNode = nodesContainer()


        let caboRojoSKSpriteNode: SKSpriteNode = TestClass().caboRojoBezierPathToSKSpriteNode(bpCaboRojo: caboRojobp)
        caboRojoSKSpriteNode.xScale = -1.0
        caboRojoSKSpriteNode.zRotation = 9.40
        caboRojoSKSpriteNode.position = CGPoint(x:-237, y: -55)
        containerNode.addChild(caboRojoSKSpriteNode)
        
        let hormiguerosSKSpriteNode: SKSpriteNode = TestClass().hormiguerosBezierPathToSKSpriteNode(bphormigueros: hormiguerosbp)
        hormiguerosSKSpriteNode.xScale = -1.0
        hormiguerosSKSpriteNode.zRotation = 9.40
        hormiguerosSKSpriteNode.position = CGPoint(x:-226.0, y: -28.9)
        containerNode.addChild(hormiguerosSKSpriteNode)
        
        self.addChild(containerNode)
        //self.addChild(caboRojoSKSpriteNode)
        //self.addChild(hormiguerosSKSpriteNode)
        

        }

       func nodesContainer() -> SKSpriteNode{
           let nodes_Container = SKSpriteNode()
           nodes_Container.color = UIColor.white
           nodes_Container.size = CGSize(width: self.size.width * 0.90, height:self.size.height * 0.90)
           //nodes_Container.anchorPoint = CGPoint.zero
           nodes_Container.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
           return nodes_Container
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


