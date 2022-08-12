//
//  StartMenu.swift
//  test_grounds
//
//  Created by javier pizarro on 3/19/22.
//  Copyright © 2022 javierpizarro. All rights reserved.
//

import SpriteKit
import AVFoundation

class StartMenu: SKScene {
    //let oldPaperBorderTexture = SKSpriteNode(imageNamed: "old paper texture")
    //let elMorro = SKSpriteNode(imageNamed: "el morro")
    //let mapaClickBanner = SKSpriteNode(imageNamed: "Mapaclick Title")
    //var touchedNode: SKPhysicsBody!Se declaro como variable local en TouchesBegun
    let buttonGreen:SKSpriteNode = StartMenuMethods().setGreenButton()//boton verde de jugar
    let redButtonOne:SKSpriteNode = StartMenuMethods().initMainMenuRedButtons()//boton rojo "Mejores Tiempos"
    let redButtonTwo:SKSpriteNode = StartMenuMethods().initMainMenuRedButtons()//boton rojo instrucciones
    let redButtonThree:SKSpriteNode = StartMenuMethods().initMainMenuRedButtons()//boton rojo opciones
    let redButtonOneLabel:SKLabelNode = StartMenuMethods().mainMenuRedButtonsLabelsDefaults()//labels for (the three)red buttons
    let redButtonTwoLabel:SKLabelNode = StartMenuMethods().mainMenuRedButtonsLabelsDefaults()
    let redButtonThreeLabel:SKLabelNode = StartMenuMethods().mainMenuRedButtonsLabelsDefaults()
    
    let instructionsEspanolLabel:SKLabelNode = StartMenuMethods().setinstructionsLabelDefaults()
    let instructionsEspanolLabelTwo:SKLabelNode = StartMenuMethods().setinstructionsLabelDefaults()
    let instructionsEnglishLabel:SKLabelNode = StartMenuMethods().setinstructionsLabelDefaults()
    let instructionsEnglishLabelTwo:SKLabelNode = StartMenuMethods().setinstructionsLabelDefaults()
    let redArrowButtonEspanolLabel: SKSpriteNode = StartMenuMethods().redArrowButtonDrawToSKSpriteNodeAndSetAttributes()
    let redArrowButtonEspanolLabelTwo: SKSpriteNode = StartMenuMethods().redArrowButtonDrawToSKSpriteNodeAndSetAttributes()
    let redArrowButtonEnglishLabel: SKSpriteNode = StartMenuMethods().redArrowButtonDrawToSKSpriteNodeAndSetAttributes()
    let redArrowButtonEnglishLabelTwo: SKSpriteNode = StartMenuMethods().redArrowButtonDrawToSKSpriteNodeAndSetAttributes()
    
    let englishButton: SKSpriteNode = StartMenuMethods().espanolEnglishButtonDrawToSpriteNode()
    let espanolButton: SKSpriteNode = StartMenuMethods().espanolEnglishButtonDrawToSpriteNode()
    //let englishButtonLabel: SKLabelNode = StartMenuMethods().espanolEnglishButtonLabelDefaults()
    //let espanolButtonLabel: SKLabelNode = StartMenuMethods().espanolEnglishButtonLabelDefaults()
    var returnVolverRedButton: SKSpriteNode! = nil/* = StartMenuMethods().redButtonShapeNodeToSpriteNode()*/
    //let returnVolverRedButtonLabelOne:SKLabelNode = StartMenuMethods().redButtonBlueButtonLabelOne()
    //let returnVolverRedButtonLabelTwo:SKLabelNode = StartMenuMethods().redButtonBlueButtonLabelTwo()
    
    //let creditsLabel:SKLabelNode = StartMenuMethods().setCreditsLabelDefaults()
    //let creditsLabelTwo:SKLabelNode = StartMenuMethods().setCreditsLabelDefaults()
    //let creditsSoundMusicLabel:SKLabelNode = StartMenuMethods().creditsSingleLineLabelDefaults()
    //let creditsSoundMusicChildLabel:SKLabelNode = StartMenuMethods().setCreditsLabelDefaults()
    //let creditsSoundMusicChildLabelTwo:SKLabelNode = StartMenuMethods().setCreditsLabelDefaults()
    //let creditsSoundMusicChildLabelThree:SKLabelNode = StartMenuMethods().licenseLabels()
    //let creditsMapsImagesLabel:SKLabelNode = StartMenuMethods().creditsSingleLineLabelDefaults()
    //let creditsMapsImagesChildLabel:SKLabelNode = StartMenuMethods().setCreditsLabelDefaults()
    //let creditsMapsImagesChildLabelTwo:SKLabelNode = StartMenuMethods().setCreditsLabelDefaults()
    //let creditsMapsImagesChildLabelThree:SKLabelNode = StartMenuMethods().licenseLabels()
    //let creditsSpecialThanksLabel:SKLabelNode = StartMenuMethods().creditsSingleLineLabelDefaults()
    //let creditsSpecialThanksChildLabel:SKLabelNode = StartMenuMethods().setCreditsLabelDefaults()
    //let creditsSpecialThanksChildLabelTwo:SKLabelNode = StartMenuMethods().licenseLabels()
    //var path: UIBezierPath!
    
    var mapOrderObjectsNotInitSet: Bool = true
    //let dropDownArrow:SKSpriteNode = StartMenuMethods().dropDownArrowBPToSKSpritenode()
    //let dropDownArrowTwo:SKSpriteNode = StartMenuMethods().dropDownArrowBPToSKSpritenode()
    let dropDownArrowLabel:SKLabelNode = StartMenuMethods().dropDownArrowLabelDefaults()
    let dropDownArrowLabelTwo:SKLabelNode = StartMenuMethods().dropDownArrowLabelDefaults()
    let dropDownLabelBG:SKSpriteNode = StartMenuMethods().dropDownLabelBackground()
    let dropDownLabelBGTwo:SKSpriteNode = StartMenuMethods().dropDownLabelBackground()
    let mapOrderOldPaperbackground:SKSpriteNode = StartMenuMethods().mapOrderOldPaperDropdownBG()
    //let mapOrderTopLabel:SKLabelNode = StartMenuMethods().mapOrderTwoLineLabelDefaults()
    //let mapOrderMiddleLabel:SKLabelNode = StartMenuMethods().mapOrderTwoLineLabelDefaults()
    //let mapOrderSingleLineLabel:SKLabelNode = StartMenuMethods().creditsSingleLineLabelDefaults()
    //let mapOrderSingleLineLabelTwo:SKLabelNode = StartMenuMethods().creditsSingleLineLabelDefaults()
    let mapOrderCountryDropDownMenu: SKSpriteNode =  StartMenuMethods().mapOrderCountryDropDownMenuSpriteNode()
    let orderDropDownMenu: SKSpriteNode = StartMenuMethods().mapOrderCountryDropDownMenuSpriteNodeTwo()
    let mapOrderCountryDropDownMenuYellowBG: SKSpriteNode = StartMenuMethods().dropDownMenuLabelBackground()
    let dropDownMenuLabelPR:SKLabelNode = StartMenuMethods().dropDownArrowLabelDefaults()
    let orderDropDownMenuYellowBG:SKSpriteNode = StartMenuMethods().dropDownMenuLabelBackground()
    let orderDropDownMenuYellowBGTwo:SKSpriteNode = StartMenuMethods().dropDownMenuLabelBackground()
    let orderDropDownMenuLabel:SKLabelNode = StartMenuMethods().dropDownArrowLabelDefaults()
    let orderDropDownMenuLabelTwo:SKLabelNode = StartMenuMethods().dropDownArrowLabelDefaults()
    let mapOrderGreenButton:SKSpriteNode = StartMenuMethods().setMapOrderGreenButton()
    //let mapOrderGreenButtonTopLabel:SKLabelNode = StartMenuMethods().mapOrderButtonsTopLabelsDefault()
    //let mapOrderGreenButtonBottomLabel:SKLabelNode = StartMenuMethods().mapOrderButtonsBottomLabelsDefault()
    let mapOrderRedButton:SKSpriteNode = StartMenuMethods().setMapOrderRedButton()
    //let mapOrderRedButtonTopLabel:SKLabelNode = StartMenuMethods().mapOrderButtonsTopLabelsDefault()
    //let mapOrderRedButtonBottomLabel:SKLabelNode = StartMenuMethods().mapOrderButtonsBottomLabelsDefault()
    var gameModeSelectionObjectsNotInitSet:Bool = true
    let gameModeSelectionOldPaperbackground:SKSpriteNode = StartMenuMethods().mapOrderOldPaperDropdownBG()
    let gameModeSelectionGreenButton:SKSpriteNode = StartMenuMethods().modeSelectionGreenButton()
    let gameModeSelectionGreenButtonLabel:SKLabelNode = StartMenuMethods().modeSelectionBlueRedButtonsLabelsDefaults()
    let gameModeSelectionBlueButton:SKSpriteNode = StartMenuMethods().modeSelectionBlueButton()
    let gameModeSelectionBlueButtonLabel:SKLabelNode = StartMenuMethods().modeSelectionBlueRedButtonsLabelsDefaults()
    //var gameModeSelectionRedButtonLabel:SKLabelNode = StartMenuMethods().modeSelectionBlueRedButtonsLabelsDefaults()
    //let gameModeSelectionLabel:SKLabelNode = StartMenuMethods().modeSelectionLabelDefaults()
    //let gameModeSelectionLabelTwo:SKLabelNode = StartMenuMethods().modeSelectionLabelDefaults()
    let gameModeSelectionRedButton:SKSpriteNode = StartMenuMethods().modeSelectionRedButton()
    //let bestTimesRectangleBp:UIBezierPath = TestClass().createRectangle()
    
