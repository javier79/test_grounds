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
    

    

    

    
    
    
    
    
     override func didMove(to view: SKView){
        
        TestClass().createCaboRojoBezierPath()
        TestClass().caboRojoBPToSKSpriteNode(bpCaboRojo: TestClass().caboRojoBP)
        self.addChild(TestClass().caboRojoSKSpriteNode)
        

    }

}

    //var puertoRicobp: UIBezierPath! = TestClass().createMunicipiosBezierPath()//TestClass().createYauco()    var municipiobp
  /*self.backgroundColor = SKColor.blue
  let puertoRicoSKSpriteNode: SKSpriteNode = TestClass().drawMunicipiosBezierPath(bpPuertoRico: puertoRicobp)
  puertoRicoSKSpriteNode.xScale = -1.0
 puertoRicoSKSpriteNode.zRotation = 9.5
puertoRicoSKSpriteNode.position = CGPoint(x:100, y: 100)
  self.addChild( puertoRicoSKSpriteNode)*/

