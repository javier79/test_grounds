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
    var touchedNode: SKPhysicsBody!
    var instructionsEspanolLabel: SKLabelNode!
    var instructionsEspanolLabelTwo: SKLabelNode!
    var instructionsEnglishLabel:SKLabelNode!
    var instructionsEnglishLabelTwo:SKLabelNode!
    var redArrowButtonEspanolLabel: SKSpriteNode!
    var redArrowButtonEspanolLabelTwo:SKSpriteNode!
    var redArrowButtonEnglishLabel:SKSpriteNode!
    var redArrowButtonEnglishLabelTwo:SKSpriteNode!
    var redButtonOne:SKSpriteNode!//boton rojo "Mejores Tiempos"
    var redButtonTwo:SKSpriteNode!
    var redButtonThree:SKSpriteNode!
    var buttonGreen:SKSpriteNode!//boton verde de jugar
    var englishButton:SKSpriteNode!
    var espanolButton:SKSpriteNode!
    var englishButtonLabel:SKLabelNode!
    var espanolButtonLabel:SKLabelNode!
    var returnVolverRedButton:SKSpriteNode!
    var returnVolverRedButtonLabelOne:SKLabelNode!
    var returnVolverRedButtonLabelTwo:SKLabelNode!
    var redButtonOneLabel:SKLabelNode!//labels for (the three)red buttons
    var redButtonTwoLabel:SKLabelNode!
    var redButtonThreeLabel:SKLabelNode!
    
    override func didMove(to view: SKView){
        let oldPaperBorderTexture = oldPapertexture()//Primer objeto sobre la escena, sirve de background al resto de los objetos y le da la caracteristica a los bordes como la textura de un pergamino antiguo
        let elMorro:SKSpriteNode = setElMorro()// foto del morro
        let mapaClickBanner: SKSpriteNode = setMapaClickBanner()//nombre de la marca a la parte superior de la escena
        
        buttonGreen = setGreenButton()
        
        redButtonOne = redButtonBpDrawToSKSpriteNode()//funcion dibuja el shapenode y lo convierte a formato SpriteNode
        redButtonOne = setRedButtonPhysicsBody(redButton:redButtonOne)//set physics body
        redButtonOne.position = CGPoint(x:350,y:150)
        redButtonOneLabel = setLabelDefaults()//create label and set default atrributes
        redButtonOne.addChild(redButtonOneLabel)
        redButtonOneLabel.text = "Mejores Tiempos (Best Times)"
        
        redButtonTwo = redButtonBpDrawToSKSpriteNode()
        redButtonTwo = setRedButtonPhysicsBody(redButton:redButtonTwo)
        redButtonTwo.position = CGPoint(x:350,y:123.9)
        redButtonTwoLabel = setLabelDefaults()
        redButtonTwo.addChild(redButtonTwoLabel)
        redButtonTwoLabel.text = "Instrucciones (Instructions)"
        redButtonTwo.name = "instrucciones"
        
        redButtonThree = redButtonBpDrawToSKSpriteNode()
        redButtonThree = setRedButtonPhysicsBody(redButton:redButtonThree)
        redButtonThree.position = CGPoint(x:350,y:98)
        redButtonThreeLabel = setLabelDefaults()
        redButtonThree.addChild(redButtonThreeLabel)
        redButtonThreeLabel.text = "Opciones (Options)"
        
        instructionsEspanolLabel = setinstructionsLabelDefaults()//create label and set default atrributes
        instructionsEspanolLabel = instructionsEspanolLabelText(labelEspanol:instructionsEspanolLabel)//set the text attribute for label
        instructionsEspanolLabel.position = CGPoint(x: self.size.width/2 /* 135*/, y:self.size.height/2 * 0.55)//overrides position values from setinstructionsLabelDefaults()
        
        instructionsEspanolLabelTwo = setinstructionsLabelDefaults()
        instructionsEspanolLabelTwo = instructionsEspanolLabelTextTwo (labelEspanolTwo:instructionsEspanolLabelTwo)
        //instructionsEspanolLabelTwo.position = CGPoint(x: self.size.width/2 /* 135*/, y:self.size.height/2 * 0.6)
        
        instructionsEnglishLabel = setinstructionsLabelDefaults()
        instructionsEnglishLabel = instructionsEnglishLabelText(labelEnglish:instructionsEnglishLabel)
        //instructionsEnglishLabel.position = CGPoint(x: self.size.width/2 /* 135*/, y:self.size.height/2 * 0.6)
        
        instructionsEnglishLabelTwo = setinstructionsLabelDefaults()
        instructionsEnglishLabelTwo = instructionsEnglishLabelTextTwo(labelEnglishTwo:instructionsEnglishLabelTwo)
        //instructionsEnglishLabelTwo.position = CGPoint(x: self.size.width/2 /* 135*/, y:self.size.height/2 * 0.6)
        
        redArrowButtonEspanolLabel = redArrowButtonBpDrawToSKSpriteNode()//draws a red arrow Shapenode and converts to SKSpriteNode
        redArrowButtonEspanolLabel = setRedArrowButton(redArrow: redArrowButtonEspanolLabel)//set difault attributes for red arrow buttons
        redArrowButtonEspanolLabel.name = "redArrowButtonEspanolLabel"
        redArrowButtonEspanolLabel.position = CGPoint(x:0.5,y:-20)//overrides position values from setRedArrowButton(), as the only arrow node with a different position values.
        instructionsEspanolLabel.addChild(redArrowButtonEspanolLabel)
        
        redArrowButtonEspanolLabelTwo = redArrowButtonBpDrawToSKSpriteNode()
        redArrowButtonEspanolLabelTwo = setRedArrowButton(redArrow: redArrowButtonEspanolLabelTwo)
        redArrowButtonEspanolLabelTwo.name = "redArrowButtonEspanolLabelTwo"
        redArrowButtonEspanolLabelTwo.zRotation = 3.14
        //redArrowButtonEspanolLabelTwo.position = CGPoint(x:0.0,y:-29.5)
        instructionsEspanolLabelTwo.addChild(redArrowButtonEspanolLabelTwo)
        
        redArrowButtonEnglishLabel = redArrowButtonBpDrawToSKSpriteNode()
        redArrowButtonEnglishLabel = setRedArrowButton(redArrow: redArrowButtonEnglishLabel)
        redArrowButtonEnglishLabel.name = "redArrowButtonEnglishLabel"
        //redArrowButtonEnglishLabel.position = CGPoint(x:0.0,y:-29.5)
        instructionsEnglishLabel.addChild(redArrowButtonEnglishLabel)
        
        redArrowButtonEnglishLabelTwo = redArrowButtonBpDrawToSKSpriteNode()
        redArrowButtonEnglishLabelTwo = setRedArrowButton(redArrow: redArrowButtonEnglishLabelTwo)
        redArrowButtonEnglishLabelTwo.name = "redArrowButtonEnglishLabelTwo"
        redArrowButtonEnglishLabelTwo.zRotation =  3.14
        //redArrowButtonEnglishLabelTwo.position = CGPoint(x:0.0,y:-29.5)
        instructionsEnglishLabelTwo.addChild(redArrowButtonEnglishLabelTwo)
        
        englishButton = espanolEnglishButtonShapeNodeToSpriteNode()//draws a red arrow Shapenode and converts to SKSpriteNode
        englishButtonLabel = espanolEnglishButtonLabelDefaults()//set difault attributes for label
        englishButtonLabel.text = "English"
        englishButton.addChild(englishButtonLabel)
        englishButton.position = CGPoint(x:0.5, y:170)//290
        englishButton.name = "englishButton"
        instructionsEspanolLabel.addChild(englishButton)
        
        espanolButton = espanolEnglishButtonShapeNodeToSpriteNode()//draws a red arrow Shapenode and converts to SKSpriteNode
        espanolButtonLabel = espanolEnglishButtonLabelDefaults()//set difault attributes for label
        espanolButtonLabel.text = "Español"
        espanolButton.addChild(espanolButtonLabel)
        espanolButton.position = CGPoint(x:0.5, y:160.5)
        espanolButton.name = "espanolButton"
        instructionsEnglishLabel.addChild(espanolButton)
        
        returnVolverRedButton = redButtonShapeNodeToSpriteNode()//draws a red arrow Shapenode and converts to SKSpriteNode
        returnVolverRedButtonLabelOne = redButtonBlueButtonLabelOne()//set difault attributes for label
        returnVolverRedButtonLabelOne.name = "redButtonBlueButtonLabelOne"
        returnVolverRedButtonLabelOne.text = "Volver"
        returnVolverRedButtonLabelTwo = redButtonBlueButtonLabelTwo()
        returnVolverRedButtonLabelTwo.name = "returnVolverRedButtonLabelTwo"
        returnVolverRedButtonLabelTwo.text = "(Return)"
        returnVolverRedButton.addChild(returnVolverRedButtonLabelOne)
        returnVolverRedButton.addChild(returnVolverRedButtonLabelTwo)
        returnVolverRedButton.position = CGPoint(x:40, y:25)
        returnVolverRedButton.setScale(1.2)//set a larger scale
        
        oldPaperBorderTexture.addChild(elMorro)
        //elMorro.addChild(buttonGreen)
        
        elMorro.addChild(mapaClickBanner)
        
        //elMorro.addChild(redButtonOne)
        //elMorro.addChild(redButtonTwo)
       // elMorro.addChild(redButtonThree)
        self.addChild(oldPaperBorderTexture)
        self.addChild(buttonGreen)
        self.addChild(redButtonOne)
        self.addChild(redButtonTwo)
        self.addChild(redButtonThree)
    
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch = touches.first!//Guarda toque de pantalla
        let touchLocation = touch.location(in: self)//Define el espacio en donde van a tomar efecto los toques de pantalla en este caso la vista StartScene
        touchedNode = self.physicsWorld.body(at:touchLocation)//Se define que el toque de pantalla tomara efecto cuando el mismo entre en contacto con un SKphysics body, dentro de la vista StartScene
        
        if (touchedNode != nil){
            if (redButtonTwo.name == touchedNode?.node?.name){
                buttonGreen.removeFromParent()
                redButtonOne.removeFromParent()
                redButtonTwo.removeFromParent()
                redButtonThree.removeFromParent()
                self.addChild(instructionsEspanolLabel)
                self.addChild(returnVolverRedButton)

            }
                
            else if (redArrowButtonEspanolLabel.name == touchedNode?.node?.name){
                instructionsEspanolLabel.removeFromParent()
                self.addChild(instructionsEspanolLabelTwo)
            }
            
            else if (redArrowButtonEspanolLabelTwo.name == touchedNode?.node?.name){
                instructionsEspanolLabelTwo.removeFromParent()
                self.addChild(instructionsEspanolLabel)
            }
            else if (englishButton.name == touchedNode?.node?.name){
                instructionsEspanolLabel.removeFromParent()
                self.addChild(instructionsEnglishLabel)
            }
            else if (espanolButton.name == touchedNode?.node?.name){
                instructionsEnglishLabel.removeFromParent()
                //instructionsEspanolLabel.addChild(englishButton)
                self.addChild(instructionsEspanolLabel)
            }
            else if (redArrowButtonEnglishLabel.name == touchedNode?.node?.name){
                instructionsEnglishLabel.removeFromParent()
                //instructionsEspanolLabel.addChild(englishButton)
                self.addChild(instructionsEnglishLabelTwo)
            }
            else if (redArrowButtonEnglishLabelTwo.name == touchedNode?.node?.name){
                instructionsEnglishLabelTwo.removeFromParent()
                self.addChild(instructionsEnglishLabel)
            }
            else if (returnVolverRedButton.name == touchedNode?.node?.name){
                returnVolverRedButton.removeFromParent()
                if instructionsEspanolLabel.parent != nil{
                    instructionsEspanolLabel.removeFromParent()
                }
                if instructionsEspanolLabelTwo.parent != nil{
                    instructionsEspanolLabelTwo.removeFromParent()
                }
                if instructionsEnglishLabel.parent != nil{
                    instructionsEnglishLabel.removeFromParent()
                }
                if instructionsEnglishLabelTwo.parent != nil{
                    instructionsEnglishLabelTwo.removeFromParent()
                }
                
                self.addChild(buttonGreen)
                self.addChild(redButtonOne)
                self.addChild(redButtonTwo)
                self.addChild(redButtonThree)
            }
            
        }
        
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
    //Label inferior para los botones azul y rojo
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
    
    func espanolEnglishButtonLabelDefaults()->SKLabelNode{
        let label = SKLabelNode()
        label.fontName = "ChalkboardSE-Regular"
        label.fontSize = 12
        label.position = CGPoint(x:0.5, y:-5.0)
        
        return label
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
    
        return redButton
    }
    
    func setinstructionsLabelDefaults()->SKLabelNode{
      let label = SKLabelNode()
      label.fontName = "GillSans-SemiBold"
      label.fontSize = 14
      label.fontColor = UIColor.init(red: 0.5686, green: 1, blue: 0.8745, alpha: 1.0)//(red: 0, green: 0.4078, blue: 0.2431, alpha: 1.0)
      label.numberOfLines = 12//12
      label.preferredMaxLayoutWidth = 580//650
      label.position = CGPoint(x: self.size.width/2 /* 135*/, y:self.size.height/2 * 0.6)
      
      return label
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

    func setRedArrowButton(redArrow:SKSpriteNode)->SKSpriteNode{
        //redArrow.name = "redArrowButton"
        redArrow.position = CGPoint(x:0.0,y:-29.5)
        redArrow.setScale(0.50)
        redArrow.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:redArrow.size.width, height:redArrow.size.height), center: CGPoint(x:0.5, y: 0.5))
        redArrow.physicsBody?.isDynamic = false
        
        return redArrow
    }

    func setRedButtonPhysicsBody(redButton:SKSpriteNode)->SKSpriteNode {
        redButton.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:redButton.size.width, height:redButton.size.height), center: CGPoint(x:0.5, y: 0.5))
        redButton.physicsBody?.isDynamic = false
        
        return redButton
    }
    
    
    func setLabelDefaults()-> SKLabelNode{
        let label = SKLabelNode()
        label.fontName = "AvenirNext-Bold"
        label.fontSize = 14
        label.position = CGPoint(x:0.5,y:-5.5)
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
        greenbutton.position = CGPoint(x:350, y:200)
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