    var bestTimesObjectsNotInitSet: Bool = true
    let bestTimesRectangleBpToSKSpritenode:SKSpriteNode = StartMenuMethods().bestTimesRectangleBezierPathToSKSpriteNode()
    let bestTimesToplabel:SKLabelNode = StartMenuMethods().mapOrderTwoLineLabelDefaults()
    //let bestTimesPrAlphabeticlabel:SKLabelNode = StartMenuMethods().bestTimeslabel()
    //let bestTimesPrAlphabeticScorelabel:SKLabelNode = StartMenuMethods().bestTimesPrAlphabeticScore()
    //let bestTimesPrRandomlabel:SKLabelNode = StartMenuMethods().bestTimeslabel()
    //let bestTimesPrRandomScorelabel:SKLabelNode = StartMenuMethods().bestTimesPrRandomScore()
    
    var opcionesObjectsNotInitSet:Bool = true
    let opcionesAudioLabel:SKLabelNode = StartMenuMethods().opcionesLabelDefaults()
    //let opcionesMusicaLabel:SKLabelNode = StartMenuMethods().opcionesLabelDefaults()
    //let opcionesSonidosLabel:SKLabelNode = StartMenuMethods().opcionesLabelDefaults()
    let opcionesCheckbox:SKSpriteNode = StartMenuMethods().opcionesCheckBoxesBpToSpritenode()
    let opcionesCheckboxTwo:SKSpriteNode = StartMenuMethods().opcionesCheckBoxesBpToSpritenode()
    let opcionesCheckmark:SKSpriteNode = StartMenuMethods().opcionesCheckmarkBpToSpritenode()
    let opcionesCheckmarkTwo:SKSpriteNode = StartMenuMethods().opcionesCheckmarkBpToSpritenode()
    
    var creditsContainerChildrenNotInitSet:Bool = true
    let creditosButton:SKSpriteNode = StartMenuMethods().creditosButtonBpDrawToSKSpriteNode()
    let creditButtonLabel:SKLabelNode = StartMenuMethods().mainMenuSetLabelDefaults()
    var creditsContainer:SKNode!
    
    static var backgroundMusicOn = true
    static var gamePlaySoundOn = true
    
    //var startMenuMusic = SKAudioNode(fileNamed: "Guiton Sketch.mp3") esta variable es para si se utiliza SKAction para el background music lo cual no es recomendado
    var musicPlayer = AVAudioPlayer()
    var musicURL:URL?
    
    //let touch = touches.first!
    //let touchLocation = touch.location(in: self)
    //let touchedNode = self.physicsWorld.body(at:touchLocation)
    
    var touchedPhysicsBody:SKPhysicsBody!
    
    override func didMove(to view: SKView){
        let oldPaperBorderTexture = oldPapertexture()//Primer objeto sobre la escena, sirve de background al resto de los objetos y le da la caracteristica a los bordes como la textura de un pergamino antiguo
        let elMorro:SKSpriteNode = setElMorro()// foto del morro
        let mapaClickBanner: SKSpriteNode = setMapaClickBanner()//nombre de la marca a la parte superior de la escena
        
        musicURL = Bundle.main.url(forResource:"Guiton Sketch", withExtension:"mp3")
        
        setMainMenuObjectsForRender()
        initSetInstruccionesObjects()
        setMainMapOrderObjects()
        setMainGameModeSelectionObjects()
        setMainOpcionesObjects()
      
        creditsContainer = nodesContainer()
        creditsContainer.name = "creditsContainer"
    
        /*La siguiente linea es para evitar que si usuario dio uncheck o por el contrario check antes de comenzar el juego y sale del juego como es un cambio de escena, esta escena pues va a anadir de nuevo el check mark que inicialmente quizas el usuario quito pq no queria musica de fondo o sonido de juego, de modo que con esta linea prevalece la seleccion del usuario, aun haya cambio de escena(para ver esto eliminar el if
         )**/
        if StartMenu.backgroundMusicOn == true /*&& opcionesCheckmark.parent == nil*/{
            opcionesCheckbox.addChild(opcionesCheckmark)
        }
        
        /*La siguiente linea es para evitar que si usuario dio uncheck o por el contrario check antes de comenzar el juego y sale del juego como es un cambio de escena, esta escena pues va a anadir de nuevo el check mark que inicialmente quizas el usuario quito pq no queria musica de fondo o sonido de juego, de modo que con esta linea prevalece la seleccion del usuario, aun haya cambio de escena(para ver esto eliminar el if
        )**/
        if StartMenu.gamePlaySoundOn == true{
            opcionesCheckboxTwo.addChild(opcionesCheckmarkTwo)
        }
        
        /*Este if statement previene que se anada la musica por ejemplo si el usuario deshabilito la musica de fondo y juega pero interrumpe el juego(Salida(exit)) este statement
        va a impedir que con el cambio de escena se vuelva a anadir la musica*/
        if opcionesCheckmark.parent != nil{
            initMusic()
            //self.addChild(startMenuMusic)
        }
        
        elMorro.addChild(mapaClickBanner)
        oldPaperBorderTexture.addChild(elMorro)
        
        self.addChild(oldPaperBorderTexture)
        self.addChild(buttonGreen)

    }
    func initSetSecondaryOpcionesObjects(){
    
        let opcionesMusicaLabel:SKLabelNode = StartMenuMethods().opcionesLabelDefaults()
        opcionesMusicaLabel.name = "opcionesMusicaLabel"
        opcionesMusicaLabel.text = "Música (Music)"
        opcionesMusicaLabel.position = CGPoint(x:-17,y:-20.5)
        opcionesAudioLabel.addChild(opcionesMusicaLabel)
        
        let opcionesSonidosLabel:SKLabelNode = StartMenuMethods().opcionesLabelDefaults()
        opcionesSonidosLabel.name = "opcionesSonidosLabel"
        opcionesSonidosLabel.text = "Sonidos (Sound)"
        opcionesSonidosLabel.position = CGPoint(x:-11.5,y:-45)
        opcionesAudioLabel.addChild(opcionesSonidosLabel)
    
    }
    
    func setMainOpcionesObjects(){
        //opcionesAudioLabel = opcionesLabelDefaults()
        opcionesAudioLabel.name = "opcionesAudioLabel"
        opcionesAudioLabel.fontName = "GillSans-Bold"
        opcionesAudioLabel.text = "Audio"
        opcionesAudioLabel.position = CGPoint(x:345,y:225)

        //opcionesCheckbox = opcionesCheckBoxesBpToSpritenode()
        opcionesCheckbox.name = "opcionesCheckbox"
        //opcionesCheckbox.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:opcionesCheckbox.size.width, height:opcionesCheckbox.size.height), center: CGPoint(x:0.5, y: 0.5))
        //opcionesCheckbox.physicsBody?.isDynamic = false
        opcionesCheckbox.position = CGPoint(x:50,y:-16)
        opcionesAudioLabel.addChild(opcionesCheckbox)

        //opcionesCheckmark = opcionesCheckmarkBpToSpritenode()
        opcionesCheckmark.name = "opcionesCheckmark"
        opcionesCheckmark.position = CGPoint(x:0.5,y:0.5)//(x:50,y:-16)

        //opcionesCheckboxTwo = opcionesCheckBoxesBpToSpritenode()
        opcionesCheckboxTwo.name = "opcionesCheckboxTwo"
        //opcionesCheckboxTwo.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:opcionesCheckboxTwo.size.width, height:opcionesCheckboxTwo.size.height), center: CGPoint(x:0.5, y: 0.5))
        //opcionesCheckboxTwo.physicsBody?.isDynamic = false
        opcionesCheckboxTwo.position = CGPoint(x:50,y:-40)
        opcionesAudioLabel.addChild(opcionesCheckboxTwo)

        //opcionesCheckmarkTwo = opcionesCheckmarkBpToSpritenode()
        opcionesCheckmarkTwo.name = "opcionesCheckmarkTwo"
        opcionesCheckmarkTwo.position = CGPoint(x:0.5,y:0.5)//(x:50,y:-40)
        
        //creditosButton = creditosButtonBpDrawToSKSpriteNode()
        creditosButton.name = "creditosButton"
        //creditosButton.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:creditosButton.size.width, height:creditosButton.size.height), center: CGPoint(x:0.5, y: 0.5))
        //creditosButton.physicsBody?.isDynamic = false
        creditosButton.position = CGPoint(x:0.5,y:-65)
        opcionesAudioLabel.addChild(creditosButton)
        
        //creditButtonLabel = mainMenuSetLabelDefaults()
        creditButtonLabel.name = "creditButtonLabel"
        creditButtonLabel.text = "Creditos (Credits)"
        creditButtonLabel.position = CGPoint(x:0.5,y:-5.5)
        creditosButton.addChild(creditButtonLabel)
        
    }
    
