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
    
    func redButtonBpDrawToSKSpriteNode()->SKSpriteNode{
        
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
       let view = SKView(frame: UIScreen.main.bounds)
       let texture = view.texture(from: shapeNode)!
       let redButton = SKSpriteNode(texture: texture)

       return redButton
            
    }
    
    
    func mainMenuSetLabelDefaults()-> SKLabelNode{
        let label = SKLabelNode()
        label.fontName = "AvenirNext-Bold"
        label.fontSize = 14
        label.position = CGPoint(x:0.5,y:-5.5)
        //.zPosition = 1
        return label
    }
    
    func creditosButtonBpDrawToSKSpriteNode()->SKSpriteNode{
        //Drawing
       var path = UIBezierPath()
       // Specify the point that the path should start get drawn.
       path.move(to: CGPoint(x: 0.0, y: 0.0))
       // Create a line between the starting point and the bottom-left side of the view.
       path.addLine(to: CGPoint(x: 0.0, y:18))
       // Create the bottom line (bottom-left to bottom-right).
       path.addLine(to: CGPoint(x:125 , y:18))
       //Create the vertical line from the bottom-right to the top-right side.
       path.addLine(to: CGPoint(x:125, y: 0.0))
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
       //let creditosRedButton = SKSpriteNode(texture: texture)
       var creditosRedButton:SKSpriteNode = shapeNodeToSpriteNodeTexture(nodeShape:shapeNode)
       creditosRedButton = initSetButtonPhysicsBody(objectButton: creditosRedButton)
        
       return creditosRedButton
            
    }
    
    func opcionesCheckmarkBpToSpritenode()->SKSpriteNode{
        
        let path = UIBezierPath()
        // Specify the point that the path should start get drawn.
        path.move(to: CGPoint(x: 0.0, y: 4))
        // Create a line between the starting point and the bottom-left side of the view.
        path.addLine(to: CGPoint(x: 0.0, y:0.0))
        // Create the bottom line (bottom-left to bottom-right).
        path.addLine(to: CGPoint(x:9, y:0))
        //Create the vertical line from the bottom-right to the top-right side.
        //path.addLine(to: CGPoint(x:10, y: 0.0))
        // Close the path. This will create the last line automatically.
        //path.close()
        
        let shapeNode = SKShapeNode(path:path.cgPath)
        shapeNode.strokeColor = .black//c1d3c8
        shapeNode.lineWidth = 2.0
        //shapeNode.fillColor = .white
        //Shapenode To SKSpriteNode
        //let view = SKView(frame: UIScreen.main.bounds)
        //let texture = view.texture(from: shapeNode)!
        //let checkmark = SKSpriteNode(texture: texture)
        let checkmark:SKSpriteNode = shapeNodeToSpriteNodeTexture(nodeShape:shapeNode)
        checkmark.zRotation = 1

        
        return checkmark
        
    }
    
    func opcionesCheckBoxesBpToSpritenode()->SKSpriteNode{
        let path = UIBezierPath()
        // Specify the point that the path should start get drawn.
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        // Create a line between the starting point and the bottom-left side of the view.
        path.addLine(to: CGPoint(x: 0.0, y:10))
        // Create the bottom line (bottom-left to bottom-right).
        path.addLine(to: CGPoint(x:10 , y:10))
        //Create the vertical line from the bottom-right to the top-right side.
        path.addLine(to: CGPoint(x:10, y: 0.0))
        // Close the path. This will create the last line automatically.
        path.close()
          
        //path = UIBezierPath(roundedRect:path.bounds,cornerRadius: 3.0)//Esta linea trabaja el curveado de las esquinas
        
        let shapeNode = SKShapeNode(path:path.cgPath)
        shapeNode.strokeColor = .white//c1d3c8
        shapeNode.lineWidth = 0.5
        shapeNode.fillColor = .white
        //Shapenode To SKSpriteNode
        //let view = SKView(frame: UIScreen.main.bounds)
        //let texture = view.texture(from: shapeNode)!
        //let checkbox = SKSpriteNode(texture: texture)
        var checkbox:SKSpriteNode = shapeNodeToSpriteNodeTexture(nodeShape:shapeNode)
        checkbox = initSetButtonPhysicsBody(objectButton: checkbox)
        return checkbox
        
    }
    
    func opcionesLabelDefaults()->SKLabelNode{
        let label = SKLabelNode()
        label.fontSize = 14
        label.fontName = "GillSans-SemiBold"
        label.fontColor = .black
        return label
    }
    
    func bestTimesPrRandomScore()->SKLabelNode{
        
        let label = SKLabelNode()
        label.fontSize = 12
        label.fontName = "GillSans-SemiBold"
        label.fontColor = .black
        
        if UserDefaults.standard.integer(forKey: "minutesRandom") != 0 && UserDefaults.standard.integer(forKey: "secondsRandom") != 0 {
            let secondsText = (UserDefaults.standard.integer(forKey: "secondsRandom") < 10) ?
            "0\(UserDefaults.standard.integer(forKey: "secondsRandom"))" : "\(UserDefaults.standard.integer(forKey: "secondsRandom"))"
            let minutesText = "\(UserDefaults.standard.integer(forKey: "minutesRandom"))"

            
            
            if UserDefaults.standard.integer(forKey: "minutesRandom") >= 1 {
            label.text = "\(minutesText):\(secondsText)"
            }
            else{
            label.text = ":\(secondsText)"
            //timerBackground.size = labelTimer.frame.size
            }
        }
        
        else{
            label.text = "________"
        }
        
         return label
    }
    
    func bestTimesPrAlphabeticScore()->SKLabelNode {
        
        let label = SKLabelNode()
        label.fontSize = 12
        label.fontName = "GillSans-SemiBold"
        label.fontColor = .black
        
        if UserDefaults.standard.integer(forKey: "minutesAlphabetic") != 0 && UserDefaults.standard.integer(forKey: "secondsAlphabetic") != 0 {
            
            let secondsText = (UserDefaults.standard.integer(forKey: "secondsAlphabetic") < 10) ?
            "0\(UserDefaults.standard.integer(forKey: "secondsAlphabetic"))" : "\(UserDefaults.standard.integer(forKey: "secondsAlphabetic"))"
            let minutesText = "\(UserDefaults.standard.integer(forKey: "minutesAlphabetic"))"
            
            
            
            if UserDefaults.standard.integer(forKey: "minutesAlphabetic") >= 1 {
                label.text = "\(minutesText):\(secondsText)"
            }
            else{
                label.text = ":\(secondsText)"
            }
        }
    
        else{
            label.text = "________"
        }
        return label
    }
    
    func bestTimeslabel()->SKLabelNode{
        let label = SKLabelNode()
        label.fontSize = 12
        label.fontName = "GillSans-SemiBold"
        label.fontColor = .black
        return label
    }
    
    func bestTimesRectangleBezierPathToSKSpriteNode()-> SKSpriteNode{//Big island frame properties
           
        let shapeNode = SKShapeNode(path:TestClass().createRectangle().cgPath)
        shapeNode.strokeColor = .black
        shapeNode.lineWidth = 2.0
        let view = SKView(frame: UIScreen.main.bounds)
        let texture = view.texture(from: shapeNode)!
        let rectangleNode = SKSpriteNode(texture: texture)
        rectangleNode.position = CGPoint(x:325, y:190)
        rectangleNode.name = "bestTimesRectangleBpToSKSpritenode"
        return  rectangleNode
    }
    
    func modeSelectionRedButton()->SKSpriteNode{
        //Drawing
        var path = UIBezierPath()
        // Specify the point that the path should start get drawn.
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        // Create a line between the starting point and the bottom-left side of the view.
        path.addLine(to: CGPoint(x: 0.0, y:30))
        // Create the bottom line (bottom-left to bottom-right).
        path.addLine(to: CGPoint(x:50 , y:30))
        //Create the vertical line from the bottom-right to the top-right side.
        path.addLine(to: CGPoint(x:50, y: 0.0))
        // Close the path. This will create the last line automatically.
        path.close()
          
        path = UIBezierPath(roundedRect:path.bounds,cornerRadius: 6.0)//Esta linea trabaja el curveado de las esquinas
        //path = UIBezierPath(roundedRect: path.bounds, cornerRadius: CGFloat(4.0))
        //Drawing to Shapenode
        let shapeNode = SKShapeNode(path:path.cgPath)
        shapeNode.strokeColor = UIColor.init(red: 0.949, green: 0.2824, blue: 0.2941, alpha: 1.0)//c1d3c8
        shapeNode.lineWidth = 0.5
        shapeNode.fillColor = UIColor.init(red: 0.949, green: 0.2824, blue: 0.2941, alpha: 1.0)
        //Shapenode To SKSpriteNode
        //let view = SKView(frame: UIScreen.main.bounds)
       // let texture = view.texture(from: shapeNode)!
        //let redbutton = SKSpriteNode(texture: texture)
        var redbutton:SKSpriteNode = shapeNodeToSpriteNodeTexture(nodeShape:shapeNode)
        redbutton = initSetButtonPhysicsBody(objectButton: redbutton)
        
        let labelOne = SKLabelNode()
        labelOne.fontName = "AvenirNext-Bold"
        labelOne.fontSize = 11
        labelOne.text = " Volver\n(Return)"
        labelOne.numberOfLines = 2
        labelOne.position = CGPoint(x:0, y:-17)
        //buttonOneLabelTwo.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
        redbutton.addChild(labelOne)

        
        return redbutton
        
                
    }
    
    func modeSelectionLabelDefaults()->SKLabelNode{
        let label = SKLabelNode()
        label.fontName = "Avenir-Heavy"
        label.fontSize = 9
        label.fontColor = .black
        //label.text = "Juega con un mapa en blanco.\nTiempo más rápido se guardará.\n  (Play with a blank map.\n  Fastest time will be saved)"
        label.numberOfLines = 3
        label.preferredMaxLayoutWidth = 140
        return label
    }
    
    func initModeSelectionBlueAndGreenButtons()->UIBezierPath{
        var path = UIBezierPath()
        // Specify the point that the path should start get drawn.
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        // Create a line between the starting point and the bottom-left side of the view.
        path.addLine(to: CGPoint(x: 0.0, y:40))
        // Create the bottom line (bottom-left to bottom-right).
        path.addLine(to: CGPoint(x:130 , y:40))
        //Create the vertical line from the bottom-right to the top-right side.
        path.addLine(to: CGPoint(x:130, y: 0.0))
        // Close the path. This will create the last line automatically.
        path.close()
          
        path = UIBezierPath(roundedRect:path.bounds,cornerRadius: 6.0)//Esta linea trabaja el curveado de las esquinas
        //path = UIBezierPath(roundedRect: path.bounds, cornerRadius: CGFloat(4.0))
        return path
    }
    
    func modeSelectionBlueRedButtonsLabelsDefaults()->SKLabelNode{
        let label = SKLabelNode()
        label.fontName = "AvenirNext-Bold"
        label.fontSize = 13
        label.text = "  Modo de Práctica \n   (Practice Mode)"
        label.numberOfLines = 2
        label.position = CGPoint(x:0.5, y:-19.5)
        return label
    }
    
    func modeSelectionBlueButton()->SKSpriteNode{
        
        /*var path = UIBezierPath()
        // Specify the point that the path should start get drawn.
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        // Create a line between the starting point and the bottom-left side of the view.
        path.addLine(to: CGPoint(x: 0.0, y:40))
        // Create the bottom line (bottom-left to bottom-right).
        path.addLine(to: CGPoint(x:130 , y:40))
        //Create the vertical line from the bottom-right to the top-right side.
        path.addLine(to: CGPoint(x:130, y: 0.0))
        // Close the path. This will create the last line automatically.
        path.close()
          
        path = UIBezierPath(roundedRect:path.bounds,cornerRadius: 6.0)//Esta linea trabaja el curveado de las esquinas
        //path = UIBezierPath(roundedRect: path.bounds, cornerRadius: CGFloat(4.0))*/
        //Drawing to Shapenode
        let shapeNode = SKShapeNode(path:initModeSelectionBlueAndGreenButtons().cgPath)
        shapeNode.lineWidth = 0.5
        shapeNode.strokeColor = UIColor.init(red: 0, green: 0.6588, blue: 0.9882, alpha: 1.0)//c1d3c8
        shapeNode.fillColor = UIColor.init(red: 0, green: 0.6588, blue: 0.9882, alpha: 1.0)
        //Shapenode To SKSpriteNode
        //let view = SKView(frame: UIScreen.main.bounds)
        //let texture = view.texture(from: shapeNode)!
        //let button = SKSpriteNode(texture: texture)
        var button:SKSpriteNode = shapeNodeToSpriteNodeTexture(nodeShape:shapeNode)
        button = initSetButtonPhysicsBody(objectButton: button)
        //greenbutton.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        //redButton.position = CGPoint(x:350, y:200)
        //greenbutton.zPosition = 2
        /*let labelOne = SKLabelNode()
        labelOne.fontName = "AvenirNext-Bold"
        labelOne.fontSize = 13
        labelOne.text = "  Modo de Práctica \n   (Practice Mode)"
        labelOne.numberOfLines = 2
        labelOne.position = CGPoint(x:0.5, y:-19.5)
        //labelOne.position = CGPoint(x:0, y:-13)
        //buttonOneLabelTwo.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
        button.addChild(labelOne)*/
        
        /*let labelTwo = SKLabelNode()
        labelTwo.fontName = "AvenirNext-Bold"
        labelTwo.fontSize = 10
        labelTwo.text = "(Return)"
        labelTwo.position = CGPoint(x:0.5, y:-10)
        //buttonOneLabelTwo.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
        redButton.addChild(labelTwo)*/
        
        return button
    }
    
    
    func modeSelectionGreenButton()->SKSpriteNode{
        /*var path = UIBezierPath()
        // Specify the point that the path should start get drawn.
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        // Create a line between the starting point and the bottom-left side of the view.
        path.addLine(to: CGPoint(x: 0.0, y:40))
        // Create the bottom line (bottom-left to bottom-right).
        path.addLine(to: CGPoint(x:130 , y:40))
        //Create the vertical line from the bottom-right to the top-right side.
        path.addLine(to: CGPoint(x:130, y: 0.0))
        // Close the path. This will create the last line automatically.
        path.close()
          
        path = UIBezierPath(roundedRect:path.bounds,cornerRadius: 6.0)//Esta linea trabaja el curveado de las esquinas
        //path = UIBezierPath(roundedRect: path.bounds, cornerRadius: CGFloat(4.0))*/
        //Drawing to Shapenode
        let shapeNode = SKShapeNode(path:initModeSelectionBlueAndGreenButtons().cgPath)
        shapeNode.lineWidth = 0.5
        shapeNode.strokeColor = UIColor.init(red: 0.2706, green: 0.9098, blue: 0.5882, alpha: 1.0)//c1d3c8
        shapeNode.fillColor = UIColor.init(red: 0.2706, green: 0.9098, blue: 0.5882, alpha: 1.0)
        //Shapenode To SKSpriteNode
        //let view = SKView(frame: UIScreen.main.bounds)
        //let texture = view.texture(from: shapeNode)!
        //let button = SKSpriteNode(texture: texture)
        var button:SKSpriteNode = shapeNodeToSpriteNodeTexture(nodeShape:shapeNode)
        button = initSetButtonPhysicsBody(objectButton: button)
        //greenbutton.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        //redButton.position = CGPoint(x:350, y:200)
        //greenbutton.zPosition = 2
        /*let labelOne = SKLabelNode()
        labelOne.fontName = "AvenirNext-Bold"
        labelOne.fontSize = 13
        labelOne.text = "  Modo de Reto \n(Challenge Mode)"
        labelOne.numberOfLines = 2
        labelOne.position = CGPoint(x:0.5, y:-19.5)
        //labelOne.position = CGPoint(x:0, y:-13)
        //buttonOneLabelTwo.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
        button.addChild(labelOne)*/
        
        /*let labelTwo = SKLabelNode()
        labelTwo.fontName = "AvenirNext-Bold"
        labelTwo.fontSize = 10
        labelTwo.text = "(Return)"
        labelTwo.position = CGPoint(x:0.5, y:-10)
        //buttonOneLabelTwo.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
        redButton.addChild(labelTwo)*/
        
        return button
    }
    
    func initMapOrderButtons()->UIBezierPath{
        var path = UIBezierPath()
        // Specify the point that the path should start get drawn.
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        // Create a line between the starting point and the bottom-left side of the view.
        path.addLine(to: CGPoint(x: 0.0, y:30))
        // Create the bottom line (bottom-left to bottom-right).
        path.addLine(to: CGPoint(x:60 , y:30))
        //Create the vertical line from the bottom-right to the top-right side.
        path.addLine(to: CGPoint(x:60, y: 0.0))
        // Close the path. This will create the last line automatically.
        path.close()
          
        path = UIBezierPath(roundedRect:path.bounds,cornerRadius: 6.0)//Esta linea trabaja el curveado de las esquinas
        //path = UIBezierPath(roundedRect: path.bounds, cornerRadius: CGFloat(4.0))
        return path
    }
    func mapOrderButtonsTopLabelsDefault()->SKLabelNode{
        let label = SKLabelNode()
        label.fontName = "AvenirNext-Bold"
        label.fontSize = 11
        label.position = CGPoint(x:0.5, y:1.5)
        return label
    }
    
    func mapOrderButtonsBottomLabelsDefault()->SKLabelNode{
        let label = SKLabelNode()
        label.fontName = "AvenirNext-Bold"
        label.fontSize = 10
        label.position = CGPoint(x:0.5, y:-10)
        return label
    }
    
    
    
    
    func setMapOrderRedButton()->SKSpriteNode{
        //Drawing
        /*var path = UIBezierPath()
        // Specify the point that the path should start get drawn.
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        // Create a line between the starting point and the bottom-left side of the view.
        path.addLine(to: CGPoint(x: 0.0, y:30))
        // Create the bottom line (bottom-left to bottom-right).
        path.addLine(to: CGPoint(x:60 , y:30))
        //Create the vertical line from the bottom-right to the top-right side.
        path.addLine(to: CGPoint(x:60, y: 0.0))
        // Close the path. This will create the last line automatically.
        path.close()
          
        path = UIBezierPath(roundedRect:path.bounds,cornerRadius: 6.0)//Esta linea trabaja el curveado de las esquinas
        //path = UIBezierPath(roundedRect: path.bounds, cornerRadius: CGFloat(4.0))*/
        
        //Drawing to Shapenode
        let shapeNode = SKShapeNode(path:initMapOrderButtons().cgPath)
        shapeNode.strokeColor = UIColor.init(red: 0.9176, green: 0.2745, blue: 0, alpha: 1.0)//c1d3c8
        shapeNode.lineWidth = 0.5
        shapeNode.fillColor = UIColor.init(red: 0.9176, green: 0.2745, blue: 0, alpha: 1.0)
        //Shapenode To SKSpriteNode
        //let view = SKView(frame: UIScreen.main.bounds)
        //let texture = view.texture(from: shapeNode)!
        //let redButton = SKSpriteNode(texture: texture)
        var redButton:SKSpriteNode = shapeNodeToSpriteNodeTexture(nodeShape:shapeNode)
        redButton = initSetButtonPhysicsBody(objectButton: redButton)
        //greenbutton.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        redButton.position = CGPoint(x:350, y:200)
        //greenbutton.zPosition = 2
        /*let labelOne = SKLabelNode()
        labelOne.fontName = "AvenirNext-Bold"
        labelOne.fontSize = 11
        labelOne.text = "Volver"
        labelOne.position = CGPoint(x:0.5, y:1.5)
        //labelOne.position = CGPoint(x:0, y:-13)
        //buttonOneLabelTwo.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
        redButton.addChild(labelOne)*/
        
        /*let labelTwo = SKLabelNode()
        labelTwo.fontName = "AvenirNext-Bold"
        labelTwo.fontSize = 10
        labelTwo.text = "(Return)"
        labelTwo.position = CGPoint(x:0.5, y:-10)
        //buttonOneLabelTwo.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
        redButton.addChild(labelTwo)*/
        
        return redButton
        
                
    }
    
    func setMapOrderGreenButton()->SKSpriteNode{
        //Drawing
        /*var path = UIBezierPath()
        // Specify the point that the path should start get drawn.
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        // Create a line between the starting point and the bottom-left side of the view.
        path.addLine(to: CGPoint(x: 0.0, y:30))
        // Create the bottom line (bottom-left to bottom-right).
        path.addLine(to: CGPoint(x:60 , y:30))
        //Create the vertical line from the bottom-right to the top-right side.
        path.addLine(to: CGPoint(x:60, y: 0.0))
        // Close the path. This will create the last line automatically.
        path.close()
          
        path = UIBezierPath(roundedRect:path.bounds,cornerRadius: 6.0)//Esta linea trabaja el curveado de las esquinas
        //path = UIBezierPath(roundedRect: path.bounds, cornerRadius: CGFloat(4.0))*/
        //Drawing to Shapenode
        let shapeNode = SKShapeNode(path:initMapOrderButtons().cgPath)
        shapeNode.strokeColor = UIColor.green//c1d3c8
        shapeNode.lineWidth = 0.5
        shapeNode.fillColor = UIColor.green
        //Shapenode To SKSpriteNode
        //let view = SKView(frame: UIScreen.main.bounds)
        //let texture = view.texture(from: shapeNode)!
        //let greenbutton = SKSpriteNode(texture: texture)
        //greenbutton.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        var greenbutton:SKSpriteNode = shapeNodeToSpriteNodeTexture(nodeShape:shapeNode)
        greenbutton = initSetButtonPhysicsBody(objectButton: greenbutton)
        //greenbutton.position = CGPoint(x:350, y:200)
        //greenbutton.zPosition = 2
        /*let labelOne = SKLabelNode()
        labelOne.fontName = "AvenirNext-Bold"
        labelOne.fontSize = 11
        labelOne.text = "Siguiente"
        labelOne.position = CGPoint(x:0.5, y:1.5)
        //labelOne.position = CGPoint(x:0, y:-13)
        //buttonOneLabelTwo.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
        greenbutton.addChild(labelOne)*/
        
        /*let labelTwo = SKLabelNode()
        labelTwo.fontName = "AvenirNext-Bold"
        labelTwo.fontSize = 10
        labelTwo.text = "(Next)"
        labelTwo.position = CGPoint(x:0.5, y:-10)
        //buttonOneLabelTwo.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
        greenbutton.addChild(labelTwo)*/
        
        return greenbutton
        
                
    }
    
    func dropDownMenuLabelBackground()->SKSpriteNode{
        
        //Drawing
       var path = UIBezierPath()
       // Specify the point that the path should start get drawn.
       path.move(to: CGPoint(x: 0.0, y: 0.0))
       // Create a line between the starting point and the bottom-left side of the view.
       path.addLine(to: CGPoint(x: 0.0, y:13))
       // Create the bottom line (bottom-left to bottom-right).
       path.addLine(to: CGPoint(x:180 , y:13))
       //Create the vertical line from the bottom-right to the top-right side.
       path.addLine(to: CGPoint(x:180, y: 0.0))
       // Close the path. This will create the last line automatically.
       path.close()
         
        path = UIBezierPath(roundedRect:path.bounds,cornerRadius: 1.5)//Esta linea trabaja el curveado de las esquinas
       //path = UIBezierPath(roundedRect: path.bounds, cornerRadius: CGFloat(4.0))//otra version de la linea de arriba con el mismo resultado
       //Drawing to Shapenode
       let shapeNode = SKShapeNode(path:path.cgPath)
       shapeNode.strokeColor = UIColor.init(red: 0.898, green: 0.7765, blue: 0, alpha: 1.0)
       shapeNode.lineWidth = 0.5
       shapeNode.fillColor = UIColor.init(red: 0.898, green: 0.7765, blue: 0, alpha: 1.0)
       //Shapenode To SKSpriteNode
       //let view = SKView(frame: UIScreen.main.bounds)
       //let texture = view.texture(from: shapeNode)!
       //let dropDownLabelBackGround = SKSpriteNode(texture: texture)
       let dropDownLabelBackGround:SKSpriteNode = shapeNodeToSpriteNodeTexture(nodeShape:shapeNode)
       return dropDownLabelBackGround
            
    }
    
    func mapOrderCountryDropDownMenuSpriteNodeTwo()->SKSpriteNode{
        
        //Drawing
       var path = UIBezierPath()
       // Specify the point that the path should start get drawn.
       path.move(to: CGPoint(x: 0.0, y: 0.0))
       // Create a line between the starting point and the bottom-left side of the view.
       path.addLine(to: CGPoint(x: 0.0, y:27))
       // Create the bottom line (bottom-left to bottom-right).
       path.addLine(to: CGPoint(x:180 , y:27))
       //Create the vertical line from the bottom-right to the top-right side.
       path.addLine(to: CGPoint(x:180, y: 0.0))
       // Close the path. This will create the last line automatically.
       path.close()
         
        path = UIBezierPath(roundedRect:path.bounds,cornerRadius: 1.5)//Esta linea trabaja el curveado de las esquinas
       //path = UIBezierPath(roundedRect: path.bounds, cornerRadius: CGFloat(4.0))//otra version de la linea de arriba con el mismo resultado
       //Drawing to Shapenode
       let shapeNode = SKShapeNode(path:path.cgPath)
       shapeNode.strokeColor = UIColor.init(red: 0.3373, green: 0.3373, blue: 0.3373, alpha: 1.0)
       shapeNode.lineWidth = 0.5
       shapeNode.fillColor = UIColor.init(red: 0.3373, green: 0.3373, blue: 0.3373, alpha: 1.0)
       //Shapenode To SKSpriteNode
       //let view = SKView(frame: UIScreen.main.bounds)
       //let texture = view.texture(from: shapeNode)!
       //let dropDownLabelBackGround = SKSpriteNode(texture: texture)
       let dropDownLabelBackGround:SKSpriteNode = shapeNodeToSpriteNodeTexture(nodeShape:shapeNode)
        
       return dropDownLabelBackGround
            
    }
    
    func mapOrderCountryDropDownMenuSpriteNode()->SKSpriteNode{
        
        //Drawing
       var path = UIBezierPath()
       // Specify the point that the path should start get drawn.
       path.move(to: CGPoint(x: 0.0, y: 0.0))
       // Create a line between the starting point and the bottom-left side of the view.
       path.addLine(to: CGPoint(x: 0.0, y:33))
       // Create the bottom line (bottom-left to bottom-right).
       path.addLine(to: CGPoint(x:180 , y:33))
       //Create the vertical line from the bottom-right to the top-right side.
       path.addLine(to: CGPoint(x:180, y: 0.0))
       // Close the path. This will create the last line automatically.
       path.close()
         
        path = UIBezierPath(roundedRect:path.bounds,cornerRadius: 1.5)//Esta linea trabaja el curveado de las esquinas
       //path = UIBezierPath(roundedRect: path.bounds, cornerRadius: CGFloat(4.0))//otra version de la linea de arriba con el mismo resultado
       //Drawing to Shapenode
       let shapeNode = SKShapeNode(path:path.cgPath)
       shapeNode.strokeColor = UIColor.init(red: 0.3373, green: 0.3373, blue: 0.3373, alpha: 1.0)
       shapeNode.lineWidth = 0.5
       shapeNode.fillColor = UIColor.init(red: 0.3373, green: 0.3373, blue: 0.3373, alpha: 1.0)
       //Shapenode To SKSpriteNode
       //let view = SKView(frame: UIScreen.main.bounds)
       //let texture = view.texture(from: shapeNode)!
       //let dropDownLabelBackGround = SKSpriteNode(texture: texture)
       let dropDownLabelBackGround:SKSpriteNode = shapeNodeToSpriteNodeTexture(nodeShape:shapeNode)
        
       return dropDownLabelBackGround
            
    }
    
    func mapOrderTwoLineLabelDefaults()->SKLabelNode{
      let label = SKLabelNode()
      label.fontName = "GillSans-SemiBold"
      label.numberOfLines = 3
      label.fontColor = .black
      label.fontSize = 11
      
      return label
    }
    
    func mapOrderOldPaperDropdownBG()->SKSpriteNode{
        let oldPaperTexture = SKSpriteNode(imageNamed: "old paper texture")
        oldPaperTexture.size = CGSize(width: 440, height:170)//(width: 480, height:195)
        //oldPaperTexture.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        //oldPaperTexture.zPosition = 0
        return oldPaperTexture

    }
    
    func dropDownLabelBackground()->SKSpriteNode{
        
        //Drawing
       var path = UIBezierPath()
       // Specify the point that the path should start get drawn.
       path.move(to: CGPoint(x: 0.0, y: 0.0))
       // Create a line between the starting point and the bottom-left side of the view.
        path.addLine(to: CGPoint(x: 0.0, y:16.5))
       // Create the bottom line (bottom-left to bottom-right).
        path.addLine(to: CGPoint(x:180 , y:16.5))
       //Create the vertical line from the bottom-right to the top-right side.
       path.addLine(to: CGPoint(x:180, y: 0.0))
       // Close the path. This will create the last line automatically.
       path.close()
         
        path = UIBezierPath(roundedRect:path.bounds,cornerRadius: 1.5)//Esta linea trabaja el curveado de las esquinas
       //path = UIBezierPath(roundedRect: path.bounds, cornerRadius: CGFloat(4.0))//otra version de la linea de arriba con el mismo resultado
       //Drawing to Shapenode
       let shapeNode = SKShapeNode(path:path.cgPath)
       shapeNode.strokeColor = UIColor.init(red: 0.8, green: 0.8, blue: 0.8, alpha: 1.0)
       shapeNode.lineWidth = 0.5
       shapeNode.fillColor = UIColor.init(red: 0.8, green: 0.8, blue: 0.8, alpha: 1.0)
       //Shapenode To SKSpriteNode
       //let view = SKView(frame: UIScreen.main.bounds)
       //let texture = view.texture(from: shapeNode)!
       //let dropDownLabelBackGround = SKSpriteNode(texture: texture)
       let dropDownLabelBackGround:SKSpriteNode = shapeNodeToSpriteNodeTexture(nodeShape:shapeNode)

       return dropDownLabelBackGround
            
    }
    
    func dropDownArrowLabelDefaults()->SKLabelNode{
        let label = SKLabelNode()
        label.fontName = "Avenir-Medium"
        label.fontSize = 12
        label.fontColor = UIColor.black
        
        return label
    }
    
    func dropDownArrowBPToSKSpritenode()-> SKSpriteNode {//Culebra frame drawing
        // Initialize the path.
        let path = UIBezierPath()
      
        // Specify the point that the path should start get drawn.
        path.move(to: CGPoint(x: 0.0, y: 0.0))
      
        // Create a line between the starting point and the bottom-left side of the view.
        path.addLine(to: CGPoint(x: 3.5, y:0))
      
        // Create the bottom line (bottom-left to bottom-right).
        path.addLine(to: CGPoint(x:0 , y:-3))
      
        //Create the vertical line from the bottom-right to the top-right side.
        path.addLine(to: CGPoint(x:-3.5, y: 0.0))
      
        // Close the path. This will create the last line automatically.
        path.close()
        
        //path = UIBezierPath(roundedRect:path.bounds,cornerRadius: 3.0)
        //path = UIBezierPath(roundedRect: path.bounds, cornerRadius: CGFloat(4.0))
        //Drawing to Shapenode
        let shapeNode = SKShapeNode(path:path.cgPath)
        shapeNode.strokeColor = UIColor.init(red: 0.8, green: 0.2784, blue: 0, alpha: 1.0)
        shapeNode.lineWidth = 0.5
        shapeNode.fillColor = UIColor.init(red: 0.8, green: 0.2784, blue: 0, alpha: 1.0)
        //Shapenode To SKSpriteNode
        //let view = SKView(frame: UIScreen.main.bounds)
        //let texture = view.texture(from: shapeNode)!
        //let dropDownArrow = SKSpriteNode(texture: texture)
        let dropDownArrow:SKSpriteNode = shapeNodeToSpriteNodeTexture(nodeShape:shapeNode)

        return dropDownArrow
        
    }
    
    func licenseLabels()->SKLabelNode{
        let label = SKLabelNode()
        label.fontColor = UIColor.black
        label.fontSize = 7.5
        label.fontName = "GillSans-Bold"
        label.numberOfLines = 5
        label.preferredMaxLayoutWidth = 250
        return label
    }
    
    func creditsSingleLineLabelDefaults()->SKLabelNode{
        let label = SKLabelNode()
        label.fontSize = 11
        label.fontName = "GillSans-Bold"
        label.fontColor = UIColor.init(red: 0, green: 0.4824, blue: 0.8784, alpha: 1.0)
        return label
    }
    
    func setCreditsLabelDefaults()->SKLabelNode{
      let label = SKLabelNode()
      label.fontName = "GillSans-Bold"
      label.fontSize = 9
      label.fontColor = UIColor.init(red: 0, green: 0.4824, blue: 0.8784, alpha: 1.0)
      /*label.text = "\tEn la parte inferior de la pantalla encontrarás\n el nombre de un municipio, estado,\n ciudad capital,territorio o país. Debes localizarlo en el mapa y tocarlo para identificarlo. La meta final es identificar todos los objetivos lo mas rapido que puedas.\n\n\t Puedes jugar en Modo de Practica con el mapa ya mostrando los nombres de los objetivos, pero solo se guardará tu tiempo mas rapido cuando juegas en Modo de Reto con un mapa en blanco.  Con algunas excepciones, los nombres de los objetivos a identificarse seran en base al idioma oficial del pais o territorio."*/
      label.numberOfLines = 10//12
      label.preferredMaxLayoutWidth = 80//105
      
      //label.position = CGPoint(x: self.size.width/2 /* 135*/, y:self.size.height/2 * 0.4)
      
        
      return label
    }
    
    func redButtonBlueButtonLabelTwo() ->SKLabelNode{
        let labelredButtonBlueButtonTwo = SKLabelNode()
        //labelSkipButtonTwo.isUserInteractionEnabled = true
        labelredButtonBlueButtonTwo.fontName = "ChalkboardSE-Light"
        labelredButtonBlueButtonTwo.fontSize = 8
        //labelSkipButtonTwo.text = "(Skip)"
        labelredButtonBlueButtonTwo.position = CGPoint(x:0.5, y:-8.5)
        //skipBlueButton.addChild(labelSkipButtonTwo)
        return labelredButtonBlueButtonTwo
    }
    
    func redButtonBlueButtonLabelOne()->SKLabelNode{
        let labelredButtonBlueButtonOne = SKLabelNode()
        //labelSkipButtonOne.isUserInteractionEnabled = true
        labelredButtonBlueButtonOne.fontName = "ChalkboardSE-Regular"
        labelredButtonBlueButtonOne.fontSize = 10
        //labelSkipButtonOne.text = "Saltar"
        labelredButtonBlueButtonOne.position = CGPoint(x:0.5, y:0.5)
        //skipBlueButton.addChild(labelSkipButtonOne)
        return labelredButtonBlueButtonOne
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
    
    func redButtonShapeNodeToSpriteNode()-> SKSpriteNode {
         
        //Drawing to Shapenode
        let shapeNode = SKShapeNode(path:blueButtonRedButtonBp().cgPath)
        shapeNode.strokeColor = UIColor.init(red: 0.9176, green: 0.2157, blue: 0.0902, alpha: 1.0)
        shapeNode.lineWidth = 0.5
        shapeNode.fillColor = UIColor.init(red: 0.9176, green: 0.2157, blue: 0.0902, alpha: 1.0)
        //Shapenode To SKSpriteNode
        //let view = SKView(frame: UIScreen.main.bounds)
        //let texture = view.texture(from: shapeNode)!
        //let redButton = SKSpriteNode(texture: texture)
        var button:SKSpriteNode = shapeNodeToSpriteNodeTexture(nodeShape:shapeNode)
        button = initSetButtonPhysicsBody(objectButton: button)
        //redButton.position = CGPoint(x:0.5, y:5.5)//(x:-280, y:5.5)
        //redButton.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:redButton.size.width, height:redButton.size.height), center: CGPoint(x:0.5, y: 0.5))
        //redButton.physicsBody?.isDynamic = false

        return button
    }
    
    func espanolEnglishButtonLabelDefaults()->SKLabelNode{
        let label = SKLabelNode()
        label.fontName = "ChalkboardSE-Regular"
        label.fontSize = 12
        label.position = CGPoint(x:0.5, y:-5.0)
        
        return label
    }
    
    func espanolEnglishButtonDrawToSpriteNode()-> SKSpriteNode {
        //Draw
        var path = UIBezierPath()
        // Specify the point that the path should start get drawn.
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        // Create a line between the starting point and the bottom-left side of the view.
        path.addLine(to: CGPoint(x: 0.0, y:20.0))
        // Create the bottom line (bottom-left to bottom-right).
        path.addLine(to: CGPoint(x:50 , y:20.0))
        //Create the vertical line from the bottom-right to the top-right side.
        path.addLine(to: CGPoint(x:50, y: 0.0))
        // Close the path. This will create the last line automatically.
        path.close()
          
        path = UIBezierPath(roundedRect:path.bounds,cornerRadius: 3.0)//Esta linea trabaja el curveado de las esquinas
        //Drawing to Shapenode
        let shapeNode = SKShapeNode(path:path.cgPath )
        shapeNode.strokeColor = UIColor.init(red: 0.9176, green: 0.2157, blue: 0.0902, alpha: 1.0)
        shapeNode.lineWidth = 0.5
        shapeNode.fillColor = UIColor.init(red: 0.9176, green: 0.2157, blue: 0.0902, alpha: 1.0)
        //Shapenode To SKSpriteNode
        //let view = SKView(frame: UIScreen.main.bounds)
        //let texture = view.texture(from: shapeNode)!
        //let redButton = SKSpriteNode(texture: texture)
        var button:SKSpriteNode = shapeNodeToSpriteNodeTexture(nodeShape:shapeNode)
        button = initSetButtonPhysicsBody(objectButton: button)
        //redButton.position = CGPoint(x:0.5, y:5.5)//(x:-280, y:5.5)
        //redButton.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:redButton.size.width, height:redButton.size.height), center: CGPoint(x:0.5, y: 0.5))
        //redButton.physicsBody?.isDynamic = false
        //redButton.name = "redButton"
    
        return button
    }
    
    func redArrowButtonDrawToSKSpriteNodeAndSetAttributes()->SKSpriteNode{
        
        //Drawing
       let path = UIBezierPath()
       // Specify the point that the path should start get drawn.
       path.move(to: CGPoint(x: 0.0, y: 0.0))
       // Create a line between the starting point and the bottom-left side of the view.
       path.addLine(to: CGPoint(x: 0.0, y:25))
       // Create the bottom line (bottom-left to bottom-right).
       path.addLine(to: CGPoint(x:50 , y:25))
        //Creates arrow upper wing point
       path.addLine(to: CGPoint(x:50 , y:40))
        //Arrow's tip
       path.addLine(to: CGPoint(x:100 , y:12.5))
       //Creates arrow lower wing point
       path.addLine(to: CGPoint(x:50 , y:-17))
       //Create the point where lower wing joins the arrow's body
       path.addLine(to: CGPoint(x:50, y: 0.0))
       // Close the path. This will create the last line automatically to (0,0)
       path.close()
        
       //Drawing to Shapenode
       let shapeNode = SKShapeNode(path:path.cgPath)
       shapeNode.lineWidth = 0.5
       shapeNode.strokeColor = UIColor.init(red: 0.8, green: 0.2784, blue: 0, alpha: 1.0)
       shapeNode.fillColor = UIColor.init(red: 0.8, green: 0.2784, blue: 0, alpha: 1.0)
       //Shapenode To SKSpriteNode
       //let view = SKView(frame: UIScreen.main.bounds)
       //let texture = view.texture(from: shapeNode)!
       //let textureAsSpriteNode = SKSpriteNode(texture: texture)
       var textureAsSpriteNode:SKSpriteNode = shapeNodeToSpriteNodeTexture(nodeShape:shapeNode)
       textureAsSpriteNode = initSetButtonPhysicsBody(objectButton: textureAsSpriteNode)
       //Set Attributes
       textureAsSpriteNode.position = CGPoint(x:0.0,y:-29.5)
       textureAsSpriteNode.setScale(0.50)
       //textureAsSpriteNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:textureAsSpriteNode.size.width, height:textureAsSpriteNode.size.height), center: CGPoint(x:0.5, y: 0.5))
       //textureAsSpriteNode.physicsBody?.isDynamic = false

       return textureAsSpriteNode
            
    }
    
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
