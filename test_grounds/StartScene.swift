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
    var mocabp:UIBezierPath! = TestClass().mocaDrawBezierPath()
    var sanSebastianbp:UIBezierPath! = TestClass().sanSebastianDrawBezierPath()
    var lasMariasbp:UIBezierPath! = TestClass().lasMariasDrawBezierPath()
    var maricaobp:UIBezierPath! = TestClass().maricaoDrawBezierPath()
    var sanGermanbp:UIBezierPath! = TestClass().sanGermanDrawBezierPath()
    var sabanaGrandebp:UIBezierPath! = TestClass().sabanaGrandeDrawBezierPath()
    var yaucobp:UIBezierPath! = TestClass().yaucoDrawBezierPath()
    var lajasbp:UIBezierPath! = TestClass().lajasDrawBezierPath()
    var guanicabp:UIBezierPath! = TestClass().guanicaDrawBezierPath()
    var guayanillabp:UIBezierPath! = TestClass().guayanillaDrawBezierPath()
    var adjuntasbp:UIBezierPath! = TestClass().adjuntasDrawBezierPath()
    var laresbp:UIBezierPath! = TestClass().laresDrawBezierPath()
    var penuelasbp:UIBezierPath! = TestClass().penuelasDrawBezierPath()
    var poncebp:UIBezierPath! = TestClass().ponceDrawBezierPath()
    var utuadobp:UIBezierPath! = TestClass().utuadoDrawBezierPath()
    var jayuyabp:UIBezierPath! = TestClass().jayuyaDrawBezierPath()
    var juanaDiazbp:UIBezierPath! = TestClass().juanaDiazDrawBezierPath()
//var SKSpriteNodesArray:
    
    var containerNode = SKNode()
    //var containerNodeTwo = SKNode()
    var isabelaSKSpriteNode = SKSpriteNode()
    var aguadillaSKSpriteNode = SKSpriteNode()
    var aguadaSKSpriteNode = SKSpriteNode()
    var rinconSKSpriteNode = SKSpriteNode()
    var anascoSKSpriteNode = SKSpriteNode()
    var mayaguezTwoSKSpriteNode = SKSpriteNode()
    var mayaguezSKSpriteNode = SKSpriteNode()
    var hormiguerosSKSpriteNode = SKSpriteNode()
    var caboRojoSKSpriteNode = SKSpriteNode()
    var mocaSKSpriteNode = SKSpriteNode()
    var sanSebastianSKSpriteNode = SKSpriteNode()
    var lasMariasSKSpriteNode = SKSpriteNode()
    var maricaoSKSpriteNode = SKSpriteNode()
    var sanGermanSKSpriteNode = SKSpriteNode()
    var sabanaGrandeSKSpriteNode = SKSpriteNode()
    var yaucoSKSpriteNode = SKSpriteNode()
    var lajasSKSpriteNode = SKSpriteNode()
    var guanicaSKSpriteNode = SKSpriteNode()
    var guayanillaSKSpriteNode = SKSpriteNode()
    var adjuntasSKSpriteNode = SKSpriteNode()
    var laresSKSpriteNode = SKSpriteNode()
    var penuelasSKSpriteNode = SKSpriteNode()
    var ponceSKSpriteNode = SKSpriteNode()
    var utuadoSKSpriteNode = SKSpriteNode()
    var jayuyaSKSpriteNode = SKSpriteNode()
    var juanaDiazSKSpriteNode = SKSpriteNode()



    
     override func didMove(to view: SKView){
        
        self.backgroundColor = SKColor.blue
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
        
        isabelaSKSpriteNode = TestClass().isabelaBezierPathToSKSpriteNode(bpIsabela: isabelabp)
        containerNode.addChild(isabelaSKSpriteNode)
        
        mocaSKSpriteNode = TestClass().mocaBezierPathToSKSpriteNode(bpMoca: mocabp)
        containerNode.addChild(mocaSKSpriteNode)
        
        sanSebastianSKSpriteNode = TestClass().sanSebastianBezierPathToSKSpriteNode(bpSanSebastian: sanSebastianbp)
        containerNode.addChild(sanSebastianSKSpriteNode)
        
        lasMariasSKSpriteNode = TestClass().lasMariasBezierPathToSKSpriteNode(bpLasMarias: lasMariasbp)
        containerNode.addChild(lasMariasSKSpriteNode)
        
        maricaoSKSpriteNode = TestClass().maricaoBezierPathToSKSpriteNode(bpMaricao:maricaobp)
        containerNode.addChild(maricaoSKSpriteNode)
        
        sanGermanSKSpriteNode = TestClass().sanGermanBezierPathToSKSpriteNode(bpSanGerman: sanGermanbp)
        containerNode.addChild(sanGermanSKSpriteNode)
        
        sabanaGrandeSKSpriteNode = TestClass().sabanaGrandeBezierPathToSKSpriteNode(bpSabanaGrande: sabanaGrandebp)
        containerNode.addChild(sabanaGrandeSKSpriteNode)
        
        yaucoSKSpriteNode = TestClass().yaucoBezierPathToSKSpriteNode(bpYauco:yaucobp)
        containerNode.addChild(yaucoSKSpriteNode)
        
        lajasSKSpriteNode = TestClass().lajasBezierPathToSKSpriteNode(bpLajas:lajasbp)
        containerNode.addChild(lajasSKSpriteNode)
        
        guanicaSKSpriteNode = TestClass().guanicaBezierPathToSKSpriteNode(bpGuanica:guanicabp)
        containerNode.addChild(guanicaSKSpriteNode)
        
        guayanillaSKSpriteNode = TestClass().guayanillaBezierPathToSKSpriteNode(bpGuayanilla:guayanillabp)
        containerNode.addChild(guayanillaSKSpriteNode)
        
        adjuntasSKSpriteNode = TestClass().adjuntasBezierPathToSKSpriteNode(bpAdjuntas: adjuntasbp)
        containerNode.addChild(adjuntasSKSpriteNode)
        
        laresSKSpriteNode = TestClass().laresBezierPathToSKSpriteNode(bpLares: laresbp)
        containerNode.addChild(laresSKSpriteNode)
    
        penuelasSKSpriteNode = TestClass().penuelasBezierPathToSKSpriteNode(bpPenuelas: penuelasbp)
        containerNode.addChild(penuelasSKSpriteNode)
        
        ponceSKSpriteNode =
            TestClass().ponceBezierPathToSKSpriteNode(bpPonce: poncebp)
        containerNode.addChild(ponceSKSpriteNode)
        
        utuadoSKSpriteNode =
            TestClass().utuadoBezierPathToSKSpriteNode(bpUtuado: utuadobp)
        containerNode.addChild(utuadoSKSpriteNode)
        
        jayuyaSKSpriteNode =
            TestClass().jayuyaBezierPathToSKSpriteNode(bpJayuya: jayuyabp)
        containerNode.addChild(jayuyaSKSpriteNode)
        
        juanaDiazSKSpriteNode =
            TestClass().juanaDiazBezierPathToSKSpriteNode(bpJuanaDiaz: juanaDiazbp)
        containerNode.addChild(juanaDiazSKSpriteNode)
        
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
        backgroundNode.color = UIColor.black
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

