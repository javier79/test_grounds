//
//  GamePlayRenderingObjects.swift
//  test_grounds
//
//  Created by javier pizarro on 2/14/23.
//  Copyright © 2023 javierpizarro. All rights reserved.
//

import Foundation
import SpriteKit

class GamePlayRenderingObjects{
    
    func containerSKSpriteNodeBezierPathToSKSpriteNode(bpRectangle: UIBezierPath)-> SKSpriteNode{
           
        let shapeNode = SKShapeNode(path:bpRectangle.cgPath)
        shapeNode.strokeColor = .blue//.init(red: 0.97, green: 0.56, blue: 0.12, alpha: 1.00)//(red: 0.97, green: 0.56, blue: 0.12, alpha: 1.00)//(red: 1.00, green: 0.40, blue: 0.00, alpha: 1.00)//c1d3c8
        shapeNode.lineWidth = 0.5
        let view = SKView(frame: UIScreen.main.bounds)
        let texture = view.texture(from: shapeNode)!
        let rectangleNode = SKSpriteNode(texture: texture)
        rectangleNode.position = CGPoint(x:280, y:190)
        return  rectangleNode
    }
    
    func goldenBackground() -> SKSpriteNode {
        let goldenBackground = SKSpriteNode(imageNamed: "old paper texture")
        //goldenBackground.size = CGSize(width: 680, height:50)
        //goldenBackground.position = CGPoint(x:335, y:25)
        //goldenBackground.zPosition = 1
        return goldenBackground
    }
    