    func initSetSecondaryGameModeSelectionObjects(){
        //gameModeSelectionLabel = modeSelectionLabelDefaults()
        let gameModeSelectionLabel:SKLabelNode = StartMenuMethods().modeSelectionLabelDefaults()
        gameModeSelectionLabel.name = "gameModeSelectionLabel"
        gameModeSelectionLabel.text = "Juega con un mapa en blanco.\nTiempo más rápido se guardará.\n  (Play with a blank map.\n  Fastest time will be saved)"
        gameModeSelectionLabel.position = CGPoint(x:-87,y:-25)
        gameModeSelectionOldPaperbackground.addChild(gameModeSelectionLabel)
        
        //gameModeSelectionLabelTwo = modeSelectionLabelDefaults()
        let gameModeSelectionLabelTwo:SKLabelNode = StartMenuMethods().modeSelectionLabelDefaults()
        gameModeSelectionLabelTwo.name = "gameModeSelectionLabelTwo"
        gameModeSelectionLabelTwo.text = "Juega con nombres ya en el mapa.\n\t Tiempo no se guardará.\n(Play with names already on the map.\n\tTime will not be saved)"
        gameModeSelectionLabelTwo.preferredMaxLayoutWidth = 160
        gameModeSelectionLabelTwo.position = CGPoint(x:105,y:-26)
        gameModeSelectionOldPaperbackground.addChild(gameModeSelectionLabelTwo)
    }
    
    func setMainGameModeSelectionObjects(){
        //gameModeSelectionOldPaperbackground = mapOrderOldPaperDropdownBG()
        gameModeSelectionOldPaperbackground.name = "gameModeSelectionOldPaperbackground"
        gameModeSelectionOldPaperbackground.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        
        //gameModeSelectionGreenButton = modeSelectionGreenButton()
        gameModeSelectionGreenButton.name = "gameModeSelectionGreenButton"
        //gameModeSelectionGreenButton.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:gameModeSelectionGreenButton.size.width, height:gameModeSelectionGreenButton.size.height), center: CGPoint(x:0.5, y: 0.5))
        //gameModeSelectionGreenButton.physicsBody?.isDynamic = false
        gameModeSelectionGreenButton.position = CGPoint(x:-90, y:50)
        gameModeSelectionOldPaperbackground.addChild(gameModeSelectionGreenButton)
        
        //Lo voy a inicializar desde el principio pq es el label del boton
        gameModeSelectionGreenButtonLabel.name = "gameModeSelectionGreenButtonLabel"
        gameModeSelectionGreenButtonLabel.text = "  Modo de Reto \n(Challenge Mode)"
        gameModeSelectionGreenButton.addChild(gameModeSelectionGreenButtonLabel)
        
        //gameModeSelectionBlueButton = modeSelectionBlueButton()
        gameModeSelectionBlueButton.name = "gameModeSelectionBlueButton"
        //gameModeSelectionBlueButton.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:gameModeSelectionBlueButton.size.width, height:gameModeSelectionBlueButton.size.height), center: CGPoint(x:0.5, y: 0.5))
        //gameModeSelectionBlueButton.physicsBody?.isDynamic = false
        gameModeSelectionBlueButton.position = CGPoint(x:90, y:50)
        gameModeSelectionOldPaperbackground.addChild(gameModeSelectionBlueButton)
        
        gameModeSelectionBlueButtonLabel.name = "gameModeSelectionBlueButtonLabel"
        gameModeSelectionBlueButtonLabel.text = "  Modo de Práctica \n   (Practice Mode)"
        gameModeSelectionBlueButton.addChild(gameModeSelectionBlueButtonLabel)
        
        //gameModeSelectionRedButton = modeSelectionRedButton()
        gameModeSelectionRedButton.name = "gameModeSelectionRedButton"
        //gameModeSelectionRedButton.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:gameModeSelectionRedButton.size.width, height:gameModeSelectionRedButton.size.height), center: CGPoint(x:0.5, y: 0.5))
        //gameModeSelectionRedButton.physicsBody?.isDynamic = false
        gameModeSelectionRedButton.position = CGPoint(x:0,y:-55)
        gameModeSelectionOldPaperbackground.addChild(gameModeSelectionRedButton)
    }
    
    
    
    func initSetcreditsContainerChildren(){
        //creditsLabel = setCreditsLabelDefaults()
        let creditsLabel:SKLabelNode = StartMenuMethods().setCreditsLabelDefaults()
        creditsLabel.name = "creditsLabel"
        creditsLabel.text = "CONCEPT\n\nDESIGN\n\n\n\nORIGINAL ART\n\n\n\nPROGRAMMING"
        creditsLabel.position = CGPoint(x:50, y:202)
        creditsContainer.addChild(creditsLabel)
        
        //creditsLabelTwo = setCreditsLabelDefaults()
        let creditsLabelTwo:SKLabelNode = StartMenuMethods().setCreditsLabelDefaults()
        creditsLabelTwo.name = "creditsLabelTwo"
        creditsLabelTwo.text = "Roberto Veléz Benítez\n\nRoberto Veléz Benítez\nManuel Alvarez\nEnrique J. Pizarro\n\nRoberto Veléz Benítez\nManuel Alvarez\nRodrigo Barasorda\n\nEnrique J. Pizarro"
        creditsLabelTwo.fontColor = UIColor.black
        creditsLabelTwo.position = CGPoint(x:160, y:202)
        //creditsLabelTwo.numberOfLines = 13
        creditsLabelTwo.preferredMaxLayoutWidth = 110 //140
        creditsContainer.addChild(creditsLabelTwo)
        
        //creditsSoundMusicLabel = creditsSingleLineLabelDefaults()//Stand alone label set CreditsLabelDefaults() is for multipleline labels
        let creditsSoundMusicLabel:SKLabelNode = StartMenuMethods().creditsSingleLineLabelDefaults()
        creditsSoundMusicLabel.name = "creditsSoundMusicLabel"
        //creditsSoundMusicLabel.fontSize = 11
        //creditsSoundMusicLabel.fontName = "GillSans-Bold"
        //creditsSoundMusicLabel.fontColor = UIColor.init(red: 0, green: 1, blue: 0.1647, alpha: 1.0)
        creditsSoundMusicLabel.text = "SOUND & MUSIC"
        creditsSoundMusicLabel.position = CGPoint(x:95, y:190)
        creditsContainer.addChild(creditsSoundMusicLabel)
        
        //creditsSoundMusicChildLabel = setCreditsLabelDefaults()
        let creditsSoundMusicChildLabel:SKLabelNode = StartMenuMethods().setCreditsLabelDefaults()
        creditsSoundMusicChildLabel.name = "creditsSoundMusicChildLabel"
        //creditsSoundMusicChildLabel.fontColor = UIColor.init(red: 0, green: 1, blue: 0.1647, alpha: 1.0)
        creditsSoundMusicChildLabel.text = "1-At the shore\n2-No Frills Salsa-Alternate\n(shortened from original)\n3-Guiton Sketch\n\n1-La Borinqueña\n2-Star Spangled Banner\n\n1-Game Sound Correct\nOrganic Violin\n\n\nCartoon Success Fanfare"
        creditsSoundMusicChildLabel.preferredMaxLayoutWidth = 125
        creditsSoundMusicChildLabel.position = CGPoint(x:69, y:55)
        creditsContainer.addChild(creditsSoundMusicChildLabel)
        
        //creditsSoundMusicChildLabelTwo = setCreditsLabelDefaults()
        let creditsSoundMusicChildLabelTwo:SKLabelNode = StartMenuMethods().setCreditsLabelDefaults()
        creditsSoundMusicChildLabelTwo.name = "creditsSoundMusicChildLabelTwo"
        creditsSoundMusicChildLabelTwo.text = "\nKevin MacLeod\n(incompetech.com)\n\n\nnationalanthems.info\n\n\n\nBertrof\n(freesound.org)\n\nwww.zapsplat.com"
        creditsSoundMusicChildLabelTwo.fontColor = UIColor.black
        creditsSoundMusicChildLabelTwo.position = CGPoint(x:200, y:55)
        //creditsLabelTwo.numberOfLines = 13
        creditsSoundMusicChildLabelTwo.preferredMaxLayoutWidth = 100 //140
        creditsContainer.addChild(creditsSoundMusicChildLabelTwo)
        
        //creditsSoundMusicChildLabelThree = licenseLabels()
        let creditsSoundMusicChildLabelThree:SKLabelNode = StartMenuMethods().licenseLabels()
        creditsSoundMusicChildLabelThree.name = "creditsSoundMusicChildLabelThree"
        //creditsSoundMusicChildLabelThree.fontColor = UIColor.black
        //creditsSoundMusicChildLabelThree.fontSize = 7.5
        //creditsSoundMusicChildLabelThree.fontName = "GillSans-Bold"
        creditsSoundMusicChildLabelThree.text = "All music and sounds used licensed under Creative Commons:\n\t\tBy Attribution 3.0 License\n\t(http://creativecommons.org/licenses/by/3.0/)"
        //creditsSoundMusicChildLabelThree.numberOfLines = 5
        //creditsSoundMusicChildLabelThree.preferredMaxLayoutWidth = 250
        creditsSoundMusicChildLabelThree.position =  CGPoint(x:125, y:20)
        creditsContainer.addChild(creditsSoundMusicChildLabelThree)
        
        //creditsMapsImagesLabel = creditsSingleLineLabelDefaults()//Stand alone label set CreditsLabelDefaults() is for multipleline labels
        let creditsMapsImagesLabel:SKLabelNode = StartMenuMethods().creditsSingleLineLabelDefaults()
        creditsMapsImagesLabel.name = "creditsMapsImagesLabel"
        //creditsSoundMusicLabel.fontSize = 11
        //creditsSoundMusicLabel.fontName = "GillSans-Bold"
        //creditsSoundMusicLabel.fontColor = UIColor.init(red: 0, green: 1, blue: 0.1647, alpha: 1.0)
        creditsMapsImagesLabel.text = "IMAGES AND MAPS"
        creditsMapsImagesLabel.position = CGPoint(x:370, y:295)
        creditsContainer.addChild(creditsMapsImagesLabel)
        
        //creditsMapsImagesChildLabel = setCreditsLabelDefaults()
        let creditsMapsImagesChildLabel:SKLabelNode = StartMenuMethods().setCreditsLabelDefaults()
        creditsMapsImagesChildLabel.name = "creditsMapsImagesChildLabel"
        creditsMapsImagesChildLabel.fontColor = UIColor.init(red: 0, green: 0.4824, blue: 0.8784, alpha: 1.0)
        creditsMapsImagesChildLabel.text = "\tMap of Puerto Rico\n(All BezierPath shapes based:\nhttps://mapsvg.com/static/maps\n/geo-calibrated/puerto-rico.svg)"
        creditsMapsImagesChildLabel.preferredMaxLayoutWidth = 155
        creditsMapsImagesChildLabel.position = CGPoint(x:325, y:245)
        creditsContainer.addChild(creditsMapsImagesChildLabel)
        
        //creditsMapsImagesChildLabelTwo = setCreditsLabelDefaults()
        let creditsMapsImagesChildLabelTwo:SKLabelNode = StartMenuMethods().setCreditsLabelDefaults()
        creditsMapsImagesChildLabelTwo.name = "creditsMapsImagesChildLabelTwo"
        creditsMapsImagesChildLabelTwo.text = "https://mapsvg.com/maps/puerto-rico"
        creditsMapsImagesChildLabelTwo.fontColor = UIColor.black
        creditsMapsImagesChildLabelTwo.position = CGPoint(x:510, y:260)
        //creditsLabelTwo.numberOfLines = 13
        creditsMapsImagesChildLabelTwo.preferredMaxLayoutWidth = 180
        creditsContainer.addChild(creditsMapsImagesChildLabelTwo)
        
        //creditsMapsImagesChildLabelThree = licenseLabels()
        let creditsMapsImagesChildLabelThree:SKLabelNode = StartMenuMethods().licenseLabels()
        creditsMapsImagesChildLabelThree.name = "creditsMapsImagesChildLabelThree"
        creditsMapsImagesChildLabelThree.position = CGPoint(x:383, y:215)
        creditsMapsImagesChildLabelThree.text = "\tLicensed under Creative Commons:\nBy Attribution 4.0 International (CC BY 4.0) License\n(https://creativecommons.org/licenses/by/4.0/)"
        creditsContainer.addChild(creditsMapsImagesChildLabelThree)
        
        //creditsSpecialThanksLabel = creditsSingleLineLabelDefaults()
        let creditsSpecialThanksLabel:SKLabelNode = StartMenuMethods().creditsSingleLineLabelDefaults()
        creditsSpecialThanksLabel.name = "creditsSpecialThanksLabel"
        creditsSpecialThanksLabel.text = "SPECIAL THANKS"
        creditsSpecialThanksLabel.position = CGPoint(x:360, y:200)
        creditsContainer.addChild(creditsSpecialThanksLabel)
        
        //creditsSpecialThanksChildLabel = setCreditsLabelDefaults()
        let creditsSpecialThanksChildLabel:SKLabelNode = StartMenuMethods().setCreditsLabelDefaults()
        creditsSpecialThanksChildLabel.name = "creditsSpecialThanksChildLabel"
        creditsSpecialThanksChildLabel.text = "Manuel Alvarez\nRoberto Vélez Benitez\nEnrique J. Pizarro\nRodrigo Barasorda\nJosé Ramos\nMaritza Torres\nNarén Vélez Vendrell\nGabriela Mora Llorens\nCarmine T. Guida\nVladimir Alyamkin\nRaul Rosado\n@Pedro Cacique(https://www.youtube.com/c/PedroCacique)\nHoglund & Pamías\nAtlantic University College\nEpic Games,inc"
        creditsSpecialThanksChildLabel.fontColor = UIColor.black
        creditsSpecialThanksChildLabel.position = CGPoint(x:425, y:43)
        //creditsLabelTwo.numberOfLines = 13
        creditsSpecialThanksChildLabel.preferredMaxLayoutWidth = 280 //140
        creditsContainer.addChild(creditsSpecialThanksChildLabel)
        
        //creditsSpecialThanksChildLabelTwo = licenseLabels()
        let creditsSpecialThanksChildLabelTwo:SKLabelNode = StartMenuMethods().licenseLabels()
        creditsSpecialThanksChildLabelTwo.name = "creditsSpecialThanksChildLabelTwo"
        creditsSpecialThanksChildLabelTwo.position = CGPoint(x:422, y:10)
        creditsSpecialThanksChildLabelTwo.text = "Mapaclick © 2019 MAPACLICK All rights reserved\nMapaclick uses Swift© programming language developed by Apple© inc\n and Spritekit© framework developed by Apple© inc"
        creditsSpecialThanksChildLabelTwo.preferredMaxLayoutWidth = 280
        creditsContainer.addChild(creditsSpecialThanksChildLabelTwo)
        
        
    }
    
