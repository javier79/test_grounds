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
    //var nodeNames = ["aguadillaNode","rinconNode", "aguadaNode"]
    var caboRojobp: UIBezierPath! = TestClass().caboRojoDrawBezierPath()
    var hormiguerosbp: UIBezierPath! = TestClass().hormiguerosDrawBezierPath()//TestClass().createYauco()    var municipiobp
    var mayaguezbp: UIBezierPath! = TestClass().mayaguezDrawBezierPath()
    var mayaguezTwobp: UIBezierPath! = TestClass().mayaguezTwoDrawBezierPath()
    var anascobp: UIBezierPath! = TestClass().anascoDrawBezierPath()
    var rinconbp: UIBezierPath! = TestClass().rinconDrawBezierPath()
    var aguadabp: UIBezierPath! = TestClass().aguadaDrawBezierPath()
    var aguadillabp: UIBezierPath! = TestClass().aguadillaDrawBezierPath()
//var SKSpriteNodesArray:
    
    var containerNode = SKNode()
    //var containerNodeTwo = SKNode()

    var aguadillaSKSpriteNode = SKSpriteNode()
    var aguadaSKSpriteNode = SKSpriteNode()
    var rinconSKSpriteNode = SKSpriteNode()
    var anascoSKSpriteNode = SKSpriteNode()
    var mayaguezTwoSKSpriteNode = SKSpriteNode()
    var mayaguezSKSpriteNode = SKSpriteNode()
    var hormiguerosSKSpriteNode = SKSpriteNode()
    var caboRojoSKSpriteNode = SKSpriteNode()



    
     override func didMove(to view: SKView){
        
        self.backgroundColor = SKColor.green
        containerNode = nodesContainer()
        let backgroundSKSpriteNode: SKSpriteNode = prBackground()
        


        caboRojoSKSpriteNode = TestClass().caboRojoBezierPathToSKSpriteNode(bpCaboRojo: caboRojobp)
        containerNode.addChild(caboRojoSKSpriteNode)
        
        hormiguerosSKSpriteNode = TestClass().hormiguerosBezierPathToSKSpriteNode(bphormigueros: hormiguerosbp)
        containerNode.addChild(hormiguerosSKSpriteNode)
        
        mayaguezSKSpriteNode = TestClass().mayaguezBezierPathToSKSpriteNode(bpMayaguez: mayaguezbp)
         containerNode.addChild(mayaguezSKSpriteNode)
        
        mayaguezTwoSKSpriteNode = TestClass().mayaguezTwoBezierPathToSKSpriteNode(bpMayaguezTwo: mayaguezTwobp)
         containerNode.addChild(mayaguezTwoSKSpriteNode)
        
        anascoSKSpriteNode = TestClass().anascoBezierPathToSKSpriteNode(bpAnasco: anascobp)
         containerNode.addChild(anascoSKSpriteNode)
        
        rinconSKSpriteNode = TestClass().rinconBezierPathToSKSpriteNode(bpRincon: rinconbp)
         containerNode.addChild(rinconSKSpriteNode)
        
        aguadaSKSpriteNode = TestClass().aguadaBezierPathToSKSpriteNode(bpAguada: aguadabp)
         containerNode.addChild(aguadaSKSpriteNode)
        
         aguadillaSKSpriteNode = TestClass().aguadillaBezierPathToSKSpriteNode(bpAguadilla: aguadillabp)
         containerNode.addChild(aguadillaSKSpriteNode)
        
        self.addChild(backgroundSKSpriteNode)
        self.addChild(containerNode)
        //self.addChild(containerNodeTwo)

        //self.addChild(caboRojoSKSpriteNode)
        //self.addChild(hormiguerosSKSpriteNode)
        

        }

       func nodesContainer() -> SKNode{
           let nodes_Container = SKNode()
           //nodes_Container.color = UIColor.white
           //nodes_Container.size = CGSize(width: self.size.width * 0.90, height:self.size.height * 0.90)
           //nodes_Container.anchorPoint = CGPoint.zero
           //nodes_Container.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
           return  nodes_Container
       }
    
        func nodesContainerTwo() -> SKNode{
            let nodes_ContainerTwo = SKNode()
            //nodes_Container.color = UIColor.white
            //nodes_Container.size = CGSize(width: self.size.width * 0.90, height:self.size.height * 0.90)
            //nodes_Container.anchorPoint = CGPoint.zero
            //nodes_Container.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
            return  nodes_ContainerTwo
        }
    
        func prBackground() ->SKSpriteNode {
        let backgroundNode = SKSpriteNode()
        backgroundNode.color = UIColor.white
        backgroundNode.size = CGSize(width: self.size.width * 0.90, height:self.size.height * 0.90)
        //nodes_Container.anchorPoint = CGPoint.zero
        backgroundNode.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        return backgroundNode
            
    }
       override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            guard let touch = touches.first else {
            return
        }
             
        let touchLocation = touch.location(in: self)
        let touchedNode = self.physicsWorld.body(at:touchLocation)

        for child in containerNode.children {
            if let spriteNode = child as? SKSpriteNode {
                //if (touchedNode.contains(child.physicsBody)){
                    if(touchedNode?.node?.name == spriteNode.name){
                        spriteNode.color = .brown
                        spriteNode.colorBlendFactor = 0.5
                    }

                  }

                }
        /*for childTwo in containerNodeTwo.children {
            if let spriteNodeTwo = childTwo as? SKSpriteNode {
                //if (touchedNode.contains(child.physicsBody)){
                    if(touchedNode.name == spriteNodeTwo.name){
                        spriteNodeTwo.color = .brown
                        spriteNodeTwo.colorBlendFactor = 0.5
                    }

                  }

                }*/
               
            

            
          }
}
/*                   override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    guard let touch = touches.first else {
    return
}
     
let touchLocation = touch.location(in: self)
let touchedNode = self.atPoint(touchLocation)
for i in nodeNames.indices{
    if(touchedNode.name == nodeNames[i]){
        for child in containerNode.children {
            if let spriteNode = child as? SKSpriteNode {
                if(touchedNode.name == spriteNode.name){
                spriteNode.color = .brown
                spriteNode.colorBlendFactor = 0.5
            }

          }

        }
       }
    

    }
  }**/

