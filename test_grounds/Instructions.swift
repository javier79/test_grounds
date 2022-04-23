//
//  Instructions.swift
//  test_grounds
//
//  Created by javier pizarro on 4/18/22.
//  Copyright © 2022 javierpizarro. All rights reserved.
//

import Foundation
import SpriteKit

class Instructions: SKScene {
    
    var instructionsEspanolLabel: SKLabelNode!
    var instructionsEspanolLabelTwo: SKLabelNode!
    var redArrowButtonEspanolLabel: SKSpriteNode!
    var redArrowButtonEspanolLabelTwo:SKSpriteNode!
    var redArrowButtonEnglishLabel:SKSpriteNode!
    var redArrowButtonEnglishLabelTwo:SKSpriteNode!
    var instructionsEnglishLabel:SKLabelNode!
    var instructionsEnglishLabelTwo:SKLabelNode!
    var returnVolverRedButton:SKSpriteNode!
    var returnVolverRedButtonLabelOne:SKLabelNode!
    var returnVolverRedButtonLabelTwo:SKLabelNode!
    var espanolButtonLabel:SKLabelNode!
    var englishButtonLabel:SKLabelNode!
    var espanolButton:SKSpriteNode!
    var englishButton:SKSpriteNode!
    
    override func didMove(to view: SKView){
        let oldPaperBorderTexture = oldPapertexture()
        let elMorro:SKSpriteNode =  setElMorro()
        let mapaClickBanner: SKSpriteNode = setMapaClickBanner()
        
        englishButton = espanolEnglishButtonShapeNodeToSpriteNode()
        englishButtonLabel = espanolEnglishButtonLabelDefaults()
        englishButtonLabel.text = "English"
        englishButton.addChild(englishButtonLabel)
        englishButton.position = CGPoint(x:350, y:290)
        englishButton.name = "englishButton"
        
        espanolButton = espanolEnglishButtonShapeNodeToSpriteNode()
        espanolButtonLabel = espanolEnglishButtonLabelDefaults()
        espanolButtonLabel.text = "Español"
        espanolButton.addChild(espanolButtonLabel)
        espanolButton.position = CGPoint(x:350, y:290)
        espanolButton.name = "espanolButton"
        
        returnVolverRedButton = redButtonShapeNodeToSpriteNode()
        returnVolverRedButtonLabelOne = redButtonBlueButtonLabelOne()
        returnVolverRedButtonLabelOne.name = "redButtonBlueButtonLabelOne"
        returnVolverRedButtonLabelOne.text = "Volver"
        returnVolverRedButtonLabelTwo = redButtonBlueButtonLabelTwo()
        returnVolverRedButtonLabelTwo.name = "returnVolverRedButtonLabelTwo"
        returnVolverRedButtonLabelTwo.text = "(Return)"
        returnVolverRedButton.addChild(returnVolverRedButtonLabelOne)
        returnVolverRedButton.addChild(returnVolverRedButtonLabelTwo)
        returnVolverRedButton.position = CGPoint(x:40, y:25)
        returnVolverRedButton.setScale(1.2)
        
        instructionsEnglishLabel = setinstructionsLabelDefaults()
        instructionsEnglishLabel = instructionsEnglishLabelText(labelEnglish:instructionsEnglishLabel)
        instructionsEnglishLabel.position = CGPoint(x: self.size.width/2 /* 135*/, y:self.size.height/2 * 0.6)
        
        instructionsEnglishLabelTwo = setinstructionsLabelDefaults()
        instructionsEnglishLabelTwo = instructionsEnglishLabelTextTwo(labelEnglishTwo:instructionsEnglishLabelTwo)
        instructionsEnglishLabelTwo.position = CGPoint(x: self.size.width/2 /* 135*/, y:self.size.height/2 * 0.4)
        
        instructionsEspanolLabel = setinstructionsLabelDefaults()
        instructionsEspanolLabel = instructionsEspanolLabelText(labelEspanol:instructionsEspanolLabel)
        instructionsEspanolLabel.position = CGPoint(x: self.size.width/2 /* 135*/, y:self.size.height/2 * 0.55)
        
        instructionsEspanolLabelTwo = setinstructionsLabelDefaults()
        instructionsEspanolLabelTwo = instructionsEspanolLabelTextTwo (labelEspanolTwo:instructionsEspanolLabelTwo)
        instructionsEspanolLabelTwo.position = CGPoint(x: self.size.width/2 /* 135*/, y:self.size.height/2 * 0.4)
        
        redArrowButtonEnglishLabelTwo = redArrowButtonBpDrawToSKSpriteNode()
        redArrowButtonEnglishLabelTwo = setRedArrowButton(redArrow: redArrowButtonEnglishLabelTwo)
        redArrowButtonEnglishLabelTwo.name = "redArrowButtonEnglishLabelTwo"
        redArrowButtonEnglishLabelTwo.zRotation =  3.14
        
        redArrowButtonEnglishLabel = redArrowButtonBpDrawToSKSpriteNode()
        redArrowButtonEnglishLabel = setRedArrowButton(redArrow: redArrowButtonEnglishLabel)
        redArrowButtonEnglishLabel.name = "redArrowButtonEnglishLabel"
        
        redArrowButtonEspanolLabel = redArrowButtonBpDrawToSKSpriteNode()
        redArrowButtonEspanolLabel = setRedArrowButton(redArrow: redArrowButtonEspanolLabel)
        redArrowButtonEspanolLabel.name = "redArrowButtonEspanolLabel"
        
        redArrowButtonEspanolLabelTwo = redArrowButtonBpDrawToSKSpriteNode()
        redArrowButtonEspanolLabelTwo = setRedArrowButton(redArrow: redArrowButtonEspanolLabelTwo)
        redArrowButtonEspanolLabelTwo.name = "redArrowButtonEspanolLabelTwo"
        redArrowButtonEspanolLabelTwo.zRotation = 3.14
        
        elMorro.addChild(mapaClickBanner)
        oldPaperBorderTexture.addChild(elMorro)
        instructionsEnglishLabelTwo.addChild(redArrowButtonEnglishLabelTwo)
        instructionsEnglishLabel.addChild(redArrowButtonEnglishLabel)
        instructionsEspanolLabel.addChild(redArrowButtonEspanolLabel)
        instructionsEspanolLabelTwo.addChild(redArrowButtonEspanolLabelTwo)
        self.addChild(oldPaperBorderTexture)
        self.addChild(englishButton)
    }
    
