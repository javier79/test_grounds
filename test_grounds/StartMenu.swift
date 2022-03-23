//
//  StartMenu.swift
//  test_grounds
//
//  Created by javier pizarro on 3/19/22.
//  Copyright © 2022 javierpizarro. All rights reserved.
//

import SpriteKit

class StartMenu: SKScene {
    //let oldPaperBorderTexture = SKSpriteNode(imageNamed: "old paper texture")
    //let elMorro = SKSpriteNode(imageNamed: "el morro")
    //let mapaClickBanner = SKSpriteNode(imageNamed: "Mapaclick Title")
    
    override func didMove(to view: SKView){
        let oldPaperBorderTexture = oldPapertexture()
        let elMorro:SKSpriteNode = setElMorro()
        let buttonGreen:SKSpriteNode = setGreenButton()
        let mapaClickBanner: SKSpriteNode = setMapaClickBanner()
        
        var redButtonOne:SKSpriteNode = redButtonBpDrawToSKSpriteNode()
        redButtonOne = setRedButtonOne(redButtonOneSpriteNode:redButtonOne)
        
        var redButtonTwo:SKSpriteNode = redButtonBpDrawToSKSpriteNode()
        redButtonTwo = setRedButtonTwo(redButtonTwoSpriteNode:redButtonTwo)
        
        var redButtonThree:SKSpriteNode = redButtonBpDrawToSKSpriteNode()
        redButtonThree = setRedButtonThree(redButtonThreeSpriteNode:redButtonThree)
        

        
        oldPaperBorderTexture.addChild(elMorro)
        elMorro.addChild(buttonGreen)
        elMorro.addChild(mapaClickBanner)
        elMorro.addChild(redButtonOne)
        elMorro.addChild(redButtonTwo)
        elMorro.addChild(redButtonThree)
        self.addChild(oldPaperBorderTexture)
    
    }
    
    func setRedButtonThree(redButtonThreeSpriteNode:SKSpriteNode)->SKSpriteNode{
        let redButtonThreeLabel = setLabelDefaults()
        redButtonThreeLabel.text = "Opciones (Options)"
        redButtonThreeLabel.position = CGPoint(x:0.5,y:-5.5)
        redButtonThreeSpriteNode.addChild(redButtonThreeLabel)
        redButtonThreeSpriteNode.position = CGPoint(x:45,y:-52)
        
        return redButtonThreeSpriteNode
    }
    
    func setRedButtonTwo(redButtonTwoSpriteNode:SKSpriteNode)->SKSpriteNode{
        let redButtonTwoLabel = setLabelDefaults()
        redButtonTwoLabel.text = "Instrucciones (Instructions)"
        redButtonTwoLabel.position = CGPoint(x:0.5,y:-5.5)
        redButtonTwoSpriteNode.addChild(redButtonTwoLabel)
        redButtonTwoSpriteNode.position = CGPoint(x:45,y:-26.0)
        
        return redButtonTwoSpriteNode
    }
    
    func setRedButtonOne(redButtonOneSpriteNode:SKSpriteNode)->SKSpriteNode{
        let redButtonOneLabel = setLabelDefaults()
        redButtonOneLabel.text = "Mejores Tiempos (Best Times)"
        redButtonOneLabel.position = CGPoint(x:0.5,y:-5.5)
        redButtonOneSpriteNode.addChild(redButtonOneLabel)
        redButtonOneSpriteNode.position = CGPoint(x:45,y:0.0)
        
        return redButtonOneSpriteNode
    }
    
    func setLabelDefaults()-> SKLabelNode{
        let label = SKLabelNode()
        label.fontName = "AvenirNext-Bold"
        label.fontSize = 14
        //.zPosition = 1
        return label
    }
    
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
         
       path = UIBezierPath(roundedRect:path.bounds,cornerRadius: 1.0)//Esta linea trabaja el curveado de las esquinas
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

    
    func oldPapertexture()->SKSpriteNode{
        let oldPaperTexture = SKSpriteNode(imageNamed: "old paper texture")
        oldPaperTexture.size = CGSize(width: self.size.width, height:self.size.height)
        oldPaperTexture.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        //oldPaperTexture.zPosition = 0
        return oldPaperTexture
        
    }
    
    func setElMorro()->SKSpriteNode{
        let elMorro = SKSpriteNode(imageNamed: "el morro")
        elMorro.size = CGSize(width: oldPapertexture().size.width - 10, height:oldPapertexture().size.height - 10)
        elMorro.position = CGPoint(x: 0.5, y: 0.5)
        //elMorro.zPosition = 1
        return elMorro
    }
    
    func setMapaClickBanner()->SKSpriteNode{
        let bannerMapaClick = SKSpriteNode(imageNamed: "Mapaclick Title")
        //bannerMapaClick.setScale(0.85)
        bannerMapaClick.size = CGSize(width: 600, height:45)
        bannerMapaClick.position = CGPoint(x: 0.5, y: 145)
        //elMorro.zPosition = 1
        return bannerMapaClick
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
        let view = SKView(frame: UIScreen.main.bounds)
        let texture = view.texture(from: shapeNode)!
        let greenbutton = SKSpriteNode(texture: texture)
        //greenbutton.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        greenbutton.position = CGPoint(x:35, y:55.0)
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
}
