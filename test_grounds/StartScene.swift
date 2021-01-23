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
    
    var caboRojobp: UIBezierPath! = TestClass().caboRojoDrawBezierPath()
    var hormiguerosbp: UIBezierPath! = TestClass().hormiguerosDrawBezierPath()//TestClass().createYauco()    var municipiobp
    var mayaguezbp: UIBezierPath! = TestClass().mayaguezDrawBezierPath()
    var anascobp: UIBezierPath! = TestClass().anascoDrawBezierPath()
    var rinconbp: UIBezierPath! = TestClass().rinconDrawBezierPath()
    var aguadabp: UIBezierPath! = TestClass().aguadaDrawBezierPath()
    var aguadillabp: UIBezierPath! = TestClass().aguadillaDrawBezierPath()    //var SKSpriteNodesArray: [SKSpriteNode] = []
    //TestClass().createPRMap()

    

    
    
    
    
    
     override func didMove(to view: SKView){
        
        self.backgroundColor = SKColor.green
        let containerNode: SKNode = nodesContainer()
        let backgroundSKSpriteNode: SKSpriteNode = prBackground()
        


        let caboRojoSKSpriteNode: SKSpriteNode = TestClass().caboRojoBezierPathToSKSpriteNode(bpCaboRojo: caboRojobp)
        caboRojoSKSpriteNode.xScale = -1.0
        caboRojoSKSpriteNode.zRotation = 9.44
        caboRojoSKSpriteNode.position = CGPoint(x:80, y:143)
        caboRojoSKSpriteNode.zPosition = 1
        containerNode.addChild(caboRojoSKSpriteNode)
        
        let hormiguerosSKSpriteNode: SKSpriteNode = TestClass().hormiguerosBezierPathToSKSpriteNode(bphormigueros: hormiguerosbp)
        hormiguerosSKSpriteNode.xScale = -1.0
        hormiguerosSKSpriteNode.zRotation = 9.44
        hormiguerosSKSpriteNode.position = CGPoint(x:90.17, y:168.58)
        //hormiguerosSKSpriteNode.position = CGPoint(x:90.3, y:168.63)
            //hormiguerosSKSpriteNode.position = CGPoint(x:90.0, y:168.2)
        hormiguerosSKSpriteNode.zPosition = 1
        containerNode.addChild(hormiguerosSKSpriteNode)
        
        let mayaguezSKSpriteNode:SKSpriteNode = TestClass().mayaguezBezierPathToSKSpriteNode(bpMayaguez: mayaguezbp)
         mayaguezSKSpriteNode.xScale = -1.0
         mayaguezSKSpriteNode.zRotation = 9.44
        mayaguezSKSpriteNode.position = CGPoint(x:94.2, y:191.08)
         mayaguezSKSpriteNode.zPosition = 1
        containerNode.addChild(mayaguezSKSpriteNode)
        
        let anascoSKSpriteNode:SKSpriteNode = TestClass().anascoBezierPathToSKSpriteNode(bpAnasco: anascobp)
         anascoSKSpriteNode.xScale = -1.0
         anascoSKSpriteNode.zRotation = 9.44
        anascoSKSpriteNode.position = CGPoint(x:86.58, y:211.45)
         anascoSKSpriteNode.zPosition = 1
         containerNode.addChild(anascoSKSpriteNode)
        
        let rinconSKSpriteNode:SKSpriteNode = TestClass().rinconBezierPathToSKSpriteNode(bpRincon: rinconbp)
         rinconSKSpriteNode.xScale = -1.0
         rinconSKSpriteNode.zRotation = 9.44
        rinconSKSpriteNode.position = CGPoint(x:60.98, y:226.43)
         rinconSKSpriteNode.zPosition = 1
         containerNode.addChild(rinconSKSpriteNode)
        
        let aguadaSKSpriteNode:SKSpriteNode = TestClass().aguadaBezierPathToSKSpriteNode(bpAguada: aguadabp)
         aguadaSKSpriteNode.xScale = -1.0
         aguadaSKSpriteNode.zRotation = 9.44
         aguadaSKSpriteNode.position = CGPoint(x:72.71, y:234.43)
         aguadaSKSpriteNode.zPosition = 1
         containerNode.addChild(aguadaSKSpriteNode)
        
        let aguadillaSKSpriteNode:SKSpriteNode = TestClass().aguadillaBezierPathToSKSpriteNode(bpAguadilla: aguadillabp)
         aguadillaSKSpriteNode.xScale = -1.0
         aguadillaSKSpriteNode.zRotation = 9.44
         aguadillaSKSpriteNode.position = CGPoint(x:91.63, y:258.82)
         aguadillaSKSpriteNode.zPosition = 1
         containerNode.addChild(aguadillaSKSpriteNode)
        
        self.addChild(backgroundSKSpriteNode)
        self.addChild(containerNode)

        //self.addChild(caboRojoSKSpriteNode)
        //self.addChild(hormiguerosSKSpriteNode)
        

        }

       func nodesContainer() -> SKNode{
           let nodes_Container = SKNode()
           //nodes_Container.color = UIColor.white
           //nodes_Container.size = CGSize(width: self.size.width * 0.90, height:self.size.height * 0.90)
           //nodes_Container.anchorPoint = CGPoint.zero
           //nodes_Container.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
           return nodes_Container
       }
    
        func prBackground() ->SKSpriteNode {
        let backgroundNode = SKSpriteNode()
        backgroundNode.color = UIColor.white
        backgroundNode.size = CGSize(width: self.size.width * 0.90, height:self.size.height * 0.90)
        //nodes_Container.anchorPoint = CGPoint.zero
        backgroundNode.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        return backgroundNode
            
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