    func setMainMapOrderObjects(){
        mapOrderOldPaperbackground.name = "mapOrderOldPaperbackground"
        mapOrderOldPaperbackground.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        
        dropDownLabelBG.name = "dropDownLabelBG"
        dropDownLabelBG.position = CGPoint(x:100,y:50)
        mapOrderOldPaperbackground.addChild(dropDownLabelBG)
        
        dropDownArrowLabel.name = "dropDownArrowLabel"
        dropDownArrowLabel.position = CGPoint(x:-55.0,y:-4.5)
        dropDownArrowLabel.text = "Puerto Rico"
        dropDownArrowLabel.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:179, height:9.5), center: CGPoint(x:55, y: 4.5))
        dropDownArrowLabel.physicsBody?.isDynamic = false
        dropDownLabelBG.addChild(dropDownArrowLabel)
        
        dropDownArrowLabelTwo.name = "dropDownArrowLabelTwo"
        dropDownArrowLabelTwo.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:179, height:9.5), center: CGPoint(x:26, y: 4.5))
        dropDownArrowLabelTwo.physicsBody?.isDynamic = false
        dropDownArrowLabelTwo.position = CGPoint(x:-26.0,y:-4.5)//posicionamiento con respecto al parent dropDownLabelBGTwo
        //dropDownArrowLabelTwo.preferredMaxLayoutWidth = 300
        dropDownArrowLabelTwo.text = "Alfabético (Alphabetic)"//default text
        dropDownLabelBGTwo.addChild(dropDownArrowLabelTwo)
        
        mapOrderCountryDropDownMenu.name = "mapOrderCountryDropDownMenu"
        mapOrderCountryDropDownMenu.position = CGPoint(x:434,y:215)
        
        mapOrderCountryDropDownMenuYellowBG.name = "mapOrderCountryDropDownMenuYellowBG"
        mapOrderCountryDropDownMenuYellowBG.position = CGPoint(x:0.0,y:9.7)
        
        dropDownMenuLabelPR.name = "dropDownMenuLabelPR"
        dropDownMenuLabelPR.position = CGPoint(x:-56,y:4.5)
        dropDownMenuLabelPR.fontSize = 10.5
        dropDownMenuLabelPR.text = "Puerto Rico"
        dropDownMenuLabelPR.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:179, height:9.5), center: CGPoint(x:56, y: 4.5))
        dropDownMenuLabelPR.physicsBody?.isDynamic = false
        
        dropDownLabelBGTwo.name = "dropDownLabelBGTwo"
        dropDownLabelBGTwo.position = CGPoint(x:100,y:-23)
        mapOrderOldPaperbackground.addChild(dropDownLabelBGTwo)
        
        orderDropDownMenu.name = "orderDropDownMenu"
        orderDropDownMenu.position = CGPoint(x:434,y:142)
        
        orderDropDownMenuYellowBG.name = "orderDropDownMenuYellowBG"
        orderDropDownMenuYellowBG.position = CGPoint(x:0.0,y:7)
        orderDropDownMenuYellowBG.zPosition = 0
        
        orderDropDownMenuLabel.name = "orderDropDownMenuLabel"
        orderDropDownMenuLabel.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:179, height:9.5), center: CGPoint(x:34.5, y: 4.5))
        orderDropDownMenuLabel.physicsBody?.isDynamic = false
        orderDropDownMenuLabel.position = CGPoint(x:-33,y:2)
        orderDropDownMenuLabel.fontSize = 10.5
        orderDropDownMenuLabel.text = "Alfabético (Alphabetic)"
        
        orderDropDownMenuYellowBGTwo.name = "orderDropDownMenuYellowBGTwo"
        orderDropDownMenuYellowBGTwo.position = CGPoint(x:0.0,y:-7.0)
        orderDropDownMenuYellowBGTwo.zPosition = 0
        
        orderDropDownMenuLabelTwo.name = "orderDropDownMenuLabelTwo"
        orderDropDownMenuLabelTwo.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:177, height:9.5), center: CGPoint(x:47.5, y: 4.5))
        orderDropDownMenuLabelTwo.physicsBody?.isDynamic = false
        orderDropDownMenuLabelTwo.position = CGPoint(x:-45,y:-12)
        //orderDropDownMenuLabelTwo.zposition = 1
        orderDropDownMenuLabelTwo.fontSize = 10.5
        //orderDropDownMenuLabelTwo.fontColor = .white
        orderDropDownMenuLabelTwo.text = "Al Azar (Random)"
        
        mapOrderGreenButton.name = "mapOrderGreenButton"
        mapOrderGreenButton.position = CGPoint(x:-118, y:-67)
        mapOrderOldPaperbackground.addChild(mapOrderGreenButton)
        
        mapOrderRedButton.name = "mapOrderRedButton"
        mapOrderRedButton.position = CGPoint(x:-185, y:-67)
        mapOrderOldPaperbackground.addChild(mapOrderRedButton)
    }
    
    func initSetInstruccionesObjects(){
        
        instructionsEspanolLabel.name = "instructionsEspanolLabel"
        instructionsEspanolLabel.text = "\tEn la parte inferior de la pantalla encontrarás el nombre de un municipio, estado,\n ciudad capital,territorio o país. Debes localizarlo en el mapa y tocarlo para\n identificarlo. La meta final es identificar todos los objetivos lo mas rapido que puedas.\n\t Puedes jugar en Modo de Practica con el mapa ya mostrando los nombres de los\n objetivos, pero solo se guardará tu tiempo mas rapido cuando juegas en Modo de\n Reto con un mapa en blanco.\n\tCon algunas excepciones, los nombres de los objetivos a identificarse seran\n en base al idioma oficial del pais o territorio."
        //instructionsEspanolLabel = instructionsEspanolLabelText(labelEspanol:instructionsEspanolLabel)//set the text attribute for label
        instructionsEspanolLabel.position = CGPoint(x: self.size.width/2 /* 135*/, y:self.size.height/2 * 0.55)
        
        instructionsEspanolLabelTwo.name = "instructionsEspanolLabelTwo"
        instructionsEspanolLabelTwo.text = "\tPuedes acercar o alejar la cámara pellizcando la pantalla con 2 dedos. Cuando\n la cámara está acercada, puedes moverla deslizando 1 solo dedo a través de la pantalla.\n\tPara marcar el objetivo, haz un toque ligero sobre el mismo en la pantalla sin\n mover el dedo(toca el objetivo como tal, NO la raya apuntando al mismo.)Si\n seleccionaste el objetivo corecto, entonces su nombre(o, si estas jugando en\n Modeo de Práctica, una marca de cotejo)aparecerá sobre el mismo en el mapa\n acompañado de un cambio de color tornando el objetivo verde y el nombre\n del proximo objetivo aparecerá al fondo de la pantalla.\n\tCada vez que hagas una selección errónea, se añadirán 3 segundos adicionales\n a tu tiempo. Tambien puedes escoger saltar el objetivo actual con una penalidad\n de 15 segundos añadidos(todavia tendrás que identificar los objetivos saltados al final)"
        //instructionsEspanolLabelTwo = instructionsEspanolLabelTextTwo (labelEspanolTwo:instructionsEspanolLabelTwo)
        instructionsEspanolLabelTwo.position = CGPoint(x: self.size.width/2 /* 135*/, y:self.size.height/2 * 0.6)
        
        instructionsEnglishLabel.name = "instructionsEnglishLabel"
        instructionsEnglishLabel.text = "\tAt the bottom of the screen is the name of a municipality, state, capital, city,\nterritory or country. You must find it on the map and tap it to identify it. The goal is\n to identify all the targets as fast as you can.\n\tYou can play in Practice Mode with the map already showing the names of the targets, but your fastest time will only be recorded if you play in Challenge Mode with a blank map.\n\tWith some exceptions, the names of the targets will be based on the official language of the countrie or territory"
        //instructionsEnglishLabel = instructionsEnglishLabelText(labelEnglish:instructionsEnglishLabel)
        instructionsEnglishLabel.position = CGPoint(x: self.size.width/2 /* 135*/, y:self.size.height/2 * 0.6)
        
        instructionsEnglishLabelTwo.name = "instructionsEnglishLabelTwo"
        instructionsEnglishLabelTwo.text = "\tYou can zoom in/out by pinching the screen with 2 fingers. When zoomed in, you\ncan move the camera around by sliding a single finger across the screen.\n\tTo mark the target, tap it on the screen without moving your finger(tap the target itself, NOT the arrow pointing at it.) If you selected the correct target, then it's name\n(or if you are playing in Practice Mode, a checkmark) will appear over the target in the map and the color of the target will change(to green) and the name of the next target will appear at the bottom of the screen.\n\tEverytime you make a wrong selection, 3 more seconds will be added to your time. You can also choose to skip the current target with a penalty of 15 seconds added(you'll still need to identify skipped targets at the end.)"
        //instructionsEnglishLabelTwo = instructionsEnglishLabelTextTwo(labelEnglishTwo:instructionsEnglishLabelTwo)
        instructionsEnglishLabelTwo.position = CGPoint(x: self.size.width/2 /* 135*/, y:self.size.height/2 * 0.6)
        
        redArrowButtonEspanolLabel.name = "redArrowButtonEspanolLabel"
        redArrowButtonEspanolLabel.position = CGPoint(x:0.5,y:-20)//overrides position values from setRedArrowButton(), as the only arrow node with a different position values.
        instructionsEspanolLabel.addChild(redArrowButtonEspanolLabel)
        
        redArrowButtonEspanolLabelTwo.name = "redArrowButtonEspanolLabelTwo"
        redArrowButtonEspanolLabelTwo.zRotation = 3.14
        //redArrowButtonEspanolLabelTwo.position = CGPoint(x:0.0,y:-29.5)
        instructionsEspanolLabelTwo.addChild(redArrowButtonEspanolLabelTwo)
        
        redArrowButtonEnglishLabel.name = "redArrowButtonEnglishLabel"
        //redArrowButtonEnglishLabel.position = CGPoint(x:0.0,y:-29.5)
        instructionsEnglishLabel.addChild(redArrowButtonEnglishLabel)
        
        redArrowButtonEnglishLabelTwo.name = "redArrowButtonEnglishLabelTwo"
        redArrowButtonEnglishLabelTwo.zRotation =  3.14
        //redArrowButtonEnglishLabelTwo.position = CGPoint(x:0.0,y:-29.5)
        instructionsEnglishLabelTwo.addChild(redArrowButtonEnglishLabelTwo)
        
        englishButton.name = "englishButton"
        //englishButtonLabel = espanolEnglishButtonLabelDefaults(label:englishButtonLabel)//set difault attributes for label
        let englishButtonLabel: SKLabelNode = StartMenuMethods().espanolEnglishButtonLabelDefaults()
        englishButtonLabel.text = "English"
        englishButton.addChild(englishButtonLabel)
        englishButton.position = CGPoint(x:0.5, y:170)//290
        instructionsEspanolLabel.addChild(englishButton)
        
        espanolButton.name = "espanolButton"
        //espanolButtonLabel = espanolEnglishButtonLabelDefaults(label: espanolButtonLabel)//set difault attributes for label
        let espanolButtonLabel: SKLabelNode = StartMenuMethods().espanolEnglishButtonLabelDefaults()
        espanolButtonLabel.text = "Español"
        espanolButton.addChild(espanolButtonLabel)
        espanolButton.position = CGPoint(x:0.5, y:160.5)//160.5
        instructionsEnglishLabel.addChild(espanolButton)
    
        
    }
    
    func initSetBestTimesBoardObjects(){
        //bestTimesToplabel = mapOrderTwoLineLabelDefaults()
        let bestTimesToplabel:SKLabelNode = StartMenuMethods().mapOrderTwoLineLabelDefaults()
        bestTimesToplabel.name = "bestTimesToplabel"
        bestTimesToplabel.fontSize = 14
        bestTimesToplabel.text = "Mejores Tiempos\n   (Best Times)"
        bestTimesToplabel.position = CGPoint(x:0.5,y:60)
        bestTimesRectangleBpToSKSpritenode.addChild(bestTimesToplabel)
        
        //bestTimesPrAlphabeticlabel = bestTimeslabel()
        let bestTimesPrAlphabeticlabel:SKLabelNode = StartMenuMethods().bestTimeslabel()
        bestTimesPrAlphabeticlabel.name = "bestTimesPrAlphabeticlabel"
        bestTimesPrAlphabeticlabel.text = "Puerto Rico(Alfabético/Alphabetic):"
        bestTimesPrAlphabeticlabel.position = CGPoint(x:-70,y:35)
        bestTimesRectangleBpToSKSpritenode.addChild(bestTimesPrAlphabeticlabel)
        
        //bestTimesPrRandomlabel = bestTimeslabel()
        let bestTimesPrRandomlabel:SKLabelNode = StartMenuMethods().bestTimeslabel()
        bestTimesPrRandomlabel.name = "bestTimesPrRandomlabel"
        bestTimesPrRandomlabel.text = "Puerto Rico(Al Azar/Random):"
        bestTimesPrRandomlabel.position = CGPoint(x:-57,y:15)
        bestTimesRectangleBpToSKSpritenode.addChild(bestTimesPrRandomlabel)
        
        //bestTimesPrAlphabeticScorelabel = bestTimesPrAlphabeticScore()
        let bestTimesPrAlphabeticScorelabel:SKLabelNode = StartMenuMethods().bestTimesPrAlphabeticScore()
        bestTimesPrAlphabeticScorelabel.name = "bestTimesPrAlphabeticScorelabel"
        bestTimesPrAlphabeticScorelabel.position = CGPoint(x:120,y:33)
        bestTimesRectangleBpToSKSpritenode.addChild(bestTimesPrAlphabeticScorelabel)
        
        //bestTimesPrRandomScorelabel = bestTimesPrRandomScore()
        let bestTimesPrRandomScorelabel:SKLabelNode = StartMenuMethods().bestTimesPrRandomScore()
        bestTimesPrRandomScorelabel.name = "bestTimesPrRandomScorelabel"
        bestTimesPrRandomScorelabel.position = CGPoint(x:120,y:15)
        bestTimesRectangleBpToSKSpritenode.addChild(bestTimesPrRandomScorelabel)
    }
    
    
    func initSetSecondaryMapOrderObjects(){
        //label con instrucciones al tope derecho
        //mapOrderTopLabel = mapOrderTwoLineLabelDefaults()
        let mapOrderTopLabel:SKLabelNode = StartMenuMethods().mapOrderTwoLineLabelDefaults()
        mapOrderTopLabel.name = "mapOrderTopLabel"
        mapOrderTopLabel.position = CGPoint(x:110, y:58)
        mapOrderTopLabel.text = "Seleccciona el mapa en el menú desplegable\n(Select the map from the drop-downmenu)"
        mapOrderOldPaperbackground.addChild(mapOrderTopLabel)
        
        //segundo label con instrucciones
        //mapOrderMiddleLabel = mapOrderTwoLineLabelDefaults()
        let mapOrderMiddleLabel:SKLabelNode = StartMenuMethods().mapOrderTwoLineLabelDefaults()
        mapOrderMiddleLabel.name = "mapOrderMiddleLabel"
        mapOrderMiddleLabel.position = CGPoint(x:72, y:-15)
        mapOrderMiddleLabel.text = "Selecciona el orden de los objetivos en el menú desplegable\n\t   (Select the target order from the drop-downmenu)"
        mapOrderOldPaperbackground.addChild(mapOrderMiddleLabel)
        
        
        let dropDownArrow:SKSpriteNode = StartMenuMethods().dropDownArrowBPToSKSpritenode()
        dropDownArrow.name = "dropDownArrow"
        dropDownArrow.position = CGPoint(x:80,y:-0.5)
        dropDownLabelBG.addChild(dropDownArrow)
        

        let mapOrderSingleLineLabel:SKLabelNode = StartMenuMethods().creditsSingleLineLabelDefaults()
        mapOrderSingleLineLabel.name = "mapOrderSingleLineLabel"
        mapOrderSingleLineLabel.fontSize = 14
        mapOrderSingleLineLabel.text = "Mapa (Map)"
        mapOrderOldPaperbackground.addChild(mapOrderSingleLineLabel)
        mapOrderSingleLineLabel.position = CGPoint(x:-165, y:46)
        
        //segundo label a la izquierda con la palabra Orden(Order)
        //mapOrderSingleLineLabelTwo = creditsSingleLineLabelDefaults()
        let mapOrderSingleLineLabelTwo:SKLabelNode = StartMenuMethods().creditsSingleLineLabelDefaults()
        mapOrderSingleLineLabelTwo.name = "mapOrderSingleLineLabelTwo"
        mapOrderSingleLineLabelTwo.fontSize = 14
        mapOrderSingleLineLabelTwo.text = "Orden (Order)"
        mapOrderOldPaperbackground.addChild(mapOrderSingleLineLabelTwo)
        mapOrderSingleLineLabelTwo.position = CGPoint(x:-156, y:-25.0)
        
        let dropDownArrowTwo:SKSpriteNode = StartMenuMethods().dropDownArrowBPToSKSpritenode()
        dropDownArrowTwo.name = "dropDownArrowTwo"
        dropDownArrowTwo.position = CGPoint(x:80,y:-0.5)
        dropDownLabelBGTwo.addChild(dropDownArrowTwo)//se anade como hijo del dropdown tab
         
        
        let mapOrderGreenButtonTopLabel:SKLabelNode = StartMenuMethods().mapOrderButtonsTopLabelsDefault()
        mapOrderGreenButtonTopLabel.name = "mapOrderGreenButtonTopLabel"
        mapOrderGreenButtonTopLabel.text = "Siguiente"
        mapOrderGreenButton.addChild(mapOrderGreenButtonTopLabel)
        
        let mapOrderGreenButtonBottomLabel:SKLabelNode = StartMenuMethods().mapOrderButtonsBottomLabelsDefault()
        mapOrderGreenButtonBottomLabel.name = "mapOrderGreenButtonBottomLabel"
        mapOrderGreenButtonBottomLabel.text = "(Next)"
        mapOrderGreenButton.addChild(mapOrderGreenButtonBottomLabel)
       
        let mapOrderRedButtonTopLabel:SKLabelNode = StartMenuMethods().mapOrderButtonsTopLabelsDefault()
        mapOrderRedButtonTopLabel.name = "mapOrderGreenButtonTopLabel"
        mapOrderRedButtonTopLabel.text = "Volver"
        mapOrderRedButton.addChild(mapOrderRedButtonTopLabel)
        
        let mapOrderRedButtonBottomLabel:SKLabelNode = StartMenuMethods().mapOrderButtonsBottomLabelsDefault()
        mapOrderRedButtonBottomLabel.name = "mapOrderGreenButtonBottomLabel"
        mapOrderRedButtonBottomLabel.text = "(Return)"
        mapOrderRedButton.addChild(mapOrderRedButtonBottomLabel)
    }
    
    func setMainMenuObjectsForRender(){
        //buttonGreen = setGreenButton()
        buttonGreen.name = "buttonGreen"
        buttonGreen.position = CGPoint(x:self.size.width/2, y:self.size.height/2)
        //buttonGreen = initSetButtonPhysicsBody(objectButton:buttonGreen)
        
        //redButtonOne = redButtonBpDrawToSKSpriteNode()//funcion dibuja el shapenode y lo convierte a formato SpriteNode
        //redButtonOne = initSetButtonPhysicsBody(objectButton:redButtonOne)//set physics body
        redButtonOne.name = "redButtonOne"
        redButtonOne.position = CGPoint(x:0.5,y:-45.5)
        //redButtonOneLabel = mainMenuSetLabelDefaults(label:redButtonOneLabel)//create label and set default atrributes
        redButtonOneLabel.text = "Mejores Tiempos (Best Times)"
        redButtonOne.addChild(redButtonOneLabel)
        buttonGreen.addChild(redButtonOne)
        
        //redButtonTwo = redButtonBpDrawToSKSpriteNode()
        //redButtonTwo = initSetButtonPhysicsBody(objectButton:redButtonTwo)
        redButtonTwo.name = "instrucciones"
        redButtonTwo.position = CGPoint(x:0.5,y:-72)
        //redButtonTwoLabel = mainMenuSetLabelDefaults(label:redButtonTwoLabel)
        redButtonTwoLabel.text = "Instrucciones (Instructions)"
        redButtonTwo.addChild(redButtonTwoLabel)
        buttonGreen.addChild(redButtonTwo)
        
        //redButtonThree = redButtonBpDrawToSKSpriteNode()
        //redButtonThree = initSetButtonPhysicsBody(objectButton:redButtonThree)
        redButtonThree.name = "redButtonThree"
        redButtonThree.position = CGPoint(x:0.5,y:-98.5)
        //redButtonThreeLabel = mainMenuSetLabelDefaults(label:redButtonThreeLabel)
        redButtonThreeLabel.text = "Opciones (Options)"
        redButtonThree.addChild(redButtonThreeLabel)
        buttonGreen.addChild(redButtonThree)
    }
    
    
    
    func initReturnVolverRedButtonObject(){
        returnVolverRedButton = StartMenuMethods().redButtonShapeNodeToSpriteNode()
        //returnVolverRedButton = redButtonShapeNodeToSpriteNode()//draws a red arrow Shapenode and converts to SKSpriteNode
        //returnVolverRedButton = initSetButtonPhysicsBody(objectButton: returnVolverRedButton)
        returnVolverRedButton.name = "returnVolverRedButton"
        //returnVolverRedButtonLabelOne = redButtonBlueButtonLabelOne()//set difault attributes for label
        let returnVolverRedButtonLabelOne:SKLabelNode = StartMenuMethods().redButtonBlueButtonLabelOne()
        returnVolverRedButtonLabelOne.name = "redButtonBlueButtonLabelOne"
        returnVolverRedButtonLabelOne.text = "Volver"
        //returnVolverRedButtonLabelTwo = redButtonBlueButtonLabelTwo()
        let returnVolverRedButtonLabelTwo:SKLabelNode = StartMenuMethods().redButtonBlueButtonLabelTwo()
        returnVolverRedButtonLabelTwo.name = "returnVolverRedButtonLabelTwo"
        returnVolverRedButtonLabelTwo.text = "(Return)"
        returnVolverRedButton.addChild(returnVolverRedButtonLabelOne)
        returnVolverRedButton.addChild(returnVolverRedButtonLabelTwo)
        returnVolverRedButton.position = CGPoint(x:40, y:25)
        returnVolverRedButton.setScale(1.2)//set a larger scale
    }
    
    func initMusic() {
        guard let url = musicURL else { return }
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: url)/*exe what is inside url**/
        }catch{
            print("error")
            }
        
        musicPlayer.numberOfLoops = -1/*negative numbers will make it loop continuously until stopped*/
        musicPlayer.prepareToPlay()//ready to play musicPlayer
        musicPlayer.play()//
    }
    
    func nodesContainer() -> SKNode{
        let nodes_Container = SKNode()
        //nodes_Container.color = UIColor.white
        //nodes_Container.size = CGSize(width: self.size.width * 0.90, height:self.size.height * 0.90)
        //nodes_Container.anchorPoint = CGPoint.zero
        nodes_Container.position = CGPoint(x:self.size.width/11, y:self.size.height - self.size.height)///25 - 5)//(x: 60.0, y: 0.5)
        return  nodes_Container
    }
    
    func mainMenuTouchNodes(nodeTouched:SKPhysicsBody){
        if(buttonGreen.name == nodeTouched.node?.name){
            buttonGreen.removeFromParent()
            if mapOrderObjectsNotInitSet == true{
                initSetSecondaryMapOrderObjects()
                print("inicializando mapOrderObject")
                mapOrderObjectsNotInitSet = false
            }
            self.addChild(mapOrderOldPaperbackground)
            
        }
        
        else if (redButtonOne.name == nodeTouched.node?.name){
            buttonGreen.removeFromParent()
            
            if bestTimesObjectsNotInitSet == true{
                initSetBestTimesBoardObjects()
                bestTimesObjectsNotInitSet = false
            }
            if returnVolverRedButton == nil{
                initReturnVolverRedButtonObject()
                print("outside")
            }
            self.addChild(bestTimesRectangleBpToSKSpritenode)
            self.addChild(returnVolverRedButton!)
        }
        
        
        else if (redButtonTwo.name == nodeTouched.node?.name){
            buttonGreen.removeFromParent()
            
            if returnVolverRedButton == nil{
                initReturnVolverRedButtonObject()
                print("inside")
            }
            self.addChild(instructionsEspanolLabel)
            self.addChild(returnVolverRedButton)

        }
        
        else if (redButtonThree.name == nodeTouched.node?.name){
            buttonGreen.removeFromParent()
            if opcionesObjectsNotInitSet == true{
                initSetSecondaryOpcionesObjects()
                opcionesObjectsNotInitSet = false
            }
            if returnVolverRedButton == nil{
                initReturnVolverRedButtonObject()
                print("wisin y yandel")
            }
            self.addChild(opcionesAudioLabel)
            self.addChild(returnVolverRedButton)
        }
    }
    
    func bestTimesTouchNodes(nodeTouched:SKPhysicsBody){
        if (returnVolverRedButton.name == nodeTouched.node?.name /*&& bestTimesRectangleBpToSKSpritenode.parent != nil*/){
           returnVolverRedButton.removeFromParent()
           bestTimesRectangleBpToSKSpritenode.removeFromParent()
           self.addChild(buttonGreen)
        }
    }
    
    func instructionsTouchNodes(nodeTouched:SKPhysicsBody){
        
        if (redArrowButtonEspanolLabel.name == nodeTouched.node?.name){
            instructionsEspanolLabel.removeFromParent()
            self.addChild(instructionsEspanolLabelTwo)
        }
        
        else if (redArrowButtonEspanolLabelTwo.name == nodeTouched.node?.name){
            instructionsEspanolLabelTwo.removeFromParent()
            self.addChild(instructionsEspanolLabel)
        }
        else if (englishButton.name == nodeTouched.node?.name){
            instructionsEspanolLabel.removeFromParent()
            self.addChild(instructionsEnglishLabel)
        }
        else if (espanolButton.name == nodeTouched.node?.name){
            instructionsEnglishLabel.removeFromParent()
            //instructionsEspanolLabel.addChild(englishButton)
            self.addChild(instructionsEspanolLabel)
        }
        else if (redArrowButtonEnglishLabel.name == nodeTouched.node?.name){
            instructionsEnglishLabel.removeFromParent()
            //instructionsEspanolLabel.addChild(englishButton)
            self.addChild(instructionsEnglishLabelTwo)
        }
        else if (redArrowButtonEnglishLabelTwo.name == nodeTouched.node?.name){
            instructionsEnglishLabelTwo.removeFromParent()
            self.addChild(instructionsEnglishLabel)
        }
        //Esta linea se hizo para poder reutilizar el boton de volver cuando se desplega la vista de creditos
        
        else if (returnVolverRedButton.name == nodeTouched.node?.name){
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
            /*if opcionesAudioLabel.parent != nil{
                opcionesAudioLabel.removeFromParent()
            }*/
            /*if bestTimesRectangleBpToSKSpritenode.parent != nil{
                bestTimesRectangleBpToSKSpritenode.removeFromParent()
            }*/
            
            
            self.addChild(buttonGreen)
            //self.addChild(redButtonOne)
            //self.addChild(redButtonTwo)
            //self.addChild(redButtonThree)
        }
    }
    
    func mapOrderTouchNodes(nodeTouched:SKPhysicsBody){
        if mapOrderGreenButton.name == nodeTouched.node?.name && orderDropDownMenu.parent != nil{
             orderDropDownMenu.removeFromParent()
             dropDownLabelBGTwo.addChild(dropDownArrowLabelTwo)
         }
             
         else if mapOrderGreenButton.name == nodeTouched.node?.name && mapOrderCountryDropDownMenu.parent != nil {
             mapOrderCountryDropDownMenu.removeFromParent()
             dropDownLabelBG.addChild(dropDownArrowLabel)
         }
         /*la ejecucion entra aqui para movernos a LA VISTA PARA ESCOGER EL MODO DE JUEGO cuando presionamos boton verde**/
         else if(mapOrderGreenButton.name == nodeTouched.node?.name){
             mapOrderOldPaperbackground.removeFromParent()
             if gameModeSelectionObjectsNotInitSet == true{
                 initSetSecondaryGameModeSelectionObjects()
                 gameModeSelectionObjectsNotInitSet = false
             }
             self.addChild(gameModeSelectionOldPaperbackground)
         }
         
         /*La ejecucion va a entrar en uno de los proximos dos else if statements si se presiona el boton rojo y se encuentra desplegado alguno de los dos drop down menu */
         else if mapOrderRedButton.name == nodeTouched.node?.name && orderDropDownMenu.parent != nil{
             orderDropDownMenu.removeFromParent()
             dropDownLabelBGTwo.addChild(dropDownArrowLabelTwo)
         }
             
         else if mapOrderRedButton.name == nodeTouched.node?.name && mapOrderCountryDropDownMenu.parent != nil {
             mapOrderCountryDropDownMenu.removeFromParent()
             dropDownLabelBG.addChild(dropDownArrowLabel)
         }
         /*la ejecucion entra aqui para regresar a la pagina principal cuando presionamos boton rojo**/
         else if mapOrderRedButton.name == nodeTouched.node?.name{
             mapOrderOldPaperbackground.removeFromParent()
             self.addChild(buttonGreen)
             //self.addChild(redButtonOne)
             //self.addChild(redButtonTwo)
             //self.addChild(redButtonThree)
         }
         /*La ejecucion va a entrar aqui cuando presiono dropDownArrowLabel pero orderDropDownMenu se encuentra desplegado. En esencia reescribe el label dropDownArrowLabelTwo
              con la seleccion que se encuentra identificada por orderDropDownMenuYellowBG o orderDropDownMenuYellowBGTwo devuelve(anade) y remueve orderDropDownMenu**/
         else if (dropDownArrowLabel.name == nodeTouched.node?.name && orderDropDownMenu.parent != nil){
             if orderDropDownMenuYellowBG.parent != nil {
                 dropDownArrowLabelTwo.text = orderDropDownMenuLabel.text
             }
             else if orderDropDownMenuYellowBGTwo.parent != nil{
                 dropDownArrowLabelTwo.text = orderDropDownMenuLabelTwo.text
             }
             
             orderDropDownMenu.removeFromParent()
             dropDownLabelBGTwo.addChild(dropDownArrowLabelTwo)
         }
             
         else if (dropDownArrowLabel.name == nodeTouched.node?.name){
             
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
         
         else if (dropDownMenuLabelPR.name == nodeTouched.node?.name){
             dropDownArrowLabel.text = dropDownMenuLabelPR.text
             mapOrderCountryDropDownMenu.removeFromParent()
             dropDownLabelBG.addChild(dropDownArrowLabel)

         }
         /*La ejecucion va a entrar aqui cuando oprimimos dropdropDownArrowLabelTwo pero mapOrderCountryDropDownMenu se encuentra desplegado,
              en esencia se cierra mapOrderCountryDropDownMenu y se devuelve dropDownArrowLabel al dropDown tab */
         else if (dropDownArrowLabelTwo.name == nodeTouched.node?.name && mapOrderCountryDropDownMenu.parent != nil){
              //Antes de cerrar el dropdown menu anadimos el text al label que se va a anadir al dropdown tab
             if mapOrderCountryDropDownMenuYellowBG.parent != nil {
                 dropDownArrowLabel.text = dropDownMenuLabelPR.text
             }
             
             mapOrderCountryDropDownMenu.removeFromParent()
             dropDownLabelBG.addChild(dropDownArrowLabel)/*Esta linea luego de cerrar el menu(mapOrderCountryDropDownMenu) devuelve el label que habia sido removido cuando inicialmente
             se removio el label cuando presionamos en dropDownArrowLabel*/
         }
         
         else if (dropDownArrowLabelTwo.name == nodeTouched.node?.name){
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
         
         else if (orderDropDownMenuLabel.name == nodeTouched.node?.name){
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
         
         else if (orderDropDownMenuLabelTwo.name == nodeTouched.node?.name){
             
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
    }
    
    func gameModeTouchNodes(nodeTouched: SKPhysicsBody){
        if (gameModeSelectionGreenButton.name == nodeTouched.node?.name){
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
        else if (gameModeSelectionBlueButton.name == nodeTouched.node?.name){
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
        else if (gameModeSelectionRedButton.name == nodeTouched.node?.name){
            gameModeSelectionOldPaperbackground.removeFromParent()
            self.addChild(mapOrderOldPaperbackground)
        }
    }
    
    func opcionesTouchNodes(nodeTouched:SKPhysicsBody){
        if (opcionesCheckbox.name == nodeTouched.node?.name && opcionesCheckmark.parent != nil){
            opcionesCheckmark.removeFromParent()
            StartMenu.backgroundMusicOn = false
            //startMenuMusic.removeFromParent()
            musicPlayer.stop()
        }
        
        else if (opcionesCheckbox.name == nodeTouched.node?.name && opcionesCheckmark.parent == nil){
            opcionesCheckbox.addChild(opcionesCheckmark)
            StartMenu.backgroundMusicOn = true
            //self.addChild(startMenuMusic)
            initMusic()
        }
        else if (opcionesCheckboxTwo.name == nodeTouched.node?.name && opcionesCheckmarkTwo.parent != nil){
            opcionesCheckmarkTwo.removeFromParent()
            StartMenu.gamePlaySoundOn = false
        }
        else if (opcionesCheckboxTwo.name == nodeTouched.node?.name && opcionesCheckmarkTwo.parent == nil){
            opcionesCheckboxTwo.addChild(opcionesCheckmarkTwo)
            StartMenu.gamePlaySoundOn = true
        }
        else if (creditosButton.name == nodeTouched.node?.name){
            opcionesAudioLabel.removeFromParent()
            if creditsContainerChildrenNotInitSet == true{
                initSetcreditsContainerChildren()
                creditsContainerChildrenNotInitSet = false
            }
            self.addChild(creditsContainer)
        }
        else if (returnVolverRedButton.name == nodeTouched.node?.name /*&& opcionesAudioLabel.parent != nil*/){
            returnVolverRedButton.removeFromParent()
            opcionesAudioLabel.removeFromParent()
            self.addChild(buttonGreen)
        }
    }
    
    func creditsTouchNodes(nodeTouched: SKPhysicsBody){
        if (returnVolverRedButton.name == nodeTouched.node?.name /*&& creditsContainer.parent != nil*/){
            creditsContainer.removeFromParent()
            self.addChild(opcionesAudioLabel)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch = touches.first!//Guarda toque de pantalla
        let touchLocation = touch.location(in: self)//Define el espacio en donde van a tomar efecto los toques de pantalla en este caso la vista StartScene
        let touchedNode = self.physicsWorld.body(at:touchLocation)//Se define que el toque de pantalla tomara efecto cuando el mismo entre en contacto con un SKphysics body, dentro de la vista StartScene
        
        if (touchedNode != nil){
            
            touchedPhysicsBody = touchedNode
            
            if buttonGreen.parent != nil{
                mainMenuTouchNodes(nodeTouched:touchedPhysicsBody)
                /*if(buttonGreen.name == touchedNode?.node?.name){
                    buttonGreen.removeFromParent()
                    if mapOrderObjectsNotInitSet == true{
                        initSetSecondaryMapOrderObjects()
                        print("inicializando mapOrderObject")
                        mapOrderObjectsNotInitSet = false
                    }
                    self.addChild(mapOrderOldPaperbackground)
                    
                }
                
                else if (redButtonOne.name == touchedNode?.node?.name){
                    buttonGreen.removeFromParent()
                    
                    if bestTimesObjectsNotInitSet == true{
                        initSetBestTimesBoardObjects()
                        bestTimesObjectsNotInitSet = false
                    }
                    if returnVolverRedButton == nil{
                        initReturnVolverRedButtonObject()
                        print("outside")
                    }
                    self.addChild(bestTimesRectangleBpToSKSpritenode)
                    self.addChild(returnVolverRedButton!)
                }
                
                
                else if (redButtonTwo.name == touchedNode?.node?.name){
                    buttonGreen.removeFromParent()
                    
                    if returnVolverRedButton == nil{
                        initReturnVolverRedButtonObject()
                        print("inside")
                    }
                    self.addChild(instructionsEspanolLabel)
                    self.addChild(returnVolverRedButton)

                }
                
                else if (redButtonThree.name == touchedNode?.node?.name){
                    buttonGreen.removeFromParent()
                    if opcionesObjectsNotInitSet == true{
                        initSetSecondaryOpcionesObjects()
                        opcionesObjectsNotInitSet = false
                    }
                    if returnVolverRedButton == nil{
                        initReturnVolverRedButtonObject()
                        print("wisin y yandel")
                    }
                    self.addChild(opcionesAudioLabel)
                    self.addChild(returnVolverRedButton)
                }
                */
            }
            else if bestTimesRectangleBpToSKSpritenode.parent != nil{
                bestTimesTouchNodes(nodeTouched:touchedPhysicsBody)
                /*if (returnVolverRedButton.name == touchedNode?.node?.name /*&& bestTimesRectangleBpToSKSpritenode.parent != nil*/){
                   returnVolverRedButton.removeFromParent()
                   bestTimesRectangleBpToSKSpritenode.removeFromParent()
                   self.addChild(buttonGreen)
                }*/
            }
            
            else if instructionsEspanolLabel.parent != nil || instructionsEspanolLabelTwo.parent != nil || instructionsEnglishLabel.parent != nil || instructionsEnglishLabelTwo.parent != nil /*&& returnVolverRedButton.parent != nil*/{
                
                instructionsTouchNodes(nodeTouched:touchedPhysicsBody)
                /*if (redArrowButtonEspanolLabel.name == touchedNode?.node?.name){
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
                //Esta linea se hizo para poder reutilizar el boton de volver cuando se desplega la vista de creditos
                
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
                    /*if opcionesAudioLabel.parent != nil{
                        opcionesAudioLabel.removeFromParent()
                    }*/
                    /*if bestTimesRectangleBpToSKSpritenode.parent != nil{
                        bestTimesRectangleBpToSKSpritenode.removeFromParent()
                    }*/
                    
                    
                    self.addChild(buttonGreen)
                    //self.addChild(redButtonOne)
                    //self.addChild(redButtonTwo)
                    //self.addChild(redButtonThree)
                }*/
            }
                
            
            /*else if (returnVolverRedButton.name == touchedNode?.node?.name && creditsContainer.parent != nil){
                creditsContainer.removeFromParent()
                self.addChild(opcionesAudioLabel)
            }*/
            
          
            /*else if (returnVolverRedButton.name == touchedNode?.node?.name && opcionesAudioLabel.parent != nil){
                returnVolverRedButton.removeFromParent()
                opcionesAudioLabel.removeFromParent()
                self.addChild(buttonGreen)
            }*/
            
            
            /*else if (returnVolverRedButton.name == touchedNode?.node?.name && bestTimesRectangleBpToSKSpritenode.parent != nil){
                returnVolverRedButton.removeFromParent()
                bestTimesRectangleBpToSKSpritenode.removeFromParent()
                self.addChild(buttonGreen)
            }*/
            
            else if mapOrderOldPaperbackground.parent != nil{
                mapOrderTouchNodes(nodeTouched:touchedPhysicsBody)
                /*La ejecucion va a entrar en uno de los proximos dos else if statements si se presiona el boton verde y se encuentra desplegado alguno de los dos drop down menu */
               /* if mapOrderGreenButton.name == touchedNode?.node?.name && orderDropDownMenu.parent != nil{
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
                    if gameModeSelectionObjectsNotInitSet == true{
                        initSetSecondaryGameModeSelectionObjects()
                        gameModeSelectionObjectsNotInitSet = false
                    }
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
                }*/
            }
            /*Los proximos tres else if statements pertenecen a los botones para la vista de seleccion**/
            if gameModeSelectionOldPaperbackground.parent != nil{
                gameModeTouchNodes(nodeTouched:touchedPhysicsBody)
                /*if (gameModeSelectionGreenButton.name == touchedNode?.node?.name){
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
                }*/
            }
                
            else if opcionesAudioLabel.parent != nil{
                opcionesTouchNodes(nodeTouched:touchedPhysicsBody)
                /*if (opcionesCheckbox.name == touchedNode?.node?.name && opcionesCheckmark.parent != nil){
                    opcionesCheckmark.removeFromParent()
                    StartMenu.backgroundMusicOn = false
                    //startMenuMusic.removeFromParent()
                    musicPlayer.stop()
                }
                
                else if (opcionesCheckbox.name == touchedNode?.node?.name && opcionesCheckmark.parent == nil){
                    opcionesCheckbox.addChild(opcionesCheckmark)
                    StartMenu.backgroundMusicOn = true
                    //self.addChild(startMenuMusic)
                    initMusic()
                }
                else if (opcionesCheckboxTwo.name == touchedNode?.node?.name && opcionesCheckmarkTwo.parent != nil){
                    opcionesCheckmarkTwo.removeFromParent()
                    StartMenu.gamePlaySoundOn = false
                }
                else if (opcionesCheckboxTwo.name == touchedNode?.node?.name && opcionesCheckmarkTwo.parent == nil){
                    opcionesCheckboxTwo.addChild(opcionesCheckmarkTwo)
                    StartMenu.gamePlaySoundOn = true
                }
                else if (creditosButton.name == touchedNode?.node?.name){
                    opcionesAudioLabel.removeFromParent()
                    if creditsContainerChildrenNotInitSet == true{
                        initSetcreditsContainerChildren()
                        creditsContainerChildrenNotInitSet = false
                    }
                    self.addChild(creditsContainer)
                }
                else if (returnVolverRedButton.name == touchedNode?.node?.name /*&& opcionesAudioLabel.parent != nil*/){
                    returnVolverRedButton.removeFromParent()
                    opcionesAudioLabel.removeFromParent()
                    self.addChild(buttonGreen)
                }*/
                
            }
            else if creditsContainer.parent != nil{
                creditsTouchNodes(nodeTouched: touchedPhysicsBody)
                /*if (returnVolverRedButton.name == touchedNode?.node?.name /*&& creditsContainer.parent != nil*/){
                    creditsContainer.removeFromParent()
                    self.addChild(opcionesAudioLabel)
                }*/
                
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