    func espanolEnglishButtonLabelDefaults()->SKLabelNode{
        let label = SKLabelNode()
        label.fontName = "ChalkboardSE-Regular"
        label.fontSize = 12
        label.position = CGPoint(x:0.5, y:-5.0)
        
        return label
    }
    
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
    
    func espanolEnglishButtonShapeNodeToSpriteNode()-> SKSpriteNode {
         
        //Drawing to Shapenode
        let shapeNode = SKShapeNode(path:espanolEnglishButtonBp().cgPath )
        shapeNode.strokeColor = UIColor.init(red: 0.9176, green: 0.2157, blue: 0.0902, alpha: 1.0)
        shapeNode.lineWidth = 0.5
        shapeNode.fillColor = UIColor.init(red: 0.9176, green: 0.2157, blue: 0.0902, alpha: 1.0)
        //Shapenode To SKSpriteNode
        let view = SKView(frame: UIScreen.main.bounds)
        let texture = view.texture(from: shapeNode)!
        let redButton = SKSpriteNode(texture: texture)
        //redButton.position = CGPoint(x:0.5, y:5.5)//(x:-280, y:5.5)
        redButton.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:redButton.size.width, height:redButton.size.height), center: CGPoint(x:0.5, y: 0.5))
        redButton.physicsBody?.isDynamic = false
        //redButton.name = "redButton"
        
        /*let labelRedButtonOne = redButtonBlueButtonLabelOne()
        //labelSkipButtonOne.fontName = "ChalkboardSE-Regular"
        //labelSkipButtonOne.fontSize = 10
        labelRedButtonOne.text = "Exit"
        //labelSkipButtonOne.position = CGPoint(x:0.5, y:0.5)
        redButton.addChild(labelRedButtonOne)
        
        let labelRedButtonTwo = redButtonBlueButtonLabelTwo()
        //labelSkipButtonTwo.fontName = "ChalkboardSE-Light"
        //labelSkipButtonTwo.fontSize = 8
        labelRedButtonTwo.text = "(Salir)"
        //labelSkipButtonTwo.position = CGPoint(x:0.5, y:-8.5)
        redButton.addChild(labelRedButtonTwo)*/
        
        
        return redButton
    }
    
    func redButtonShapeNodeToSpriteNode()-> SKSpriteNode {
         
        //Drawing to Shapenode
        let shapeNode = SKShapeNode(path:blueButtonRedButtonBp().cgPath)
        shapeNode.strokeColor = UIColor.init(red: 0.9176, green: 0.2157, blue: 0.0902, alpha: 1.0)
        shapeNode.lineWidth = 0.5
        shapeNode.fillColor = UIColor.init(red: 0.9176, green: 0.2157, blue: 0.0902, alpha: 1.0)
        //Shapenode To SKSpriteNode
        let view = SKView(frame: UIScreen.main.bounds)
        let texture = view.texture(from: shapeNode)!
        let redButton = SKSpriteNode(texture: texture)
        //redButton.position = CGPoint(x:0.5, y:5.5)//(x:-280, y:5.5)
        redButton.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:redButton.size.width, height:redButton.size.height), center: CGPoint(x:0.5, y: 0.5))
        redButton.physicsBody?.isDynamic = false
        //redButton.name = "redButton"
        
        /*let labelRedButtonOne = redButtonBlueButtonLabelOne()
        //labelSkipButtonOne.fontName = "ChalkboardSE-Regular"
        //labelSkipButtonOne.fontSize = 10
        labelRedButtonOne.text = "Exit"
        //labelSkipButtonOne.position = CGPoint(x:0.5, y:0.5)
        redButton.addChild(labelRedButtonOne)
        
        let labelRedButtonTwo = redButtonBlueButtonLabelTwo()
        //labelSkipButtonTwo.fontName = "ChalkboardSE-Light"
        //labelSkipButtonTwo.fontSize = 8
        labelRedButtonTwo.text = "(Salir)"
        //labelSkipButtonTwo.position = CGPoint(x:0.5, y:-8.5)
        redButton.addChild(labelRedButtonTwo)*/
        
        
        return redButton
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
    
    func espanolEnglishButtonBp()->UIBezierPath{
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

        
        return path
        
    }
    
    func setRedArrowButton(redArrow:SKSpriteNode)->SKSpriteNode{
        //redArrow.name = "redArrowButton"
        redArrow.position = CGPoint(x:0.5,y:-20)
        redArrow.setScale(0.50)
        redArrow.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:redArrow.size.width, height:redArrow.size.height), center: CGPoint(x:0.5, y: 0.5))
        redArrow.physicsBody?.isDynamic = false
        
        return redArrow
    }
    
    func redArrowButtonBpDrawToSKSpriteNode()->SKSpriteNode{
        
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
       shapeNode.strokeColor = UIColor.init(red: 0.8, green: 0.2784, blue: 0, alpha: 1.0)
       shapeNode.lineWidth = 0.5
       shapeNode.fillColor = UIColor.init(red: 0.8, green: 0.2784, blue: 0, alpha: 1.0)
       //Shapenode To SKSpriteNode
       let view = SKView(frame: UIScreen.main.bounds)
       let texture = view.texture(from: shapeNode)!
       let redArrowButton = SKSpriteNode(texture: texture)

       return redArrowButton
            
    }
    
    func setinstructionsLabelDefaults()->SKLabelNode{
      let label = SKLabelNode()
      label.fontName = "GillSans-SemiBold"
      label.fontSize = 14
      label.fontColor = UIColor.init(red: 0, green: 0.4078, blue: 0.2431, alpha: 1.0)
      /*label.text = "\tEn la parte inferior de la pantalla encontrarás\n el nombre de un municipio, estado,\n ciudad capital,territorio o país. Debes localizarlo en el mapa y tocarlo para identificarlo. La meta final es identificar todos los objetivos lo mas rapido que puedas.\n\n\t Puedes jugar en Modo de Practica con el mapa ya mostrando los nombres de los objetivos, pero solo se guardará tu tiempo mas rapido cuando juegas en Modo de Reto con un mapa en blanco.  Con algunas excepciones, los nombres de los objetivos a identificarse seran en base al idioma oficial del pais o territorio."*/
      label.numberOfLines = 12//12
      label.preferredMaxLayoutWidth = 580//650
      
      //label.position = CGPoint(x: self.size.width/2 /* 135*/, y:self.size.height/2 * 0.4)
      
        
      return label
    }
    
    func instructionsEnglishLabelText(labelEnglish: SKLabelNode)->SKLabelNode{
        //let label = SKLabelNode()
        labelEnglish.text = "\tAt the bottom of the screen is the name of a municipality, state, capital, city,\nterritory or country. You must find it on the map and tap it to identify it. The goal is\n to identify all the targets as fast as you can.\n\tYou can play in Practice Mode with the map already showing the names of the targets, but your fastest time will only be recorded if you play in Challenge Mode with a blank map.\n\tWith some exceptions, the names of the targets will be based on the official language of the countrie or territory"
        
        return labelEnglish
    }
    
    func instructionsEnglishLabelTextTwo(labelEnglishTwo: SKLabelNode)->SKLabelNode{
        //let label = SKLabelNode()
        labelEnglishTwo.text = "\tYou can zoom in/out by pinching the screen with 2 fingers. When zoomed in, you\ncan move the camera around by sliding a single finger across the screen.\n\tTo mark the target, tap it on the screen without moving your finger(tap the target itself, NOT the arrow pointing at it.) If you selected the correct target, then it's name\n(or if you are playing in Practice Mode, a checkmark) will appear over the target in the map and the color of the target will change(to green) and the name of the next target will appear at the bottom of the screen.\n\tEverytime you make a wrong selection, 3 more seconds will be added to your time. You can also choose to skip the current target with a penalty of 15 seconds added(you'll still need to identify skipped targets at the end.)"
        
        return labelEnglishTwo
    }
    
    func instructionsEspanolLabelText(labelEspanol: SKLabelNode)->SKLabelNode{
        //let label = SKLabelNode()
        labelEspanol.text = "\tEn la parte inferior de la pantalla encontrarás el nombre de un municipio, estado,\n ciudad capital,territorio o país. Debes localizarlo en el mapa y tocarlo para\n identificarlo. La meta final es identificar todos los objetivos lo mas rapido que puedas.\n\t Puedes jugar en Modo de Practica con el mapa ya mostrando los nombres de los\n objetivos, pero solo se guardará tu tiempo mas rapido cuando juegas en Modo de\n Reto con un mapa en blanco.\n\tCon algunas excepciones, los nombres de los objetivos a identificarse seran\n en base al idioma oficial del pais o territorio."
        
        return labelEspanol
    }
    
    func instructionsEspanolLabelTextTwo(labelEspanolTwo:SKLabelNode)->SKLabelNode{
         //let label = SKLabelNode()
         labelEspanolTwo.text = "\tPuedes acercar o alejar la cámara pellizcando la pantalla con 2 dedos. Cuando\n la cámara está acercada, puedes moverla deslizando 1 solo dedo a través de la pantalla.\n\tPara marcar el objetivo, haz un toque ligero sobre el mismo en la pantalla sin\n mover el dedo(toca el objetivo como tal, NO la raya apuntando al mismo.)Si\n seleccionaste el objetivo corecto, entonces su nombre(o, si estas jugando en\n Modeo de Práctica, una marca de cotejo)aparecerá sobre el mismo en el mapa\n acompañado de un cambio de color tornando el objetivo verde y el nombre\n del proximo objetivo aparecerá al fondo de la pantalla.\n\tCada vez que hagas una selección errónea, se añadirán 3 segundos adicionales\n a tu tiempo. Tambien puedes escoger saltar el objetivo actual con una penalidad\n de 15 segundos añadidos(todavia tendrás que identificar los objetivos saltados al final)"
         
         return labelEspanolTwo
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


}

