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
    
    //var municipiobp: UIBezierPath! = TestClass().createMunicipiosBezierPath()//TestClass().createYauco()    var municipiobp
    
    //TestClass().createPRMap()
    /*var municipioCR: UIBezierPath = TestClass().createCaboRojo()
    var municipioAGU: UIBezierPath! = TestClass().createAguadilla()
    var municipioYAU: UIBezierPath! = TestClass().createYauco()
    var municipioISA: UIBezierPath! = TestClass().createIsabela()*/
    var puertoRico: UIBezierPath! = TestClass().createPR()
    

    
    /*let view = SKView(frame: UIScreen.main.bounds)
    let texture = view.texture(from: shapeNode)!
    let municipioNode = SKSpriteNode(texture: texture)
    */
    
    
     override func didMove(to view: SKView){
        
        let puertoRicoNode = SKShapeNode(path: puertoRico.cgPath)
        
        //let viewPR = SKView(frame: UIScreen.main.bounds)
        //let texturePR = viewPR.texture(from:puertoRicoNode)!
        //let PuertoRicoSKNode = SKSpriteNode(texture: texturePR)
        //PuertoRicoSKNode.xScale = -1.0
        //PuertoRicoSKNode.zRotation = .pi / 20
        //PuertoRicoSKNode.position = CGPoint(x: 50, y: 20)
        self.addChild(puertoRicoNode)
        
       // let shapeNodeISA = SKShapeNode(path: municipioISA.cgPath)

        
        /*let shapeNodeCR = SKShapeNode(path: municipioCR.cgPath)
        let viewCR = SKView(frame: UIScreen.main.bounds)
        let textureCR = viewCR.texture(from:shapeNodeCR)!
        let municipioNodeCR = SKSpriteNode(texture: textureCR)
        
        let shapeNodeAGU = SKShapeNode(path: municipioAGU.cgPath)
        let view = SKView(frame: UIScreen.main.bounds)
        let texture = view.texture(from:shapeNodeAGU)!
        let municipioNodeAGU = SKSpriteNode(texture: texture)*/
        
        
        //let shapeNodeYAU = SKShapeNode(path: municipioYAU.cgPath)
        //let shapeNodeYAU = SKShapeNode(path: municipioYAU.cgPath)
        //self.backgroundColor = SKColor.blue
        //self.addChild(municipioNodeCR)
        //self.addChild(municipioNodeAGU)
        //self.addChild(shapeNodeYAU)
        //self.addChild(shapeNodeISA)
        //let municipioSKSpriteNode: SKSpriteNode = TestClass().drawMunicipiosBezierPath(bpmunicipio: municipiobp)
        //self.addChild(municipioSKSpriteNode)
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
