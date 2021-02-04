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
    var isabelabp: UIBezierPath! = TestClass().isabelaDrawBezierPath()
    var bezierPathsArray = [UIBezierPath]()

    var containerNode = SKNode()
    var caboRojoSKSpriteNode = SKSpriteNode()
    var hormiguerosSKSpriteNode = SKSpriteNode()
    var mayaguezSKSpriteNode = SKSpriteNode()
    var mayaguezTwoSKSpriteNode = SKSpriteNode()
    var anascoSKSpriteNode = SKSpriteNode()
    var rinconSKSpriteNode = SKSpriteNode()
    var aguadaSKSpriteNode = SKSpriteNode()
    var aguadillaSKSpriteNode = SKSpriteNode()
    var isabelaSKSpriteNode = SKSpriteNode()

    var BezierPathPaths = [UIBezierPath]()
    var skSpriteNodeForScalingAndRotating = [SKSpriteNode]()
    var arrayAddPropertiesToSKSpriteNodes = [SKSpriteNode]()
    var SkSpriteNodesArray = [SKSpriteNode]()
    //var arrayOfNames = ["caboRojoNode", "hormiguerosNode"]

    

    //var arraySKSpriteNodesToBeNamed = [SKSpriteNode]()

   
     override func didMove(to view: SKView){

        
        self.backgroundColor = SKColor.blue
        let backgroundSKSpriteNode: SKSpriteNode = prBackground()
        containerNode = nodesContainer()
        
        bezierPathsArray = [caboRojobp, hormiguerosbp,  mayaguezbp]


        
        for i in bezierPathsArray.indices{
            skSpriteNodeForScalingAndRotating.append(TestClass().BezierPathToSKSpriteNodeTexture(bpArrayElement:bezierPathsArray[i]))
            //SkSpriteNodesArray[i] = newSkspriteNode
            
        }
        
        for i in skSpriteNodeForScalingAndRotating.indices{
            arrayAddPropertiesToSKSpriteNodes.append(TestClass().scaleAndRotation(skSpriteNodeScalingRotating:skSpriteNodeForScalingAndRotating[i]))
            print(arrayAddPropertiesToSKSpriteNodes.count)
        }
        
        
        
         for i in  arrayAddPropertiesToSKSpriteNodes.indices{
            switch arrayAddPropertiesToSKSpriteNodes[i] {
                
                
                
                case arrayAddPropertiesToSKSpriteNodes[0]:
                    caboRojoSKSpriteNode = arrayAddPropertiesToSKSpriteNodes[i]
                    caboRojoSKSpriteNode.position = CGPoint(x:80, y:143)
                    caboRojoSKSpriteNode.zPosition = 1
                    caboRojoSKSpriteNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:caboRojoSKSpriteNode.size.width/2 * 0.5, height:caboRojoSKSpriteNode.size.height/2), center: CGPoint(x:-3.5, y: 0.5))
                    caboRojoSKSpriteNode.physicsBody?.isDynamic = false
                    caboRojoSKSpriteNode.name = "caboRojoNode"
                    SkSpriteNodesArray.append(caboRojoSKSpriteNode)
                    break
                
                
                case arrayAddPropertiesToSKSpriteNodes[1]:
                    hormiguerosSKSpriteNode = arrayAddPropertiesToSKSpriteNodes[i]
                    hormiguerosSKSpriteNode.position = CGPoint(x:90.16, y:168.58)
                    hormiguerosSKSpriteNode.zPosition = 2
                    hormiguerosSKSpriteNode.physicsBody = SKPhysicsBody(circleOfRadius: hormiguerosSKSpriteNode.size.width/2 * 0.35, center: CGPoint(x:-0.7, y: -1.5))
                    hormiguerosSKSpriteNode.physicsBody?.isDynamic = false
                    hormiguerosSKSpriteNode.name = "hormiguerosNode"
                    SkSpriteNodesArray.append(hormiguerosSKSpriteNode)
                    break
                           
                case arrayAddPropertiesToSKSpriteNodes[2]:
                    mayaguezSKSpriteNode = arrayAddPropertiesToSKSpriteNodes[i]
                    mayaguezSKSpriteNode.position = CGPoint(x:53.84, y:207.63)
                    mayaguezSKSpriteNode.zPosition = 1
                    mayaguezSKSpriteNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:mayaguezSKSpriteNode.size.width/5.7, height:mayaguezSKSpriteNode.size.height/6), center: CGPoint(x:-41.5, y: 18.0))
                    mayaguezSKSpriteNode.physicsBody?.isDynamic = false
                    mayaguezSKSpriteNode.name = "mayaguezNode"
                    SkSpriteNodesArray.append(mayaguezSKSpriteNode)
                    break
                
                case arrayAddPropertiesToSKSpriteNodes[3]:
                    mayaguezTwoSKSpriteNode = arrayAddPropertiesToSKSpriteNodes[i]
                    
                
                default: break
                
            }
         
        }

        
        
        for i in SkSpriteNodesArray.indices{
            containerNode.addChild(SkSpriteNodesArray[i])
        }
        

        self.addChild(backgroundSKSpriteNode)
        self.addChild(containerNode)

        

        }

       func nodesContainer() -> SKNode{
           let nodes_Container = SKNode()
           //nodes_Container.color = UIColor.white
           //nodes_Container.size = CGSize(width: self.size.width * 0.90, height:self.size.height * 0.90)
           //nodes_Container.anchorPoint = CGPoint.zero
           //nodes_Container.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
           return  nodes_Container
       }

        func prBackground() ->SKSpriteNode {
        let backgroundNode = SKSpriteNode()
        backgroundNode.color = UIColor.yellow
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
                 if(touchedNode?.node?.name == spriteNode.name){
                     spriteNode.color = .brown
                     spriteNode.colorBlendFactor = 0.5
                 }

               }

             }
         
       }
    

    }




