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
    var creditsLabel:SKLabelNode!
    var creditsLabelTwo:SKLabelNode!
    var creditsSoundMusicLabel:SKLabelNode!
    var creditsSoundMusicChildLabel:SKLabelNode!
    var creditsSoundMusicChildLabelTwo:SKLabelNode!
    var creditsSoundMusicChildLabelThree:SKLabelNode!
    var creditsMapsImagesLabel:SKLabelNode!
    var creditsMapsImagesChildLabel:SKLabelNode!
    var creditsMapsImagesChildLabelTwo:SKLabelNode!
    var creditsMapsImagesChildLabelThree:SKLabelNode!
    var creditsSpecialThanksLabel:SKLabelNode!
    var creditsSpecialThanksChildLabel:SKLabelNode!
    var creditsSpecialThanksChildLabelTwo:SKLabelNode!
    var path: UIBezierPath!
    var dropDownArrow:SKSpriteNode!
    var dropDownArrowTwo:SKSpriteNode!
    var dropDownArrowLabel:SKLabelNode!
    var dropDownArrowLabelTwo:SKLabelNode!
    var dropDownLabelBG:SKSpriteNode!
    var dropDownLabelBGTwo:SKSpriteNode!
    var mapOrderOldPaperbackground:SKSpriteNode!
    var mapOrderTopLabel:SKLabelNode!
    var mapOrderMiddleLabel:SKLabelNode!
    var mapOrderSingleLineLabel:SKLabelNode!
    var mapOrderSingleLineLabelTwo:SKLabelNode!
    var mapOrderCountryDropDownMenu: SKSpriteNode!
    var orderDropDownMenu: SKSpriteNode!
    var mapOrderCountryDropDownMenuYellowBG: SKSpriteNode!
    var dropDownMenuLabelPR:SKLabelNode!
    var orderDropDownMenuYellowBG:SKSpriteNode!
    var orderDropDownMenuYellowBGTwo:SKSpriteNode!
    var orderDropDownMenuLabel:SKLabelNode!
    var orderDropDownMenuLabelTwo:SKLabelNode!
    var mapOrderGreenButton:SKSpriteNode!
    var mapOrderRedButton:SKSpriteNode!
    var gameModeSelectionOldPaperbackground:SKSpriteNode!
    var gameModeSelectionGreenButton:SKSpriteNode!
    var gameModeSelectionGreenButtonLabel:SKLabelNode!
    var gameModeSelectionBlueButton:SKSpriteNode!
    var gameModeSelectionRedButtonLabel:SKLabelNode!
    var gameModeSelectionLabel:SKLabelNode!
    var gameModeSelectionLabelTwo:SKLabelNode!
    var gameModeSelectionRedButton:SKSpriteNode!
    var bestTimesRectangleBp:UIBezierPath!
    var bestTimesRectangleBpToSKSpritenode:SKSpriteNode!
    var bestTimesToplabel:SKLabelNode!
    var bestTimesPrAlphabeticlabel:SKLabelNode!
    var bestTimesPrAlphabeticScorelabel:SKLabelNode!
    var bestTimesPrRandomlabel:SKLabelNode!
    var bestTimesPrRandomScorelabel:SKLabelNode!
    var opcionesAudioLabel:SKLabelNode!
    var opcionesMusicaLabel:SKLabelNode!
    var opcionesSonidosLabel:SKLabelNode!
    var opcionesCheckbox:SKSpriteNode!
    var opcionesCheckboxTwo:SKSpriteNode!
    var opcionesCheckmark:SKSpriteNode!
    var opcionesCheckmarkTwo:SKSpriteNode!
    static var backgroundMusicOn = true
    static var gamePlaySoundOn = true
    var creditosButton:SKSpriteNode!
    var creditButtonLabel:SKLabelNode!
    
    override func didMove(to view: SKView){
        let oldPaperBorderTexture = oldPapertexture()//Primer objeto sobre la escena, sirve de background al resto de los objetos y le da la caracteristica a los bordes como la textura de un pergamino antiguo
        let elMorro:SKSpriteNode = setElMorro()// foto del morro
        let mapaClickBanner: SKSpriteNode = setMapaClickBanner()//nombre de la marca a la parte superior de la escena
        
        buttonGreen = setGreenButton()
        buttonGreen.name = "buttonGreen"
        buttonGreen = setRedButtonPhysicsBody(redButton:buttonGreen)
        
        redButtonOne = redButtonBpDrawToSKSpriteNode()//funcion dibuja el shapenode y lo convierte a formato SpriteNode
        redButtonOne = setRedButtonPhysicsBody(redButton:redButtonOne)//set physics body
        redButtonOne.position = CGPoint(x:0.5,y:-45.5)
        redButtonOne.name = "redButtonOne"
        redButtonOneLabel = setLabelDefaults()//create label and set default atrributes
        redButtonOneLabel.text = "Mejores Tiempos (Best Times)"
        redButtonOne.addChild(redButtonOneLabel)
        buttonGreen.addChild(redButtonOne)
        
        redButtonTwo = redButtonBpDrawToSKSpriteNode()
        redButtonTwo = setRedButtonPhysicsBody(redButton:redButtonTwo)
        redButtonTwo.position = CGPoint(x:0.5,y:-72)
        redButtonTwo.name = "instrucciones"
        redButtonTwoLabel = setLabelDefaults()
        redButtonTwoLabel.text = "Instrucciones (Instructions)"
        redButtonTwo.addChild(redButtonTwoLabel)
        buttonGreen.addChild(redButtonTwo)
        
        redButtonThree = redButtonBpDrawToSKSpriteNode()
        redButtonThree = setRedButtonPhysicsBody(redButton:redButtonThree)
        redButtonThree.position = CGPoint(x:0.5,y:-98.5)
        redButtonThree.name = "redButtonThree"
        redButtonThreeLabel = setLabelDefaults()
        redButtonThreeLabel.text = "Opciones (Options)"
        redButtonThree.addChild(redButtonThreeLabel)
        buttonGreen.addChild(redButtonThree)
        
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
        
        creditsLabel = setCreditsLabelDefaults()
        creditsLabel.text = "CONCEPT\n\nDESIGN\n\n\n\nORIGINAL ART\n\n\n\nPROGRAMMING"
        creditsLabel.position = CGPoint(x:50, y:202)
        
        creditsLabelTwo = setCreditsLabelDefaults()
        creditsLabelTwo.text = "Roberto Veléz Benítez\n\nRoberto Veléz Benítez\nManuel Alvarez\nEnrique J. Pizarro\n\nRoberto Veléz Benítez\nManuel Alvarez\nRodrigo Barasorda\n\nEnrique J. Pizarro"
        creditsLabelTwo.fontColor = UIColor.black
        creditsLabelTwo.position = CGPoint(x:160, y:202)
        //creditsLabelTwo.numberOfLines = 13
        creditsLabelTwo.preferredMaxLayoutWidth = 110 //140
        
        creditsSoundMusicLabel = creditsSingleLineLabelDefaults()//Stand alone label set CreditsLabelDefaults() is for multipleline labels
        //creditsSoundMusicLabel.fontSize = 11
        //creditsSoundMusicLabel.fontName = "GillSans-Bold"
        //creditsSoundMusicLabel.fontColor = UIColor.init(red: 0, green: 1, blue: 0.1647, alpha: 1.0)
        creditsSoundMusicLabel.text = "SOUND & MUSIC"
        creditsSoundMusicLabel.position = CGPoint(x:95, y:190)
        
        creditsSoundMusicChildLabel = setCreditsLabelDefaults()
        //creditsSoundMusicChildLabel.fontColor = UIColor.init(red: 0, green: 1, blue: 0.1647, alpha: 1.0)
        creditsSoundMusicChildLabel.text = "1-At the shore\n2-No Frills Salsa-Alternate\n(shortened from original)\n3-Guiton Sketch\n\n1-La Borinqueña\n2-Star Spangled Banner\n\n1-Game Sound Correct\nOrganic Violin\n\n\nCartoon Success Fanfare"
        creditsSoundMusicChildLabel.preferredMaxLayoutWidth = 125
        creditsSoundMusicChildLabel.position = CGPoint(x:69, y:55)
        
        creditsSoundMusicChildLabelTwo = setCreditsLabelDefaults()
        creditsSoundMusicChildLabelTwo.text = "\nKevin MacLeod\n(incompetech.com)\n\n\nnationalanthems.info\n\n\n\nBertrof\n(freesound.org)\n\nwww.zapsplat.com"
        creditsSoundMusicChildLabelTwo.fontColor = UIColor.black
        creditsSoundMusicChildLabelTwo.position = CGPoint(x:200, y:55)
        //creditsLabelTwo.numberOfLines = 13
        creditsSoundMusicChildLabelTwo.preferredMaxLayoutWidth = 100 //140
        
        creditsSoundMusicChildLabelThree = licenseLabels()
        //creditsSoundMusicChildLabelThree.fontColor = UIColor.black
        //creditsSoundMusicChildLabelThree.fontSize = 7.5
        //creditsSoundMusicChildLabelThree.fontName = "GillSans-Bold"
        creditsSoundMusicChildLabelThree.text = "All music and sounds used licensed under Creative Commons:\n\t\tBy Attribution 3.0 License\n\t(http://creativecommons.org/licenses/by/3.0/)"
        //creditsSoundMusicChildLabelThree.numberOfLines = 5
        //creditsSoundMusicChildLabelThree.preferredMaxLayoutWidth = 250
        creditsSoundMusicChildLabelThree.position =  CGPoint(x:125, y:20)
        
        creditsMapsImagesLabel = creditsSingleLineLabelDefaults()//Stand alone label set CreditsLabelDefaults() is for multipleline labels
        //creditsSoundMusicLabel.fontSize = 11
        //creditsSoundMusicLabel.fontName = "GillSans-Bold"
        //creditsSoundMusicLabel.fontColor = UIColor.init(red: 0, green: 1, blue: 0.1647, alpha: 1.0)
        creditsMapsImagesLabel.text = "IMAGES AND MAPS"
        creditsMapsImagesLabel.position = CGPoint(x:370, y:295)
        
        creditsMapsImagesChildLabel = setCreditsLabelDefaults()
        creditsMapsImagesChildLabel.fontColor = UIColor.init(red: 0, green: 0.4824, blue: 0.8784, alpha: 1.0)
        creditsMapsImagesChildLabel.text = "\tMap of Puerto Rico\n(All BezierPath shapes based:\nhttps://mapsvg.com/static/maps\n/geo-calibrated/puerto-rico.svg)"
        creditsMapsImagesChildLabel.preferredMaxLayoutWidth = 155
        creditsMapsImagesChildLabel.position = CGPoint(x:325, y:245)
        
        creditsMapsImagesChildLabelTwo = setCreditsLabelDefaults()
        creditsMapsImagesChildLabelTwo.text = "https://mapsvg.com/maps/puerto-rico"
        creditsMapsImagesChildLabelTwo.fontColor = UIColor.black
        creditsMapsImagesChildLabelTwo.position = CGPoint(x:510, y:260)
        //creditsLabelTwo.numberOfLines = 13
        creditsMapsImagesChildLabelTwo.preferredMaxLayoutWidth = 180
        
        creditsMapsImagesChildLabelThree = licenseLabels()
        creditsMapsImagesChildLabelThree.position = CGPoint(x:383, y:215)
        creditsMapsImagesChildLabelThree.text = "\tLicensed under Creative Commons:\nBy Attribution 4.0 International (CC BY 4.0) License\n(https://creativecommons.org/licenses/by/4.0/)"
        
        creditsSpecialThanksLabel = creditsSingleLineLabelDefaults()
        creditsSpecialThanksLabel.text = "SPECIAL THANKS"
        creditsSpecialThanksLabel.position = CGPoint(x:360, y:200)
        
        creditsSpecialThanksChildLabel = setCreditsLabelDefaults()
        creditsSpecialThanksChildLabel.text = "Manuel Alvarez\nRoberto Vélez Benitez\nEnrique J. Pizarro\nRodrigo Barasorda\nJosé Ramos\nMaritza Torres\nNarén Vélez Vendrell\nGabriela Mora Llorens\nCarmine T. Guida\nVladimir Alyamkin\nRaul Rosado\n@Pedro Cacique(https://www.youtube.com/c/PedroCacique)\nHoglund & Pamías\nAtlantic University College\nEpic Games,inc"
        creditsSpecialThanksChildLabel.fontColor = UIColor.black
        creditsSpecialThanksChildLabel.position = CGPoint(x:425, y:43)
        //creditsLabelTwo.numberOfLines = 13
        creditsSpecialThanksChildLabel.preferredMaxLayoutWidth = 280 //140
        
        creditsSpecialThanksChildLabelTwo = licenseLabels()
        creditsSpecialThanksChildLabelTwo.position = CGPoint(x:422, y:10)
        creditsSpecialThanksChildLabelTwo.text = "Mapaclick © 2019 MAPACLICK All rights reserved\nMapaclick uses Swift© programming language developed by Apple© inc\n and Spritekit© framework developed by Apple© inc"
        creditsSpecialThanksChildLabelTwo.preferredMaxLayoutWidth = 280
        
        //recuadro donde se desplegan los objetos concernientes a elegir mapa y ordern
        mapOrderOldPaperbackground = mapOrderOldPaperDropdownBG()
        
        //label con instrucciones al tope derecho
        mapOrderTopLabel = mapOrderTwoLineLabelDefaults()
        mapOrderTopLabel.position = CGPoint(x:110, y:58)
        mapOrderTopLabel.text = "Seleccciona el mapa en el menú desplegable\n(Select the map from the drop-downmenu)"
        mapOrderOldPaperbackground.addChild(mapOrderTopLabel)
        
        //segundo label con instrucciones
        mapOrderMiddleLabel = mapOrderTwoLineLabelDefaults()
        mapOrderMiddleLabel.position = CGPoint(x:72, y:-15)
        mapOrderMiddleLabel.text = "Selecciona el orden de los objetivos en el menú desplegable\n\t   (Select the target order from the drop-downmenu)"
        mapOrderOldPaperbackground.addChild(mapOrderMiddleLabel)
        
        //background gris en el primer dropdown tab
        dropDownLabelBG = dropDownLabelBackground()
        dropDownLabelBG.name = "dropDownLabelBG"
        dropDownLabelBG.position = CGPoint(x:100,y:50)
        mapOrderOldPaperbackground.addChild(dropDownLabelBG)
        
        //flecha en el dropdown tab
        dropDownArrow = dropDownArrowBPToSKSpritenode()
        dropDownArrow.position = CGPoint(x:80,y:-0.5)
        dropDownLabelBG.addChild(dropDownArrow)
        
        //label en el primer dropdown tab
        dropDownArrowLabel = dropDownArrowLabelDefaults()
        dropDownArrowLabel.name = "dropDownArrowLabel"
        dropDownArrowLabel.position = CGPoint(x:-55.0,y:-4.5)
        dropDownArrowLabel.text = "Puerto Rico"
        dropDownArrowLabel.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:179, height:9.5), center: CGPoint(x:55, y: 4.5))
        dropDownArrowLabel.physicsBody?.isDynamic = false
        dropDownLabelBG.addChild(dropDownArrowLabel)
        
        //label a la izquierda con la palabra Mapa(Map)
        mapOrderSingleLineLabel = creditsSingleLineLabelDefaults()
        mapOrderSingleLineLabel.fontSize = 14
        mapOrderSingleLineLabel.text = "Mapa (Map)"
        mapOrderOldPaperbackground.addChild(mapOrderSingleLineLabel)
        mapOrderSingleLineLabel.position = CGPoint(x:-165, y:46)
        
        //segundo label a la izquierda con la palabra Orden(Order)
        mapOrderSingleLineLabelTwo = creditsSingleLineLabelDefaults()
        mapOrderSingleLineLabelTwo.fontSize = 14
        mapOrderSingleLineLabelTwo.text = "Orden (Order)"
        mapOrderOldPaperbackground.addChild(mapOrderSingleLineLabelTwo)
        mapOrderSingleLineLabelTwo.position = CGPoint(x:-156, y:-25.0)
        //dropDownLabelBG = dropDownLabelBackground()
        //dropDownLabelBG.position = CGPoint(x:120,y:65)
        
        //Menu a desplegarse cuando oprimimos el dropdown tab superior
        mapOrderCountryDropDownMenu = mapOrderCountryDropDownMenuSpriteNode()
        mapOrderCountryDropDownMenu.position = CGPoint(x:434,y:215)
        
        //Background amarillo para el label que dice "Puerto Rico" en el menu
        mapOrderCountryDropDownMenuYellowBG = dropDownMenuLabelBackground()
        mapOrderCountryDropDownMenuYellowBG.position = CGPoint(x:0.0,y:9.7)
        //mapOrderCountryDropDownMenu.addChild(mapOrderCountryDropDownMenuYellowBG)
        
        //Label en el menu "Puerto Rico"
        dropDownMenuLabelPR = dropDownArrowLabelDefaults()
        dropDownMenuLabelPR.name = "dropDownMenuLabelPR"
        dropDownMenuLabelPR.position = CGPoint(x:-56,y:4.5)
        dropDownMenuLabelPR.fontSize = 10.5
        dropDownMenuLabelPR.text = "Puerto Rico"
        dropDownMenuLabelPR.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:179, height:9.5), center: CGPoint(x:56, y: 4.5))
        dropDownMenuLabelPR.physicsBody?.isDynamic = false
        //mapOrderCountryDropDownMenu.addChild(dropDownMenuLabelPR)
        
        //dropdown tab(con la flecha hacia abajo) en el dropdown menu inferior(orden alfabetico/azar)
        dropDownLabelBGTwo = dropDownLabelBackground()
        dropDownLabelBGTwo.position = CGPoint(x:100,y:-23)
        mapOrderOldPaperbackground.addChild(dropDownLabelBGTwo)
        
        //esto genera el dibujo de la flechita en el dropdown menu inferior(orden alfabetico/azar)
        dropDownArrowTwo = dropDownArrowBPToSKSpritenode()
        dropDownArrowTwo.position = CGPoint(x:80,y:-0.5)
        dropDownLabelBGTwo.addChild(dropDownArrowTwo)//se anade como hijo del dropdown tab
         
        //Label que se coloca sobre dropdown tab inferior(orden alfabetico/azar)
        dropDownArrowLabelTwo = dropDownArrowLabelDefaults()
        dropDownArrowLabelTwo.name = "dropDownArrowLabelTwo"
        dropDownArrowLabelTwo.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:179, height:9.5), center: CGPoint(x:26, y: 4.5))
        dropDownArrowLabelTwo.physicsBody?.isDynamic = false
        dropDownArrowLabelTwo.position = CGPoint(x:-26.0,y:-4.5)//posicionamiento con respecto al parent dropDownLabelBGTwo
        //dropDownArrowLabelTwo.preferredMaxLayoutWidth = 300
        dropDownArrowLabelTwo.text = "Alfabético (Alphabetic)"//default text
        dropDownLabelBGTwo.addChild(dropDownArrowLabelTwo)
        
        //La casilla gris que se desplega cuando oprimimos en dropDownArrowLabelTwo(dropdown orden alfabetico/azar)
        orderDropDownMenu = mapOrderCountryDropDownMenuSpriteNodeTwo()
        orderDropDownMenu.position = CGPoint(x:434,y:142)
        
        //Background amarillo para el label "Alfabetico"
        orderDropDownMenuYellowBG = dropDownMenuLabelBackground()
        orderDropDownMenuYellowBG.position = CGPoint(x:0.0,y:7)
        orderDropDownMenuYellowBG.zPosition = 0
        //orderDropDownMenu.addChild(orderDropDownMenuYellowBG)
        
        //primer label dentro de orderDropDownMenu
        orderDropDownMenuLabel = dropDownArrowLabelDefaults()
        orderDropDownMenuLabel.name = "orderDropDownMenuLabel"
        orderDropDownMenuLabel.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:179, height:9.5), center: CGPoint(x:34.5, y: 4.5))
        orderDropDownMenuLabel.physicsBody?.isDynamic = false
        orderDropDownMenuLabel.position = CGPoint(x:-33,y:2)
        orderDropDownMenuLabel.fontSize = 10.5
        orderDropDownMenuLabel.text = "Alfabético (Alphabetic)"
        //orderDropDownMenu.addChild(orderDropDownMenuLabel)
        
        //Background amarillo para el label "Al Azar (Random)"
        orderDropDownMenuYellowBGTwo = dropDownMenuLabelBackground()
        orderDropDownMenuYellowBGTwo.position = CGPoint(x:0.0,y:-7.0)
        orderDropDownMenuYellowBGTwo.zPosition = 0
        //orderDropDownMenu.addChild(orderDropDownMenuYellowBGTwo)
        
        //segundo label dentro de orderDropDownMenu
        orderDropDownMenuLabelTwo = dropDownArrowLabelDefaults()
        orderDropDownMenuLabelTwo.name = "orderDropDownMenuLabelTwo"
        orderDropDownMenuLabelTwo.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:177, height:9.5), center: CGPoint(x:47.5, y: 4.5))
        orderDropDownMenuLabelTwo.physicsBody?.isDynamic = false
        orderDropDownMenuLabelTwo.position = CGPoint(x:-45,y:-12)
        //orderDropDownMenuLabelTwo.zposition = 1
        orderDropDownMenuLabelTwo.fontSize = 10.5
        //orderDropDownMenuLabelTwo.fontColor = .white
        orderDropDownMenuLabelTwo.text = "Al Azar (Random)"
        //orderDropDownMenu.addChild(orderDropDownMenuLabelTwo)
        
        //boton verde
        mapOrderGreenButton = setMapOrderGreenButton()
        mapOrderGreenButton.name = "mapOrderGreenButton"
        mapOrderGreenButton.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:mapOrderGreenButton.size.width, height:mapOrderGreenButton.size.height), center: CGPoint(x:0.5, y: 0.5))
        mapOrderGreenButton.physicsBody?.isDynamic = false
        mapOrderGreenButton.position = CGPoint(x:-118, y:-67)
        mapOrderOldPaperbackground.addChild(mapOrderGreenButton)
        
        //boton rojo
        mapOrderRedButton = setMapOrderRedButton()
        mapOrderRedButton.name = "mapOrderRedButton"
        mapOrderRedButton.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:mapOrderRedButton.size.width, height:mapOrderRedButton.size.height), center: CGPoint(x:0.5, y: 0.5))
        mapOrderRedButton.physicsBody?.isDynamic = false
        mapOrderRedButton.position = CGPoint(x:-185, y:-67)
        mapOrderOldPaperbackground.addChild(mapOrderRedButton)
        
        gameModeSelectionOldPaperbackground = mapOrderOldPaperDropdownBG()
        
        gameModeSelectionGreenButton = modeSelectionGreenButton()
        gameModeSelectionGreenButton.name = "gameModeSelectionGreenButton"
        gameModeSelectionGreenButton.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:gameModeSelectionGreenButton.size.width, height:gameModeSelectionGreenButton.size.height), center: CGPoint(x:0.5, y: 0.5))
        gameModeSelectionGreenButton.physicsBody?.isDynamic = false
        gameModeSelectionGreenButton.position = CGPoint(x:-90, y:50)
        gameModeSelectionOldPaperbackground.addChild(gameModeSelectionGreenButton)
        
        gameModeSelectionLabel = modeSelectionLabelDefaults()
        gameModeSelectionLabel.text = "Juega con un mapa en blanco.\nTiempo más rápido se guardará.\n  (Play with a blank map.\n  Fastest time will be saved)"
        gameModeSelectionLabel.position = CGPoint(x:-87,y:-25)
        gameModeSelectionOldPaperbackground.addChild(gameModeSelectionLabel)
        
        gameModeSelectionBlueButton = modeSelectionBlueButton()
        gameModeSelectionBlueButton.name = "gameModeSelectionBlueButton"
        gameModeSelectionBlueButton.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:gameModeSelectionBlueButton.size.width, height:gameModeSelectionBlueButton.size.height), center: CGPoint(x:0.5, y: 0.5))
        gameModeSelectionBlueButton.physicsBody?.isDynamic = false
        gameModeSelectionBlueButton.position = CGPoint(x:90, y:50)
        gameModeSelectionOldPaperbackground.addChild(gameModeSelectionBlueButton)
        
        gameModeSelectionLabelTwo = modeSelectionLabelDefaults()
        gameModeSelectionLabelTwo.text = "Juega con nombres ya en el mapa.\n\t Tiempo no se guardará.\n(Play with names already on the map.\n\tTime will not be saved)"
        gameModeSelectionLabelTwo.preferredMaxLayoutWidth = 160
        gameModeSelectionLabelTwo.position = CGPoint(x:105,y:-26)
        gameModeSelectionOldPaperbackground.addChild(gameModeSelectionLabelTwo)
        
        gameModeSelectionRedButton = modeSelectionRedButton()
        gameModeSelectionRedButton.name = "gameModeSelectionRedButton"
        gameModeSelectionRedButton.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:gameModeSelectionRedButton.size.width, height:gameModeSelectionRedButton.size.height), center: CGPoint(x:0.5, y: 0.5))
        gameModeSelectionRedButton.physicsBody?.isDynamic = false
        gameModeSelectionRedButton.position = CGPoint(x:0,y:-55)
        gameModeSelectionOldPaperbackground.addChild(gameModeSelectionRedButton)
        
        bestTimesRectangleBp = TestClass().createRectangle()
        bestTimesRectangleBpToSKSpritenode = bestTimesRectangleBezierPathToSKSpriteNode(bpRectangle: bestTimesRectangleBp)
        
        bestTimesToplabel = mapOrderTwoLineLabelDefaults()
        bestTimesToplabel.fontSize = 14
        bestTimesToplabel.text = "Mejores Tiempos\n   (Best Times)"
        bestTimesToplabel.position = CGPoint(x:0.5,y:60)
        bestTimesRectangleBpToSKSpritenode.addChild(bestTimesToplabel)
        
        bestTimesPrAlphabeticlabel = bestTimeslabel()
        bestTimesPrAlphabeticlabel.text = "Puerto Rico(Alfabético/Alphabetic):"
        bestTimesPrAlphabeticlabel.position = CGPoint(x:-70,y:35)
        bestTimesRectangleBpToSKSpritenode.addChild(bestTimesPrAlphabeticlabel)
        
        bestTimesPrRandomlabel = bestTimeslabel()
        bestTimesPrRandomlabel.text = "Puerto Rico(Al Azar/Random):"
        bestTimesPrRandomlabel.position = CGPoint(x:-57,y:15)
        bestTimesRectangleBpToSKSpritenode.addChild(bestTimesPrRandomlabel)
        
        bestTimesPrAlphabeticScorelabel = bestTimesPrAlphabeticScore()
        bestTimesPrAlphabeticScorelabel.position = CGPoint(x:120,y:33)
        bestTimesRectangleBpToSKSpritenode.addChild(bestTimesPrAlphabeticScorelabel)
        
        bestTimesPrRandomScorelabel = bestTimesPrRandomScore()
        bestTimesPrRandomScorelabel.position = CGPoint(x:120,y:15)
        bestTimesRectangleBpToSKSpritenode.addChild(bestTimesPrRandomScorelabel)
        
        opcionesAudioLabel = opcionesLabelDefaults()
        opcionesAudioLabel.fontName = "GillSans-Bold"
        opcionesAudioLabel.text = "Audio"
        opcionesAudioLabel.position = CGPoint(x:345,y:225)
        
        opcionesMusicaLabel = opcionesLabelDefaults()
        opcionesMusicaLabel.text = "Música (Music)"
        opcionesMusicaLabel.position = CGPoint(x:-17,y:-20.5)
        opcionesAudioLabel.addChild(opcionesMusicaLabel)
        
        opcionesSonidosLabel = opcionesLabelDefaults()
        opcionesSonidosLabel.text = "Sonidos (Sound)"
        opcionesSonidosLabel.position = CGPoint(x:-11.5,y:-45)
        opcionesAudioLabel.addChild(opcionesSonidosLabel)
        
        opcionesCheckbox = opcionesCheckBoxesBpToSpritenode()
        opcionesCheckbox.name = "opcionesCheckbox"
        opcionesCheckbox.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:opcionesCheckbox.size.width, height:opcionesCheckbox.size.height), center: CGPoint(x:0.5, y: 0.5))
        opcionesCheckbox.physicsBody?.isDynamic = false
        opcionesCheckbox.position = CGPoint(x:50,y:-16)
        opcionesAudioLabel.addChild(opcionesCheckbox)
        
        opcionesCheckmark = opcionesCheckmarkBpToSpritenode()
        opcionesCheckmark.position = CGPoint(x:0.5,y:0.5)//(x:50,y:-16)
        /*La siguiente linea es para evitar que si usuario dio uncheck o por el contrario check antes de comenzar el juego y sale del juego como es un cambio de escena, esta escena pues va a anadir de nuevo el check mark que inicialmente quizas el usuario quito pq no queria musica de fondo o sonido de juego, de modo que con esta linea prevalece la seleccion del usuario, aun haya cambio de escena(para ver esto eliminar el if
         )**/
        if StartMenu.backgroundMusicOn == true{
            opcionesCheckbox.addChild(opcionesCheckmark)
        }
        
        opcionesCheckboxTwo = opcionesCheckBoxesBpToSpritenode()
        opcionesCheckboxTwo.name = "opcionesCheckboxTwo"
        opcionesCheckboxTwo.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:opcionesCheckboxTwo.size.width, height:opcionesCheckboxTwo.size.height), center: CGPoint(x:0.5, y: 0.5))
        opcionesCheckboxTwo.physicsBody?.isDynamic = false
        opcionesCheckboxTwo.position = CGPoint(x:50,y:-40)
        opcionesAudioLabel.addChild(opcionesCheckboxTwo)
        
        opcionesCheckmarkTwo = opcionesCheckmarkBpToSpritenode()
        opcionesCheckmarkTwo.position = CGPoint(x:0.5,y:0.5)//(x:50,y:-40)
        /*La siguiente linea es para evitar que si usuario dio uncheck o por el contrario check antes de comenzar el juego y sale del juego como es un cambio de escena, esta escena pues va a anadir de nuevo el check mark que inicialmente quizas el usuario quito pq no queria musica de fondo o sonido de juego, de modo que con esta linea prevalece la seleccion del usuario, aun haya cambio de escena(para ver esto eliminar el if
        )**/
        if StartMenu.gamePlaySoundOn == true{
            opcionesCheckboxTwo.addChild(opcionesCheckmarkTwo)
        }
        
        creditosButton = creditosButtonBpDrawToSKSpriteNode()
        creditosButton.name = "creditosButton"
        creditosButton.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:creditosButton.size.width, height:creditosButton.size.height), center: CGPoint(x:0.5, y: 0.5))
        creditosButton.physicsBody?.isDynamic = false
        creditosButton.position = CGPoint(x:0.5,y:-65)
        opcionesAudioLabel.addChild(creditosButton)
        
        creditButtonLabel = setLabelDefaults()
        creditButtonLabel.text = "Creditos (Credits)"
        creditButtonLabel.position = CGPoint(x:0.5,y:-5.5)
        creditosButton.addChild(creditButtonLabel)
        
        
        
        elMorro.addChild(mapaClickBanner)
        oldPaperBorderTexture.addChild(elMorro)
        //elMorro.addChild(buttonGreen)
        
        //elMorro.addChild(redButtonOne)
        //elMorro.addChild(redButtonTwo)
       // elMorro.addChild(redButtonThree)
        self.addChild(oldPaperBorderTexture)
        self.addChild(buttonGreen)
        //self.addChild(redButtonOne)
        //self.addChild(redButtonTwo)
        //self.addChild(redButtonThree)
        //self.addChild(creditsLabel)
        //self.addChild(creditsLabelTwo)
        /*self.addChild(creditsSoundMusicLabel)
        self.addChild(creditsSoundMusicChildLabel)
        self.addChild(creditsSoundMusicChildLabelTwo)
        self.addChild(creditsSoundMusicChildLabelThree)
        self.addChild(creditsMapsImagesLabel)
        self.addChild(creditsMapsImagesChildLabel)
        self.addChild(creditsMapsImagesChildLabelTwo)
        self.addChild(creditsMapsImagesChildLabelThree)
        self.addChild(creditsSpecialThanksLabel)
        self.addChild(creditsSpecialThanksChildLabel)
        self.addChild(creditsSpecialThanksChildLabelTwo)*/
        //self.addChild(dropDownArrow)
        //self.addChild(mapOrderOldPaperbackground)
        //self.addChild(gameModeSelectionOldPaperbackground)
        //self.addChild(orderDropDownMenu)
        //self.addChild(orderDropDownMenu)
        //self.addChild(dropDownLabelBG)
        //self.addChild(bestTimesRectangleBpToSKSpritenode)
        //self.addChild(opcionesAudioLabel)
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
       let view = SKView(frame: UIScreen.main.bounds)
       let texture = view.texture(from: shapeNode)!
       let creditosRedButton = SKSpriteNode(texture: texture)

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
        let view = SKView(frame: UIScreen.main.bounds)
        let texture = view.texture(from: shapeNode)!
        let checkmark = SKSpriteNode(texture: texture)
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
        let view = SKView(frame: UIScreen.main.bounds)
        let texture = view.texture(from: shapeNode)!
        let checkbox = SKSpriteNode(texture: texture)

        
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
        
    func bestTimesRectangleBezierPathToSKSpriteNode(bpRectangle: UIBezierPath)-> SKSpriteNode{//Big island frame properties
           
        let shapeNode = SKShapeNode(path:bpRectangle.cgPath)
        shapeNode.strokeColor = .black
        shapeNode.lineWidth = 2.0
        let view = SKView(frame: UIScreen.main.bounds)
        let texture = view.texture(from: shapeNode)!
        let rectangleNode = SKSpriteNode(texture: texture)
        rectangleNode.position = CGPoint(x:325, y:190)
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
        let view = SKView(frame: UIScreen.main.bounds)
        let texture = view.texture(from: shapeNode)!
        let redbutton = SKSpriteNode(texture: texture)

        let labelOne = SKLabelNode()
        labelOne.fontName = "AvenirNext-Bold"
        labelOne.fontSize = 11
        labelOne.text = " Volver\n(Return)"
        labelOne.numberOfLines = 2
        labelOne.position = CGPoint(x:0, y:-17)
        //buttonOneLabelTwo.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
        redbutton.addChild(labelOne)
        
        /*let labelTwo = SKLabelNode()
        labelTwo.fontName = "AvenirNext-Bold"
        labelTwo.fontSize = 13
        labelTwo.text = "(PLAY)"
        labelTwo.position = CGPoint(x:0.5, y:-13)
        //buttonOneLabelTwo.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
        redbutton.addChild(labelTwo)*/
        
        return redbutton
        
                
    }
    
    func modeSelectionBlueButton()->SKSpriteNode{
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
        //Drawing to Shapenode
        let shapeNode = SKShapeNode(path:path.cgPath)
        shapeNode.lineWidth = 0.5
        shapeNode.strokeColor = UIColor.init(red: 0, green: 0.6588, blue: 0.9882, alpha: 1.0)//c1d3c8
        shapeNode.fillColor = UIColor.init(red: 0, green: 0.6588, blue: 0.9882, alpha: 1.0)
        //Shapenode To SKSpriteNode
        let view = SKView(frame: UIScreen.main.bounds)
        let texture = view.texture(from: shapeNode)!
        let button = SKSpriteNode(texture: texture)
        //greenbutton.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        //redButton.position = CGPoint(x:350, y:200)
        //greenbutton.zPosition = 2
        let labelOne = SKLabelNode()
        labelOne.fontName = "AvenirNext-Bold"
        labelOne.fontSize = 13
        labelOne.text = "  Modo de Práctica \n   (Practice Mode)"
        labelOne.numberOfLines = 2
        labelOne.position = CGPoint(x:0.5, y:-19.5)
        //labelOne.position = CGPoint(x:0, y:-13)
        //buttonOneLabelTwo.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
        button.addChild(labelOne)
        
        /*let labelTwo = SKLabelNode()
        labelTwo.fontName = "AvenirNext-Bold"
        labelTwo.fontSize = 10
        labelTwo.text = "(Return)"
        labelTwo.position = CGPoint(x:0.5, y:-10)
        //buttonOneLabelTwo.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
        redButton.addChild(labelTwo)*/
        
        return button
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
    
    func modeSelectionGreenButton()->SKSpriteNode{
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
        //Drawing to Shapenode
        let shapeNode = SKShapeNode(path:path.cgPath)
        shapeNode.lineWidth = 0.5
        shapeNode.strokeColor = UIColor.init(red: 0.2706, green: 0.9098, blue: 0.5882, alpha: 1.0)//c1d3c8
        shapeNode.fillColor = UIColor.init(red: 0.2706, green: 0.9098, blue: 0.5882, alpha: 1.0)
        //Shapenode To SKSpriteNode
        let view = SKView(frame: UIScreen.main.bounds)
        let texture = view.texture(from: shapeNode)!
        let button = SKSpriteNode(texture: texture)
        //greenbutton.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        //redButton.position = CGPoint(x:350, y:200)
        //greenbutton.zPosition = 2
        let labelOne = SKLabelNode()
        labelOne.fontName = "AvenirNext-Bold"
        labelOne.fontSize = 13
        labelOne.text = "  Modo de Reto \n(Challenge Mode)"
        labelOne.numberOfLines = 2
        labelOne.position = CGPoint(x:0.5, y:-19.5)
        //labelOne.position = CGPoint(x:0, y:-13)
        //buttonOneLabelTwo.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
        button.addChild(labelOne)
        
        /*let labelTwo = SKLabelNode()
        labelTwo.fontName = "AvenirNext-Bold"
        labelTwo.fontSize = 10
        labelTwo.text = "(Return)"
        labelTwo.position = CGPoint(x:0.5, y:-10)
        //buttonOneLabelTwo.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
        redButton.addChild(labelTwo)*/
        
        return button
    }
    
    func dropDownArrowLabelDefaults()->SKLabelNode{
        let label = SKLabelNode()
        label.fontName = "Avenir-Medium"
        label.fontSize = 12
        label.fontColor = UIColor.black
        
        return label
    }
    
    func mapOrderTwoLineLabelDefaults()->SKLabelNode{
      let label = SKLabelNode()
      label.fontName = "GillSans-SemiBold"
      label.numberOfLines = 3
      label.fontColor = .black
      label.fontSize = 11
      
      return label
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
    
    /*func creditsMapsImagesChildLabelText(label:SKLabelNode)->SKLabelNode{
        label.text = "\tMap of Puerto Rico\n(All BezierPath shapes based:\nhttps://mapsvg.com/static/maps\n/geo-calibrated/puerto-rico.svg)"
        return label
    }*/
    
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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch = touches.first!//Guarda toque de pantalla
        let touchLocation = touch.location(in: self)//Define el espacio en donde van a tomar efecto los toques de pantalla en este caso la vista StartScene
        touchedNode = self.physicsWorld.body(at:touchLocation)//Se define que el toque de pantalla tomara efecto cuando el mismo entre en contacto con un SKphysics body, dentro de la vista StartScene
        
        if (touchedNode != nil){
            
            if(buttonGreen.name == touchedNode?.node?.name){
                buttonGreen.removeFromParent()
                self.addChild(mapOrderOldPaperbackground)
                
            }
            
            else if (redButtonOne.name == touchedNode?.node?.name){
                buttonGreen.removeFromParent()
                self.addChild(bestTimesRectangleBpToSKSpritenode)
                self.addChild(returnVolverRedButton)
            }
            
            
            else if (redButtonTwo.name == touchedNode?.node?.name){
                buttonGreen.removeFromParent()
                //redButtonOne.removeFromParent()
                //redButtonTwo.removeFromParent()
                //redButtonThree.removeFromParent()
                self.addChild(instructionsEspanolLabel)
                self.addChild(returnVolverRedButton)

            }
            
            else if (redButtonThree.name == touchedNode?.node?.name){
                buttonGreen.removeFromParent()
                self.addChild(opcionesAudioLabel)
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
                if opcionesAudioLabel.parent != nil{
                    opcionesAudioLabel.removeFromParent()
                }
                if bestTimesRectangleBpToSKSpritenode.parent != nil{
                    bestTimesRectangleBpToSKSpritenode.removeFromParent()
                }
                
                self.addChild(buttonGreen)
                //self.addChild(redButtonOne)
                //self.addChild(redButtonTwo)
                //self.addChild(redButtonThree)
            }
            /*La ejecucion va a entrar en uno de los proximos dos else if statements si se presiona el boton verde y se encuentra desplegado alguno de los dos drop down menu */
            else if mapOrderGreenButton.name == touchedNode?.node?.name && orderDropDownMenu.parent != nil{
                orderDropDownMenu.removeFromParent()
                dropDownLabelBGTwo.addChild(dropDownArrowLabelTwo)
            }
                
            else if mapOrderGreenButton.name == touchedNode?.node?.name && mapOrderCountryDropDownMenu.parent != nil {
                mapOrderCountryDropDownMenu.removeFromParent()
                dropDownLabelBG.addChild(dropDownArrowLabel)
            }
            /*la ejecucion entra aqui para movernos a LA VISTA PARA ESCOGER EL MODO DE JUEGO cuando presionamos boton verde**/
            else if(mapOrderGreenButton.name == touchedNode?.node?.name){
                mapOrderOldPaperbackground.removeFromParent()
                self.addChild(gameModeSelectionOldPaperbackground)
            }
            
            /*La ejecucion va a entrar en uno de los proximos dos else if statements si se presiona el boton rojo y se encuentra desplegado alguno de los dos drop down menu */
            else if mapOrderRedButton.name == touchedNode?.node?.name && orderDropDownMenu.parent != nil{
                orderDropDownMenu.removeFromParent()
                dropDownLabelBGTwo.addChild(dropDownArrowLabelTwo)
            }
                
            else if mapOrderRedButton.name == touchedNode?.node?.name && mapOrderCountryDropDownMenu.parent != nil {
                mapOrderCountryDropDownMenu.removeFromParent()
                dropDownLabelBG.addChild(dropDownArrowLabel)
            }
            /*la ejecucion entra aqui para regresar a la pagina principal cuando presionamos boton rojo**/
            else if mapOrderRedButton.name == touchedNode?.node?.name{
                mapOrderOldPaperbackground.removeFromParent()
                self.addChild(buttonGreen)
                //self.addChild(redButtonOne)
                //self.addChild(redButtonTwo)
                //self.addChild(redButtonThree)
            }
            /*La ejecucion va a entrar aqui cuando presiono dropDownArrowLabel pero orderDropDownMenu se encuentra desplegado. En esencia reescribe el label dropDownArrowLabelTwo
                 con la seleccion que se encuentra identificada por orderDropDownMenuYellowBG o orderDropDownMenuYellowBGTwo devuelve(anade) y remueve orderDropDownMenu**/
            else if (dropDownArrowLabel.name == touchedNode?.node?.name && orderDropDownMenu.parent != nil){
                if orderDropDownMenuYellowBG.parent != nil {
                    dropDownArrowLabelTwo.text = orderDropDownMenuLabel.text
                }
                else if orderDropDownMenuYellowBGTwo.parent != nil{
                    dropDownArrowLabelTwo.text = orderDropDownMenuLabelTwo.text
                }
                
                orderDropDownMenu.removeFromParent()
                dropDownLabelBGTwo.addChild(dropDownArrowLabelTwo)
            }
                
            else if (dropDownArrowLabel.name == touchedNode?.node?.name){
                
                dropDownArrowLabel.removeFromParent()
                self.addChild(mapOrderCountryDropDownMenu)
                
                /*el if statement siguiente se activa si el dropdown menu de orden(alfabetico/azar) se encuentra desplegado cerrando el mismo y restituyendo el label dropDownArrowLabelTwo
                el cual se removio cuando previamente presionamos dropDownArrowLabelTwo para desplegar orderDropDownMenu, pero que a este momento el usuario no hizo seleccion mientras desplegaba
                 mapOrderCountryDropDownMenu.*/
                /*if orderDropDownMenu.parent != nil{
                    
                    /*Si orderDropDownMenuYellowBG se encuentra desplegado se va a utilizar el texto de orderDropDownMenuLabel("Alfabetico (Alphabetic)") en el label del dropdown tab osea dropDownArrowLabelTwo
                    , por el contrario si se encontrara desplegado orderDropDownMenuYellowBGTwo se va a utilizar el texto de orderDropDownMenuLabelTwo  */
                    if orderDropDownMenuYellowBG.parent != nil {
                        dropDownArrowLabelTwo.text = orderDropDownMenuLabel.text
                    }
                    else if orderDropDownMenuYellowBGTwo.parent != nil{
                        dropDownArrowLabelTwo.text = orderDropDownMenuLabelTwo.text
                    }
                    
                    orderDropDownMenu.removeFromParent()
                    dropDownLabelBGTwo.addChild(dropDownArrowLabelTwo)
                }*/
                /*El siguiente bloque va anadir a la vista el BG amarillo y luego el label "Puerto Rico" sin embargo como se anaden como hijos de mapOrderCountryDropDownMenu y estos dos no se remueven sino que que removemos al Parent no se tienen que volver a anadir, por ello que si eliminamos los statements:  && mapOrderCountryDropDownMenuYellowBG.parent == nil && dropDownMenuLabelPR.parent == nil nos da el error de que estamos tratando de anadir un objeto que ya tiene parent*/
                if dropDownArrowLabel.text == dropDownMenuLabelPR.text && mapOrderCountryDropDownMenuYellowBG.parent == nil && dropDownMenuLabelPR.parent == nil{
                   
                    mapOrderCountryDropDownMenu.addChild(mapOrderCountryDropDownMenuYellowBG)
                    mapOrderCountryDropDownMenu.addChild(dropDownMenuLabelPR)
                    
                }

            }
            
            else if (dropDownMenuLabelPR.name == touchedNode?.node?.name){
                dropDownArrowLabel.text = dropDownMenuLabelPR.text
                mapOrderCountryDropDownMenu.removeFromParent()
                dropDownLabelBG.addChild(dropDownArrowLabel)
   
            }
            /*La ejecucion va a entrar aqui cuando oprimimos dropdropDownArrowLabelTwo pero mapOrderCountryDropDownMenu se encuentra desplegado,
                 en esencia se cierra mapOrderCountryDropDownMenu y se devuelve dropDownArrowLabel al dropDown tab */
            else if (dropDownArrowLabelTwo.name == touchedNode?.node?.name && mapOrderCountryDropDownMenu.parent != nil){
                 //Antes de cerrar el dropdown menu anadimos el text al label que se va a anadir al dropdown tab
                if mapOrderCountryDropDownMenuYellowBG.parent != nil {
                    dropDownArrowLabel.text = dropDownMenuLabelPR.text
                }
                
                mapOrderCountryDropDownMenu.removeFromParent()
                dropDownLabelBG.addChild(dropDownArrowLabel)/*Esta linea luego de cerrar el menu(mapOrderCountryDropDownMenu) devuelve el label que habia sido removido cuando inicialmente
                se removio el label cuando presionamos en dropDownArrowLabel*/
            }
            
            else if (dropDownArrowLabelTwo.name == touchedNode?.node?.name){
                //remuevo el label del dropdown tab
                dropDownArrowLabelTwo.removeFromParent()
                
                //La ejecucion entra en este bloque si el menu de pais se encuentra desplegado cuando presionamos dropDownArrowLabelTwo
                /*if mapOrderCountryDropDownMenu.parent != nil{
                    //orderDropDownMenu.removeFromParent()
                    //Antes de cerrar el dropdown menu anadimos el text al label que se va a anadir al dropdown tab
                    if mapOrderCountryDropDownMenuYellowBG.parent != nil {
                        dropDownArrowLabel.text = dropDownMenuLabelPR.text
                    }
                    
                    mapOrderCountryDropDownMenu.removeFromParent()
                    dropDownLabelBG.addChild(dropDownArrowLabel)/*Esta linea luego de cerrar el menu(mapOrderCountryDropDownMenu) devuelve el label que habia sido removido cuando inicialmente
                     se removio el label cuando presionamos en dropDownArrowLabel*/
                }*/
                
                self.addChild(orderDropDownMenu)
                
                /*Aqui la ejecucion va a entrar la primera vez salvo que los children aqui anadidos no se vuelven a remover sino que si necesitaramos removerlos seria removiendo el parent
                 y por ello que se utilice la condicion .parent == nil, para prevenir que sean anadidos nuevamente.
                 LA EJECUCION ENTRA EN UNO DE LOS IF SIGUIENTES CUANDO EL TEXTO EN EL LABEL(DROPDOWN TAB) ES EL MISMO QUE EL LABEL EN EL MENU CON BG AMARILLO(POR DEFAULT VA A ENTRAR AQUI LA PRIMERA VEZ QUE PRESIONAMOS: dropDownArrowLabelTwo)**/
                if dropDownArrowLabelTwo.text == orderDropDownMenuLabel.text && orderDropDownMenuYellowBG.parent == nil && orderDropDownMenuLabel.parent == nil && orderDropDownMenuLabelTwo.parent == nil{
                   
                    orderDropDownMenu.addChild(orderDropDownMenuYellowBG)
                    orderDropDownMenu.addChild(orderDropDownMenuLabel)
                    orderDropDownMenuLabelTwo.fontColor = .white
                    orderDropDownMenu.addChild(orderDropDownMenuLabelTwo)
                    
                }
                //ACA VA A ENTRAR CUANDO EL BG AMARILLO SE ENCUENTRA EN EL SEGUNDO LABEL EN EL MENU Y SU TEXTO ES IGUAL AL DEL DROP DOWN TAB
                else if dropDownArrowLabelTwo.text == orderDropDownMenuLabelTwo.text && orderDropDownMenuYellowBGTwo.parent == nil && orderDropDownMenuLabelTwo.parent == nil && dropDownArrowLabelTwo.parent == nil {
                    
                    orderDropDownMenu.addChild(orderDropDownMenuYellowBGTwo)
                    orderDropDownMenu.addChild(orderDropDownMenuLabelTwo)
                    orderDropDownMenuLabel.fontColor = .white
                    orderDropDownMenu.addChild(orderDropDownMenuLabel)
                }
            }
            
            else if (orderDropDownMenuLabel.name == touchedNode?.node?.name){
                /*esta es la condicion default(cuando entramos a esta pantalla para un nuevo juego o por primera vez, por lo que no tenemos que anadir el texto al label pq
                 son iguales como se predetermino)*/
                if orderDropDownMenuLabel.text == dropDownArrowLabelTwo.text{
                    orderDropDownMenu.removeFromParent()
                    //dropDownArrowLabelTwo.text = orderDropDownMenuLabel.text
                    dropDownLabelBGTwo.addChild(dropDownArrowLabelTwo)//como se habia removido en el bloque anterior tenemos que volver a anadir al redering
                }
                    
                else if orderDropDownMenuLabel.text != dropDownArrowLabelTwo.text{
                    orderDropDownMenu.alpha = 0.9
                    orderDropDownMenu.removeFromParent()
                    //dropDownArrowLabelTwo.text = ""
                    /*Reescribe label elimina el phisics body que tenia y que se podria haber afectado por reajustes previos de posicionamiento y se vuelve a definir con respecto al posicionamiento
                    aqui otorgado*/
                    dropDownArrowLabelTwo.text = orderDropDownMenuLabel.text
                    /*cuando se reescribe el label con el texto "Azar (Random)" en el proximo bloque ocurre un glitch donde el texto se ve indentado hacia el medio, Para solucionar esto en el bloque de abajo
                     se reposiciona el label hacia la izquierda lo cual va a afectar el posicionamiento del Physics body, por lo cual eliminamos el Physics body original(en el bloque siguiente)
                     y lo redefinimos con los valores correspondientes a la nueva posicion del label. Estos reposicionamientos tienen como consecuencia que al reescribir
                     con el texto "Alfabetico (Alphabetic)" el texto queda indentado hacia la izquierda y fuera del dropDownLabelBGTwo(viene siendo el dropdown tab color gris)
                     y por ello que en este bloque lo volvemos a reposicionar y redefinimos el physics body.Los physics bodies se eliminan y se redefinen dado que reposicionarlos
                     sin redefinirlos, no da el resultado esperado y de acuerdo a la literatura la norma es redefinirlos*/
                    dropDownArrowLabelTwo.physicsBody = nil
                    dropDownArrowLabelTwo.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:179, height:9.5), center: CGPoint(x:26, y: 4.5))
                    dropDownArrowLabelTwo.physicsBody?.isDynamic = false
                    dropDownArrowLabelTwo.position = CGPoint(x:-26.0,y:-4.5)
                    dropDownLabelBGTwo.addChild(dropDownArrowLabelTwo)
                    /*En este punto estoy haciendo el set para cuando orderDropDownMenu sea desplegado nuevamente, , estos cambios no los vamos a ver de inmediato en el rendering pq son
                    para cuando dropDownArrowLabelTwo sea presionado nuevamente en el futuro**/
                    orderDropDownMenuYellowBGTwo.removeFromParent()
                    orderDropDownMenuLabel.fontColor = .black
                    orderDropDownMenuLabelTwo.fontColor = .white
                    orderDropDownMenuLabel.zPosition = 1
                    orderDropDownMenu.addChild(orderDropDownMenuYellowBG)
                    
                    
                }
            }
            
            else if (orderDropDownMenuLabelTwo.name == touchedNode?.node?.name){
                
                if dropDownArrowLabelTwo.text == orderDropDownMenuLabelTwo.text{
                    orderDropDownMenu.removeFromParent()
                    //dropDownArrowLabelTwo.text = orderDropDownMenuLabelTwo.text
                    dropDownLabelBGTwo.addChild(dropDownArrowLabelTwo)
                }
                
                
                else if dropDownArrowLabelTwo.text != orderDropDownMenuLabelTwo.text{
                    orderDropDownMenu.alpha = 0.9
                    orderDropDownMenu.removeFromParent()
                    //dropDownArrowLabelTwo.text = ""
                    dropDownArrowLabelTwo.text = orderDropDownMenuLabelTwo.text
                    /*cuando se reescribe el label con el texto "Azar (Random)" ocurre un glitch donde el texto se ve indentado hacia el centro. Reposicione el label,
                     sin embargo como es de esperarse el physics body se desalineo un poco por lo que elimino el physics body default y lo redefino con nuevo posicionamiento.
                     Los physics bodies se eliminan y se redefinen dado que reposicionarlos sin redefinirlos, no da el resultado esperado y de acuerdo a la literatura la norma es redefinirlos.
                     ** Uno podria pensar que quizas seria mas facil definir un nuevo label para "Azar (Random)"con su propio physics body, sin embargo ello conllevaria reescribir la logica y
                     no representaria ninguna mejora en la eficiencia dado que la mecanica involucraria anadir y posicionar el nuevo label y redefinir su propio physics body que como vemos
                     es exactamente lo que ocurre en este bloque.*/
                    dropDownArrowLabelTwo.physicsBody = nil
                    dropDownArrowLabelTwo.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:179, height:9.5), center: CGPoint(x:40, y: 4.5))
                    dropDownArrowLabelTwo.physicsBody?.isDynamic = false
                    dropDownArrowLabelTwo.position = CGPoint(x:-40.0,y:-4.5)//despues que escribimos el label hay reposicionarlo
                    dropDownLabelBGTwo.addChild(dropDownArrowLabelTwo)
                    /*En este punto estoy haciendo el set para cuando orderDropDownMenu sea desplegado nuevamente, estos cambios no los vamos a ver de inmediato en el rendering pq son
                     para cuando dropDownArrowLabelTwo sea presionado nuevamente en el futuro **/
                    orderDropDownMenuYellowBG.removeFromParent()
                    orderDropDownMenuLabel.fontColor = .white
                    orderDropDownMenuLabelTwo.fontColor = .black
                    orderDropDownMenuLabelTwo.zPosition = 1
                    /*RECORDAR: orderDropDownMenuLabelTwo fue anadido previamente a orderDropDownMenu,*/
                    orderDropDownMenu.addChild(orderDropDownMenuYellowBGTwo)
                    //orderDropDownMenuLabelTwo.zPosition = 1
                }
            }
            /*Los proximos tres else if statements pertenecen a los botones para la vista de seleccion**/
            else if (gameModeSelectionGreenButton.name == touchedNode?.node?.name){
                if dropDownArrowLabel.text == "Puerto Rico" && dropDownArrowLabelTwo.text == "Alfabético (Alphabetic)"{
                    self.removeAllActions()
                    self.removeFromParent()
                    let startScene = StartScene(size: self.size)
                    self.view?.presentScene(startScene)
                }
                if dropDownArrowLabel.text == "Puerto Rico" && dropDownArrowLabelTwo.text == "Al Azar (Random)"{
                    self.removeAllActions()
                    self.removeFromParent()
                    let randomGame = RandomGame(size: self.size)
                    self.view?.presentScene(randomGame)
                }
                
            }
            else if (gameModeSelectionBlueButton.name == touchedNode?.node?.name){
                if dropDownArrowLabel.text == "Puerto Rico" && dropDownArrowLabelTwo.text == "Alfabético (Alphabetic)"{
                    self.removeAllActions()
                    self.removeFromParent()
                    let practiceAlphabeticGame = PracticeAlphabeticGame(size: self.size)
                    self.view?.presentScene(practiceAlphabeticGame)
                }
                
                if dropDownArrowLabel.text == "Puerto Rico" && dropDownArrowLabelTwo.text == "Al Azar (Random)"{
                    self.removeAllActions()
                    self.removeFromParent()
                    let practiceRandomGame = PracticeRandomGame(size: self.size)
                    self.view?.presentScene(practiceRandomGame)
                }
            }
            else if (gameModeSelectionRedButton.name == touchedNode?.node?.name){
                gameModeSelectionOldPaperbackground.removeFromParent()
                self.addChild(mapOrderOldPaperbackground)
            }
                
            else if (opcionesCheckbox.name == touchedNode?.node?.name && opcionesCheckmark.parent != nil){
                opcionesCheckmark.removeFromParent()
                StartMenu.backgroundMusicOn = false
            }
            
            else if (opcionesCheckbox.name == touchedNode?.node?.name && opcionesCheckmark.parent == nil){
                opcionesCheckbox.addChild(opcionesCheckmark)
                StartMenu.backgroundMusicOn = true
            }
            else if (opcionesCheckboxTwo.name == touchedNode?.node?.name && opcionesCheckmarkTwo.parent != nil){
                opcionesCheckmarkTwo.removeFromParent()
                StartMenu.gamePlaySoundOn = false
            }
            else if (opcionesCheckboxTwo.name == touchedNode?.node?.name && opcionesCheckmarkTwo.parent == nil){
                opcionesCheckboxTwo.addChild(opcionesCheckmarkTwo)
                StartMenu.gamePlaySoundOn = true
            }
            
            
        }
            
        else if mapOrderOldPaperbackground.parent != nil && mapOrderCountryDropDownMenu.parent != nil{
            mapOrderCountryDropDownMenu.removeFromParent()
            dropDownLabelBG.addChild(dropDownArrowLabel)//Devolviendo a la vista el label que se elimino cuando inicialmente presionamos en el drop down tab gris(dropDownArrowLabel)
        }
        else if mapOrderOldPaperbackground.parent != nil && orderDropDownMenu.parent != nil{
            orderDropDownMenu.removeFromParent()
            dropDownLabelBGTwo.addChild(dropDownArrowLabelTwo)//Devolviendo a la vista el label que se elimino cuando inicialmente presionamos en el drop down tab gris(dropDownArrowLabelTwo)
        }
        
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
       let view = SKView(frame: UIScreen.main.bounds)
       let texture = view.texture(from: shapeNode)!
       let dropDownLabelBackGround = SKSpriteNode(texture: texture)

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
       let view = SKView(frame: UIScreen.main.bounds)
       let texture = view.texture(from: shapeNode)!
       let dropDownLabelBackGround = SKSpriteNode(texture: texture)

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
       let view = SKView(frame: UIScreen.main.bounds)
       let texture = view.texture(from: shapeNode)!
       let dropDownLabelBackGround = SKSpriteNode(texture: texture)

       return dropDownLabelBackGround
            
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
       let view = SKView(frame: UIScreen.main.bounds)
       let texture = view.texture(from: shapeNode)!
       let dropDownLabelBackGround = SKSpriteNode(texture: texture)

       return dropDownLabelBackGround
            
    }
    
     func dropDownArrowBPToSKSpritenode()-> SKSpriteNode {//Culebra frame drawing
        // Initialize the path.
        path = UIBezierPath()
      
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
        let view = SKView(frame: UIScreen.main.bounds)
        let texture = view.texture(from: shapeNode)!
        let dropDownArrow = SKSpriteNode(texture: texture)

        return dropDownArrow
        
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
    
    func mapOrderOldPaperDropdownBG()->SKSpriteNode{
        let oldPaperTexture = SKSpriteNode(imageNamed: "old paper texture")
        oldPaperTexture.size = CGSize(width: 440, height:170)//(width: 480, height:195)
        oldPaperTexture.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        //oldPaperTexture.zPosition = 0
        return oldPaperTexture
        
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
        greenbutton.position = CGPoint(x:self.size.width/2, y:self.size.height/2)//(x:self.size.width/2, y:self.size.height/2)//(x:350, y:225)
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
    
    func setMapOrderGreenButton()->SKSpriteNode{
        //Drawing
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
        labelOne.fontSize = 11
        labelOne.text = "Siguiente"
        labelOne.position = CGPoint(x:0.5, y:1.5)
        //labelOne.position = CGPoint(x:0, y:-13)
        //buttonOneLabelTwo.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
        greenbutton.addChild(labelOne)
        
        let labelTwo = SKLabelNode()
        labelTwo.fontName = "AvenirNext-Bold"
        labelTwo.fontSize = 10
        labelTwo.text = "(Next)"
        labelTwo.position = CGPoint(x:0.5, y:-10)
        //buttonOneLabelTwo.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
        greenbutton.addChild(labelTwo)
        
        return greenbutton
        
                
    }
    
    func setMapOrderRedButton()->SKSpriteNode{
        //Drawing
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
        //Drawing to Shapenode
        let shapeNode = SKShapeNode(path:path.cgPath)
        shapeNode.strokeColor = UIColor.init(red: 0.9176, green: 0.2745, blue: 0, alpha: 1.0)//c1d3c8
        shapeNode.lineWidth = 0.5
        shapeNode.fillColor = UIColor.init(red: 0.9176, green: 0.2745, blue: 0, alpha: 1.0)
        //Shapenode To SKSpriteNode
        let view = SKView(frame: UIScreen.main.bounds)
        let texture = view.texture(from: shapeNode)!
        let redButton = SKSpriteNode(texture: texture)
        //greenbutton.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        redButton.position = CGPoint(x:350, y:200)
        //greenbutton.zPosition = 2
        let labelOne = SKLabelNode()
        labelOne.fontName = "AvenirNext-Bold"
        labelOne.fontSize = 11
        labelOne.text = "Volver"
        labelOne.position = CGPoint(x:0.5, y:1.5)
        //labelOne.position = CGPoint(x:0, y:-13)
        //buttonOneLabelTwo.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
        redButton.addChild(labelOne)
        
        let labelTwo = SKLabelNode()
        labelTwo.fontName = "AvenirNext-Bold"
        labelTwo.fontSize = 10
        labelTwo.text = "(Return)"
        labelTwo.position = CGPoint(x:0.5, y:-10)
        //buttonOneLabelTwo.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
        redButton.addChild(labelTwo)
        
        return redButton
        
                
    }
}
