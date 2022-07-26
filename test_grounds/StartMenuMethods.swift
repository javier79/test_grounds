//
//  StartMenuMethods.swift
//  test_grounds
//
//  Created by javier pizarro on 7/25/22.
//  Copyright © 2022 javierpizarro. All rights reserved.
//

import Foundation
import SpriteKit


class StartMenuMethods{
    
    func mainMenuRedButtonsLabelsDefaults()-> SKLabelNode{
        let label = SKLabelNode()
        label.fontName = "AvenirNext-Bold"
        label.fontSize = 14
        label.position = CGPoint(x:0.5,y:-5.5)
        //.zPosition = 1
        return label
    }
    
    func setinstructionsLabelDefaults()->SKLabelNode{
      let label = SKLabelNode()
      label.fontName = "GillSans-SemiBold"
      label.fontSize = 14
      label.fontColor = UIColor.init(red: 0.5686, green: 1, blue: 0.8745, alpha: 1.0)//(red: 0, green: 0.4078, blue: 0.2431, alpha: 1.0)
      label.numberOfLines = 12//12
      label.preferredMaxLayoutWidth = 580//650
      //label.position = CGPoint(x: StartMenu().self.size.width/2 /* 135*/, y:StartMenu().self.size.height/2 * 0.6)
      return label
    }
    
    func shapeNodeToSpriteNodeTexture(nodeShape:SKShapeNode)->SKSpriteNode{
        let view = SKView(frame: UIScreen.main.bounds)
        let texture = view.texture(from: nodeShape)!
        let textureAsSKSpriteNode = SKSpriteNode(texture: texture)
        return textureAsSKSpriteNode
    }
    
    func setGreenButton()->SKSpriteNode{
        //Drawing
        var path = UIBezierPath()
        // Specify the point that the path should start get drawn.
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        // Create a line between the starting point and the bottom-left side of the view.
        path.addLine(to: CGPoint(x: 0.0, y:40))
        // Create the bottom line (bottom-left to bottom-right).
        path.addLine(to: CGPoint(x:94 , y:40))
        //Create the vertical line from the bottom-right to the top-right side.
        path.addLine(to: CGPoint(x:94, y: 0.0))
        // Close the path. This will create the last line automatically.
        path.close()
          
        path = UIBezierPath(roundedRect:path.bounds,cornerRadius: 6.0)//Esta linea trabaja el curveado de las esquinas
        //path = UIBezierPath(roundedRect: path.bounds, cornerRadius: CGFloat(4.0))
        //Drawing to Shapenode
        let shapeNode = SKShapeNode(path:path.cgPath)
        shapeNode.strokeColor = UIColor.green//c1d3c8
        shapeNode.lineWidth = 0.5
        shapeNode.fillColor = UIColor.green
        
        //Shapenode To SKSpriteNode
        /*let view = SKView(frame: UIScreen.main.bounds)
        let texture = view.texture(from: shapeNode)!
        var greenbutton = SKSpriteNode(texture: texture)*/
        var greenbutton:SKSpriteNode = shapeNodeToSpriteNodeTexture(nodeShape:shapeNode)
        greenbutton = initSetButtonPhysicsBody(objectButton: greenbutton)
        //greenbutton.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        //greenbutton.position = CGPoint(x:self.size.width/2, y:self.size.height/2)//(x:self.size.width/2, y:self.size.height/2)//(x:350, y:225)
        //greenbutton.zPosition = 2
        let labelOne = SKLabelNode()
        labelOne.fontName = "AvenirNext-Bold"
        labelOne.fontSize = 16
        labelOne.text = "JUGAR"
        //labelOne.position = CGPoint(x:0, y:-13)
        //buttonOneLabelTwo.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
        greenbutton.addChild(labelOne)
        
        let labelTwo = SKLabelNode()
        labelTwo.fontName = "AvenirNext-Bold"
        labelTwo.fontSize = 13
        labelTwo.text = "(PLAY)"
        labelTwo.position = CGPoint(x:0.5, y:-13)
        //buttonOneLabelTwo.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
        greenbutton.addChild(labelTwo)
        
        return greenbutton
        
                
    }
    
    func initMainMenuRedButtons()->SKSpriteNode{
        //Drawing
       var path = UIBezierPath()
       // Specify the point that the path should start get drawn.
       path.move(to: CGPoint(x: 0.0, y: 0.0))
       // Create a line between the starting point and the bottom-left side of the view.
       path.addLine(to: CGPoint(x: 0.0, y:25))
       // Create the bottom line (bottom-left to bottom-right).
       path.addLine(to: CGPoint(x:210 , y:25))
       //Create the vertical line from the bottom-right to the top-right side.
       path.addLine(to: CGPoint(x:210, y: 0.0))
       // Close the path. This will create the last line automatically.
       path.close()
         
        path = UIBezierPath(roundedRect:path.bounds,cornerRadius: 1.5)//Esta linea trabaja el curveado de las esquinas
       //path = UIBezierPath(roundedRect: path.bounds, cornerRadius: CGFloat(4.0))//otra version de la linea de arriba con el mismo resultado
       //Drawing to Shapenode
       let shapeNode = SKShapeNode(path:path.cgPath)
       shapeNode.strokeColor = UIColor.init(red: 0.8, green: 0.2784, blue: 0, alpha: 1.0)
       shapeNode.lineWidth = 0.5
       shapeNode.fillColor = UIColor.init(red: 0.8, green: 0.2784, blue: 0, alpha: 1.0)
       //Shapenode To SKSpriteNode
       //let view = SKView(frame: UIScreen.main.bounds)
       //let texture = view.texture(from: shapeNode)!
       //let redButton = SKSpriteNode(texture: texture)
       var redButton = shapeNodeToSpriteNodeTexture(nodeShape:shapeNode)
       redButton = initSetButtonPhysicsBody(objectButton: redButton)
       
       return redButton
            
    }
    
    func initSetButtonPhysicsBody(objectButton:SKSpriteNode)->SKSpriteNode {
        objectButton.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:objectButton.size.width, height:objectButton.size.height), center: CGPoint(x:0.5, y: 0.5))
        objectButton.physicsBody?.isDynamic = false
        
        return objectButton
    }
}