    func skipBlueButton()-> SKSpriteNode {
         
        //Drawing to Shapenode
        let shapeNode = SKShapeNode(path:blueButtonRedButtonBp().cgPath)//En esta linea se invoca la funcion blueButtonRedButtonBp() que retorna un BezierPath y que convertimos en SKShapenode
        shapeNode.strokeColor = UIColor.init(red: 0.098, green: 0.4863, blue: 1, alpha: 1.0)
        shapeNode.lineWidth = 0.5
        shapeNode.fillColor = UIColor.init(red: 0.098, green: 0.4863, blue: 1, alpha: 1.0)
        //Shapenode To SKSpriteNode
        let view = SKView(frame: UIScreen.main.bounds)
        let texture = view.texture(from: shapeNode)!
        let skipBlueButton = SKSpriteNode(texture: texture)
        skipBlueButton.position = CGPoint(x:195, y:-0.5)
        skipBlueButton.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:skipBlueButton.size.width, height:skipBlueButton.size.height), center: CGPoint(x:0.5, y: 0.5))
        skipBlueButton.physicsBody?.isDynamic = false
        skipBlueButton.name = "skipButton"//Sets name property that will be used inside TouchesBegun() in the skipButton block there
        
        let labelSkipButtonOne = redButtonBlueButtonLabelOne()
        //labelSkipButtonOne.fontName = "ChalkboardSE-Regular"
        //labelSkipButtonOne.fontSize = 10
        labelSkipButtonOne.text = "Saltar"
        //labelSkipButtonOne.position = CGPoint(x:0.5, y:0.5)
        skipBlueButton.addChild(labelSkipButtonOne)
        
        let labelSkipButtonTwo = redButtonBlueButtonLabelTwo()
        //labelSkipButtonTwo.fontName = "ChalkboardSE-Light"
        //labelSkipButtonTwo.fontSize = 8
        labelSkipButtonTwo.text = "(Skip)"
        //labelSkipButtonTwo.position = CGPoint(x:0.5, y:-8.5)
        skipBlueButton.addChild(labelSkipButtonTwo)
        
        
        return skipBlueButton
    }
    
    func blueButtonRedButtonBp()->UIBezierPath{
        var path = UIBezierPath()
        // Specify the point that the path should start get drawn.
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        // Create a line between the starting point and the bottom-left side of the view.
        path.addLine(to: CGPoint(x: 0.0, y:25))
        // Create the bottom line (bottom-left to bottom-right).
        path.addLine(to: CGPoint(x:50 , y:25))
        //Create the vertical line from the bottom-right to the top-right side.
        path.addLine(to: CGPoint(x:50, y: 0.0))
        // Close the path. This will create the last line automatically.
        path.close()
          
        path = UIBezierPath(roundedRect:path.bounds,cornerRadius: 3.0)//Esta linea trabaja el curveado de las esquinas

        
        return path
        
    }
    
    //Label superior para los botones azul y rojo
    func redButtonBlueButtonLabelOne()->SKLabelNode{
        let labelSkipButtonOne = SKLabelNode()
        //labelSkipButtonOne.isUserInteractionEnabled = true
        labelSkipButtonOne.fontName = "ChalkboardSE-Regular"
        labelSkipButtonOne.fontSize = 10
        //labelSkipButtonOne.text = "Saltar"
        labelSkipButtonOne.position = CGPoint(x:0.5, y:0.5)
        //skipBlueButton.addChild(labelSkipButtonOne)
        return labelSkipButtonOne
    }
    
    //Label inferior para los botones azul y rojo
    func redButtonBlueButtonLabelTwo() ->SKLabelNode{
        let labelSkipButtonTwo = SKLabelNode()
        //labelSkipButtonTwo.isUserInteractionEnabled = true
        labelSkipButtonTwo.fontName = "ChalkboardSE-Light"
        labelSkipButtonTwo.fontSize = 8
        //labelSkipButtonTwo.text = "(Skip)"
        labelSkipButtonTwo.position = CGPoint(x:0.5, y:-8.5)
        //skipBlueButton.addChild(labelSkipButtonTwo)
        return labelSkipButtonTwo
    }
    
    //Funcion crea boton rojo con sus respectivos labels
    func redButton()-> SKSpriteNode {
         
        //Drawing to Shapenode
        let shapeNode = SKShapeNode(path:blueButtonRedButtonBp().cgPath)
        shapeNode.strokeColor = UIColor.init(red: 0.9176, green: 0.2157, blue: 0.0902, alpha: 1.0)
        shapeNode.lineWidth = 0.5
        shapeNode.fillColor = UIColor.init(red: 0.9176, green: 0.2157, blue: 0.0902, alpha: 1.0)
        //Shapenode To SKSpriteNode
        let view = SKView(frame: UIScreen.main.bounds)
        let texture = view.texture(from: shapeNode)!
        let redButton = SKSpriteNode(texture: texture)
        redButton.position = CGPoint(x:-280, y:-0.5)
        redButton.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:redButton.size.width, height:redButton.size.height), center: CGPoint(x:0.5, y: 0.5))
        redButton.physicsBody?.isDynamic = false
        redButton.name = "redButton"
        
        let labelRedButtonOne = redButtonBlueButtonLabelOne()
        //labelSkipButtonOne.fontName = "ChalkboardSE-Regular"
        //labelSkipButtonOne.fontSize = 10
        labelRedButtonOne.text = "Salir"
        //labelSkipButtonOne.position = CGPoint(x:0.5, y:0.5)
        redButton.addChild(labelRedButtonOne)
        
        let labelRedButtonTwo = redButtonBlueButtonLabelTwo()
        //labelSkipButtonTwo.fontName = "ChalkboardSE-Light"
        //labelSkipButtonTwo.fontSize = 8
        labelRedButtonTwo.text = "(Exit)"
        //labelSkipButtonTwo.position = CGPoint(x:0.5, y:-8.5)
        redButton.addChild(labelRedButtonTwo)
        
        
        return redButton
    }
    
    func labelForTimer() -> SKLabelNode {
        let label:SKLabelNode = SKLabelNode()
        label.position = CGPoint(x:0.5 /*333.5*/, y:-7/*82.5*/)
        //label.zPosition = 2
        label.fontName = "Arial"
        label.fontSize = 16
        label.fontColor = SKColor.red
        return label
    }
    
    func labelForScores() -> SKLabelNode {
        let label:SKLabelNode = SKLabelNode()
        label.position = CGPoint(x:300, y:-0.5)
        label.fontName = "Arial"
        label.fontSize = 11
        label.text = "0/78"
        label.fontColor = UIColor.init(red: 0.1333, green: 0.8392, blue: 0.1333, alpha: 1.0)
        return label
    }
    
    func timerBackGroundTwo() -> SKSpriteNode{
        //Drawing to Shapenode
        let shapeNode = SKShapeNode(path:timerBackGroundBorderTwoBp().cgPath)//En esta linea se invoca la funcion blueButtonRedButtonBp() que retorna un BezierPath y que convertimos en SKShapenode
        shapeNode.lineWidth = 0.5
        shapeNode.strokeColor = UIColor.init(red: 0.97, green: 0.56, blue: 0.12, alpha: 1.00)/*UIColor.lightGray*///c1d3c8
        shapeNode.fillColor = UIColor.lightGray
        //Shapenode To SKSpriteNode
        let view = SKView(frame: UIScreen.main.bounds)
        let texture = view.texture(from: shapeNode)!
        let timerBackground = SKSpriteNode(texture: texture)
        //backgroundForMunicipiosNameLabel.color = UIColor.init(red: 0.8078, green: 0.6039, blue: 0, alpha: 1.0)//#ce9a00
        //timerBackground.position = CGPoint(x:333.5, y:89.5)
        
        return timerBackground
    }
    
    func timerBackGroundBorderTwoBp()->UIBezierPath{
        var path = UIBezierPath()
        // Specify the point that the path should start get drawn.
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        // Create a line between the starting point and the bottom-left side of the view.
        path.addLine(to: CGPoint(x: 0.0, y:17))
        // Create the bottom line (bottom-left to bottom-right).
        path.addLine(to: CGPoint(x:45, y:17))
        //Create the vertical line from the bottom-right to the top-right side.
        path.addLine(to: CGPoint(x:45, y: 0.0))
        // Close the path. This will create the last line automatically.
        path.close()
          
        path = UIBezierPath(roundedRect:path.bounds,cornerRadius: 4.0)//Esta linea trabaja el curveado de las esquinas

        
        return path
        
    }
    
    func labelForMunicipioNames() -> SKLabelNode {//child of labelMunicipiosNameBackground()
        let NameMunicipioLabel = SKLabelNode()
        NameMunicipioLabel.position = CGPoint(x:0.5 /*self.size.width/2*/, y:-6.5 /*self.size.height/2 * 0.14*/)
        NameMunicipioLabel.fontName = "Helvetica"
        NameMunicipioLabel.fontSize = 17
        NameMunicipioLabel.fontColor = UIColor.init(red: 0.898, green: 0.9765, blue: 0, alpha: 1.0)
        NameMunicipioLabel.text = "Adjuntas"
        //municipiosNameBackground.size = NameMunicipioLabel.frame.size
        //NameMunicipioLabel.zPosition = 1
        return NameMunicipioLabel
    }
    
    func labelMunicipiosNameBackground() -> SKSpriteNode{
        //Drawing to Shapenode
        let shapeNode = SKShapeNode(path:labelMunicipiosNameBackgroundBp().cgPath)//En esta linea se invoca la funcion blueButtonRedButtonBp() que retorna un BezierPath y que convertimos en SKShapenode
        shapeNode.strokeColor = UIColor.init(red: 0.898, green: 0.9765, blue: 0, alpha: 1.0) /*UIColor.init(red: 0.8078, green: 0.6039, blue: 0, alpha: 1.0)*/
        shapeNode.lineWidth = 2.5
        shapeNode.fillColor = UIColor.init(red: 0.8078, green: 0.6039, blue: 0, alpha: 1.0)
        //Shapenode To SKSpriteNode
        let view = SKView(frame: UIScreen.main.bounds)
        let texture = view.texture(from: shapeNode)!
        let backgroundForMunicipiosNameLabel = SKSpriteNode(texture: texture)
        //backgroundForMunicipiosNameLabel.color = UIColor.init(red: 0.8078, green: 0.6039, blue: 0, alpha: 1.0)//#ce9a00
        backgroundForMunicipiosNameLabel.position = CGPoint(x:0.5/*goldenBackground().size.width/200*/, y:-0.5/*goldenBackground().size.height/2 * 0.18*/)
        
        return backgroundForMunicipiosNameLabel
    }
    
    func labelMunicipiosNameBackgroundBp()->UIBezierPath{
        var path = UIBezierPath()
        // Specify the point that the path should start get drawn.
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        // Create a line between the starting point and the bottom-left side of the view.
        path.addLine(to: CGPoint(x: 0.0, y:20))
        // Create the bottom line (bottom-left to bottom-right).
        path.addLine(to: CGPoint(x:90 , y:20))
        //Create the vertical line from the bottom-right to the top-right side.
        path.addLine(to: CGPoint(x:90, y: 0.0))
        // Close the path. This will create the last line automatically.
        path.close()
          
        path = UIBezierPath(roundedRect:path.bounds,cornerRadius: 7.0)//Esta linea trabaja el curveado de las esquinas

        
        return path
        
    }
    
    func labelMunicipiosNameBackgroundTwo() -> SKSpriteNode{
        //Drawing to Shapenode
        let shapeNode = SKShapeNode(path:labelMunicipiosNameBackgroundTwoBp().cgPath)//En esta linea se invoca la funcion blueButtonRedButtonBp() que retorna un BezierPath y que convertimos en SKShapenode
        shapeNode.strokeColor = UIColor.init(red: 0.898, green: 0.9765, blue: 0, alpha: 1.0) /*UIColor.init(red: 0.8078, green: 0.6039, blue: 0, alpha: 1.0)*/
        shapeNode.lineWidth = 2.5
        shapeNode.fillColor = UIColor.init(red: 0.8078, green: 0.6039, blue: 0, alpha: 1.0)
        //Shapenode To SKSpriteNode
        let view = SKView(frame: UIScreen.main.bounds)
        let texture = view.texture(from: shapeNode)!
        let backgroundForMunicipiosNameLabel = SKSpriteNode(texture: texture)
        //backgroundForMunicipiosNameLabel.color = UIColor.init(red: 0.8078, green: 0.6039, blue: 0, alpha: 1.0)//#ce9a00
        backgroundForMunicipiosNameLabel.position = CGPoint(x:0.5/*goldenBackground().size.width/200*/, y:-0.5/*goldenBackground().size.height/2 * 0.18*/)
        
        return backgroundForMunicipiosNameLabel
    }
    
    func labelMunicipiosNameBackgroundTwoBp()->UIBezierPath{
        var path = UIBezierPath()
        // Specify the point that the path should start get drawn.
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        // Create a line between the starting point and the bottom-left side of the view.
        path.addLine(to: CGPoint(x: 0.0, y:20))
        // Create the bottom line (bottom-left to bottom-right).
        path.addLine(to: CGPoint(x:130 , y:20))
        //Create the vertical line from the bottom-right to the top-right side.
        path.addLine(to: CGPoint(x:130, y: 0.0))
        // Close the path. This will create the last line automatically.
        path.close()
          
        path = UIBezierPath(roundedRect:path.bounds,cornerRadius: 7.0)//Esta linea trabaja el curveado de las esquinas

        
        return path
        
    }
    
}
