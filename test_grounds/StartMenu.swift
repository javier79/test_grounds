//
//  StartMenu.swift
//  test_grounds
//
//  Created by javier pizarro on 3/19/22.
//  Copyright © 2022 javierpizarro. All rights reserved.
//
/**In this class StartMenu the user will interact with different groups of nodes/objects that transition from one to another. NOTE that this effects take place on the same scene by taking group of nodes/objects out of view (screen)
 to render another set of related nodes/objects for the user to interact with)*/
import Foundation
import SpriteKit
import AVFoundation

class StartMenu: SKScene {
    /*ATTENTION IT MIGHT HAPPEN THAT AN OBJECT VAR NAME MAY REFERENCE A COLOR(An error of mine when i code the game EX:redButtonOne) AND SUCH OBJECT MAY HAVE ANOTHER COLOR DUE ESTETIC,
    THIS WAS A MISTAKE ON MY PART TO REFERENCE COLORS AS PART OF OBJECTS/VAR NAMES, BELOW IN COMMENTS I DETAIL OBJECTS WHICH NAMES HAVE CHANGED*/
    let buttonGreen:SKSpriteNode = StartMenuMethods().setGreenButton()//green button on main menu
    let redButtonOne:SKSpriteNode = StartMenuMethods().initMainMenuRedButtons()//green button "Mejores Tiempos"
    let redButtonTwo:SKSpriteNode = StartMenuMethods().initMainMenuRedButtons()//green button "instrucciones"
    let redButtonThree:SKSpriteNode = StartMenuMethods().initMainMenuRedButtons()//green button "opciones"
    let redButtonOneLabel:SKLabelNode = StartMenuMethods().mainMenuRedButtonsLabelsDefaults()//label green button "Mejores Tiempos"
    let redButtonTwoLabel:SKLabelNode = StartMenuMethods().mainMenuRedButtonsLabelsDefaults()//label green button "instrucciones"
    let redButtonThreeLabel:SKLabelNode = StartMenuMethods().mainMenuRedButtonsLabelsDefaults()//label green button "opciones"
    
    let instructionsEspanolLabel:SKLabelNode = StartMenuMethods().setinstructionsLabelDefaults()//label with spanish instructions
    let instructionsEspanolLabelTwo:SKLabelNode = StartMenuMethods().setinstructionsLabelDefaults()//second label with spanish instructions
    let instructionsEnglishLabel:SKLabelNode = StartMenuMethods().setinstructionsLabelDefaults()//label with english instructions
    let instructionsEnglishLabelTwo:SKLabelNode = StartMenuMethods().setinstructionsLabelDefaults()//second label with english instructions
    let redArrowButtonEspanolLabel: SKSpriteNode = StartMenuMethods().redArrowButtonDrawToSKSpriteNodeAndSetAttributes()//red arrow button when instructionsEspanolLabel is rendered
    let redArrowButtonEspanolLabelTwo: SKSpriteNode = StartMenuMethods().redArrowButtonDrawToSKSpriteNodeAndSetAttributes()//red arrow button when instructionsEspanolLabeltwo is rendered
    let redArrowButtonEnglishLabel: SKSpriteNode = StartMenuMethods().redArrowButtonDrawToSKSpriteNodeAndSetAttributes()//red arrow button when instructionsEnglishLabel is rendered
    let redArrowButtonEnglishLabelTwo: SKSpriteNode = StartMenuMethods().redArrowButtonDrawToSKSpriteNodeAndSetAttributes()//red arrow button when instructionsEnglishLabelTwo is rendered
    
    let englishButton: SKSpriteNode = StartMenuMethods().espanolEnglishButtonDrawToSpriteNode()//English button when instructionsEspanolLabel is rendered
    let espanolButton: SKSpriteNode = StartMenuMethods().espanolEnglishButtonDrawToSpriteNode()//Espanol button when instructionsEnglishLabel is rendered
    var returnVolverRedButton: SKSpriteNode! = nil/*return/volver button displays when bestTimesRectangle, instructionsEspanolLabel, instructionsEspanolLabelTwo, instructionsEnglishLabel, instructionsEnglishLabelTwo, opcionesAudioLabel or creditsContainer are rendered*/

    var mapOrderObjectsNotInitSet: Bool = true//used on touch function as a condition to init/set mapOrder Objects and prevents objects from re initializing(and adding objects that were already added to scene)
    let dropDownArrowLabel:SKLabelNode = StartMenuMethods().dropDownArrowLabelDefaults()//on map/order selection view label("Puerto Rico") on top of grey drop down menu tab
    let dropDownArrowLabelTwo:SKLabelNode = StartMenuMethods().dropDownArrowLabelDefaults()//on map/order selection view label("Alfabetico(Alphabetic)") on top of inferior grey drop down menu tab
    let dropDownLabelBG:SKSpriteNode = StartMenuMethods().dropDownLabelBackground()//on map/order selection view top grey drop down menu tab
    let dropDownLabelBGTwo:SKSpriteNode = StartMenuMethods().dropDownLabelBackground()//on map/order selection view inferior grey drop down menu tab
    //let mapOrderOldPaperbackground:SKSpriteNode = StartMenuMethods().mapOrderOldPaperDropdownBG()//on map/order selection view is the view parent, centered rectangle where user interacts
    let mapOrderBackgroundRectangle:SKSpriteNode = StartMenuMethods().bestTimesRectangleBezierPathToSKSpriteNode()
    let mapOrderCountryDropDownMenu: SKSpriteNode =  StartMenuMethods().mapOrderCountryDropDownMenuSpriteNode()//dark grey rectangle rendered when label dropDownArrowLabel is pressed
    
    let orderDropDownMenu: SKSpriteNode = StartMenuMethods().mapOrderCountryDropDownMenuSpriteNodeTwo()/* dark grey rectangle rendered when label dropDownArrowLabelTwo(default text "Alfabetico(Alphabetic)") is pressed*/
    let mapOrderCountryDropDownMenuYellowBG: SKSpriteNode = StartMenuMethods().dropDownMenuLabelBackground()//yellow background that display on top of mapOrderCountryDropDownMenu
    let dropDownMenuLabelPR:SKLabelNode = StartMenuMethods().dropDownArrowLabelDefaults()//label with text "Puerto Rico" on top of mapOrderCountryDropDownMenu
    let orderDropDownMenuYellowBG:SKSpriteNode = StartMenuMethods().dropDownMenuLabelBackground()/*yellow background(for label with text "Alfabetico(Alphabetic)") that display for the first selection on top of orderDropDownMenu*/
    let orderDropDownMenuYellowBGTwo:SKSpriteNode = StartMenuMethods().dropDownMenuLabelBackground()/*yellow background(for label with text "Al Azar(Random)") that display for the first selection on top of orderDropDownMenu*/
    let orderDropDownMenuLabel:SKLabelNode = StartMenuMethods().dropDownArrowLabelDefaults()//label on top of orderDropDownMenu with default text "Alfabetico(Alphabetic)"
    let orderDropDownMenuLabelTwo:SKLabelNode = StartMenuMethods().dropDownArrowLabelDefaults()//label on top of orderDropDownMenu with default text "Al Azar(Random)"
    let mapOrderGreenButton:SKSpriteNode = StartMenuMethods().setMapOrderGreenButton()//Button on mapOrder with text "Siguiente/Next"
    let mapOrderRedButton:SKSpriteNode = StartMenuMethods().setMapOrderRedButton()//Button on mapOrder with text "Volver/Return"

    var gameModeSelectionObjectsNotInitSet:Bool = true/*used on touch function as a condition to init/set gameMode Objects and prevents objects from re initializing(and adding objects that were already added to scene)*/
    let gameModeSelectionBackgroundRectangle:SKSpriteNode = StartMenuMethods().bestTimesRectangleBezierPathToSKSpriteNode()
    //let gameModeSelectionOldPaperbackground:SKSpriteNode = StartMenuMethods().mapOrderOldPaperDropdownBG()//on gameMode selection view is the view parent, centered rectangle where user interacts
    let gameModeSelectionGreenButton:SKSpriteNode = StartMenuMethods().modeSelectionGreenButton()//on gameModeSelection view the green button
    let gameModeSelectionGreenButtonLabel:SKLabelNode = StartMenuMethods().modeSelectionBlueRedButtonsLabelsDefaults()
    let gameModeSelectionBlueButton:SKSpriteNode = StartMenuMethods().modeSelectionBlueButton()
    let gameModeSelectionBlueButtonLabel:SKLabelNode = StartMenuMethods().modeSelectionBlueRedButtonsLabelsDefaults()
    let gameModeSelectionRedButton:SKSpriteNode = StartMenuMethods().modeSelectionRedButton()
    
    var bestTimesObjectsNotInitSet: Bool = true/*used on touch function as a condition to init/set bestTimes objects and prevents objects from re initializing(and adding objects that were already added to scene)*/
    let bestTimesRectangle:SKSpriteNode = StartMenuMethods().bestTimesRectangleBezierPathToSKSpriteNode()//centered rectangle parent of bestTimes view
    let bestTimesToplabel:SKLabelNode = StartMenuMethods().mapOrderTwoLineLabelDefaults()
    
    
    var opcionesObjectsNotInitSet:Bool = true/*used on touch function as a condition to init/set opciones view objects and prevents objects from re initializing(and adding objects that were already added to scene)*/
    let opcionesAudioLabel:SKLabelNode = StartMenuMethods().opcionesLabelDefaults()//label(with text "Audio")parent node when opciones view is displayed()
    let opcionesCheckbox:SKSpriteNode = StartMenuMethods().opcionesCheckBoxesBpToSpritenode()//superior checknbox
    let opcionesCheckboxTwo:SKSpriteNode = StartMenuMethods().opcionesCheckBoxesBpToSpritenode()//inferior checkbox
    let opcionesCheckmark:SKSpriteNode = StartMenuMethods().opcionesCheckmarkBpToSpritenode()//superior checkmark
    let opcionesCheckmarkTwo:SKSpriteNode = StartMenuMethods().opcionesCheckmarkBpToSpritenode()//inferior checkmark
    
    var creditsContainerChildrenNotInitSet:Bool = true/*used on touch function as a condition to init/set creditos view objects and prevents objects from re initializing(and adding objects that were already added to scene)*/
    let creditosButton:SKSpriteNode = StartMenuMethods().creditosButtonBpDrawToSKSpriteNode()//this button displays on opciones view
    let creditButtonLabel:SKLabelNode = StartMenuMethods().mainMenuSetLabelDefaults()
    var creditsContainer:SKNode!//parent node when creditos view is rendered. Contains all creditos labels
    var creditsContainerTwo:SKNode!
    static var backgroundMusicOn = true//variable is set to false if "Musica(Music)" in opciones is unchecked, which disbles background music
    static var gamePlaySoundOn = true//variable is set to false if "Sonidos(Sound)" in opciones is unchecked, which disbles game sound
    static var playPracticeAlphabeticGame = false
    static var playPracticeRandomGame = false
    
    var musicPlayer = AVAudioPlayer()//music player object for background music
    //var musicURL:URL? //music file address on game file
    let musicURL:URL? = Bundle.main.url(forResource:"Guiton Sketch", withExtension:"mp3")//reference to PR Himn
    //var touchedNode:SKPhysicsBody!//Declared univesally in order to be used by function calls outside touch function scope
    
    var initMainTouchNodes:Bool = false
    
    let screenSize = UIScreen.main.nativeBounds
    
    let mapaClickBanner: SKSpriteNode = StartMenuMethods().setMapaClickBanner()
    
    override func didMove(to view: SKView){
        
        let oldPaperBorderTexture:SKSpriteNode = oldPapertexture()//First object on scene it's appearance is like an old paper with ruff edges, serves as a background for all objects to be rendered
        let elMorro:SKSpriteNode = setElMorro()//Morro picture background
        //mapaClickBanner = setMapaClickBanner()//brand name on top when game launches
        //musicURL = Bundle.main.url(forResource:"Guiton Sketch", withExtension:"mp3")
        /**
         Iam  using a distinction on naming the functions(Main/Secondary) when i use Main means objects that are needed at runtime or needed to be ready when Touch function is called. Secondary are objects that are not needed at run time
         and that could be initialized as they are needed by users.(see Touch function(nested functions) for Secondary objects inizializartion)*/
        setMainMenuObjectsForRender()//This are the first objects user interacts with when game launch, objects are initialized at the top and set here
    
        
        /*If statement allows default music to play OR prevents music from being added if user select not to play background music*/
        if StartMenu.backgroundMusicOn == true{
            initMusic()
        }
        //Adding to the scene the main background oldPaperBorderTexture(Parent) and on top of it elMorro picture and the mapaClickBanner
        addChildSKSpriteNodeToParentSKSPriteNode(parent:elMorro,children:mapaClickBanner)
        //elMorro.addChild(mapaClickBanner)
        addChildSKSpriteNodeToParentSKSPriteNode(parent:oldPaperBorderTexture,children:elMorro)
        //oldPaperBorderTexture.addChild(elMorro)
        addChildSKSPriteNodeToself(children:oldPaperBorderTexture)
        //self.addChild(oldPaperBorderTexture)
        addChildSKSPriteNodeToself(children:buttonGreen)
        //self.addChild(buttonGreen)//Parent node for main menu at launch(contains the three red buttons)

    }
    
    func oldPapertexture()->SKSpriteNode{
        let oldPaperTexture = SKSpriteNode(imageNamed: "old paper texture")
        oldPaperTexture.size = CGSize(width: self.size.width, height:self.size.height)/**Using the properties of the class(self) with parent objects standarize the size of the objects displayed across diferrent screen sizes*/
        oldPaperTexture.position = CGPoint(x: self.size.width/2, y: self.size.height/2)/**Using the properties of the class(self) with parent objects standarize the position of the objects displayed across diferrent screen sizes*/
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
    // set main menu objects rendered at launch(beggining of the game)
    func setMainMenuObjectsForRender(){
        //"Jugar" button
        //buttonGreen = setGreenButton()
        buttonGreen.name = "buttonGreen"
        
        //"Mejores Tiempos Button"
        redButtonOne.name = "redButtonOne"
        redButtonOneLabel.text = "Mejores Tiempos (Best Times)"
        addChildSKLabelNodeToParentSKSPriteNode(parent:redButtonOne,children:redButtonOneLabel)
        addChildSKSpriteNodeToParentSKSPriteNode(parent:buttonGreen,children:redButtonOne)
        
        //"Instrucciones" button
        redButtonTwo.name = "instrucciones"
        redButtonTwoLabel.text = "Instrucciones (Instructions)"
        addChildSKLabelNodeToParentSKSPriteNode(parent:redButtonTwo,children:redButtonTwoLabel)
        addChildSKSpriteNodeToParentSKSPriteNode(parent:buttonGreen,children:redButtonTwo)
        
        //"Opciones" button
        redButtonThree.name = "redButtonThree"
        redButtonThreeLabel.text = "Opciones (Options)"
        addChildSKLabelNodeToParentSKSPriteNode(parent:redButtonThree,children:redButtonThreeLabel)
        addChildSKSpriteNodeToParentSKSPriteNode(parent:buttonGreen,children:redButtonThree)
        
        print("Screen size: \(screenSize)")
        switch (screenSize.width, screenSize.height) {
            
            case (2048.0, 2732.0):
                 print("Pro12.9(3gen), Pro12.9(4gen), Pro12.9(5gen), Pro12.9(6gen) ")
                 //setScaleAndIndepRenderingPositioningForIpadsLargeScreenSizes()
           
            case (1536.0, 2048.0),(1488.0, 2266.0) :
                 print("iPad 6Gen, Mini(5gen), Mini(6gen) ")
                 //setScaleAndIndepRenderingPositioningForIpadsSmallScreenSizes()
            
            case (1668.0, 2224.0), (1668.0, 2388.0), (1620.0, 2160.0),(1640.0, 2360.0):
                print("iPad Pro 10.5, Pro11(1gen), Air(3gen), 7Gen, Pro11(2gen), 8Gen, 9Gen, Air(4gen), PRO11(3gen), Air(5gen), 10Gen, Pro11(4gen) ")
                //setScaleAndIndepRenderingPositioningForIpadsMediumScreenSizes()
            
            case (750.0, 1334), (1080, 2340 ),(1125, 2436 ) :
                print("iPhoneSE3, SE2, 8, mini12, mini13, iPhone X, XS ,11PRO")
                setMainMenuObjectsScaleAndIndepRenderingPositioningForSmallScreenSizes()
                
            case (1242.0, 2208.0), (828.0, 1792.0 ),(1242.0, 2688.0 ) :
                print("iPhone 8plus, XR, 11, XSMax, 11ProMax")
                //setScaleAndIndepRenderingPositioningForMediumLargeScreenSizes()
                
            case (1170.0, 2532.0), (1179.0, 2556.0):
                print("iPhone 12, 12Pro, 13, 13Pro, 14, 14Pro")
                //setScaleAndIndepRenderingPositioningForLargeScreenSizes()
            
            case (1284.0, 2778.0), (1290.0, 2796.0):
                print("iPhone 12ProMax, 13ProMax, 14plus, 13Pro, 14ProMax")
                //setScaleAndIndepRenderingPositioningForXtraLargeScreenSizes()
        
            default:
                setMainMenuObjectsScaleAndIndepRenderingPositioningForSmallScreenSizes()
                break
        }
    }
    
    func setMainMenuObjectsScaleAndIndepRenderingPositioningForSmallScreenSizes(){
        buttonGreen.setScale(1.25)
        buttonGreen.position = CGPoint(x:self.size.width/2, y:self.size.height/2)
        redButtonOne.position = CGPoint(x:0.5,y:-40.5)
        redButtonTwo.position = CGPoint(x:0.5,y:-66.5)
        redButtonThree.position = CGPoint(x:0.5,y:-92.5)
    }
    
    //function that play the background music
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
    
    
    //Touch function
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
           
           let touch = touches.first!//hold screen touch
           let touchLocation = touch.location(in: self)//Defines the space where screen touch would be evaluatedf in this case class StartMenu
           //let touchedNode = self.physicsWorld.body(at:touchLocation)//Se define que el toque de pantalla tomara efecto cuando el mismo entre en contacto con un SKphysics body, dentro de la vista StartScene
           let touchedNode:SKPhysicsBody! = self.physicsWorld.body(at:touchLocation)//Declared univesally in order to be used by function calls outside this scope(touch function)
           
        /*Following statement will set and/or initialize the objects needed to be evaluated on Touch function once(the first time touch function is called). This objects must be ready(initialized and set) before the touch evaluation execute*/
           if initMainTouchNodes == false{
               initSetMainTouchNodes()
               initMainTouchNodes = true
           }
           /**Statement below evaluates weather the touch make contact with a physics body or not*/
           if (touchedNode != nil){
             /**Execution on the following (if/else)statements will evaluate which parent is being displayed currently, once a statement evaluates to truth a function is called to evaluate which Node(children or parent at render time) was touched by user and trigger a response
             like taking out of view(screen) the present objects rendered to display a new set of objects for the user to interact with*/
               if buttonGreen.parent != nil{
                   mainMenuTouchNodes(nodeTouched:touchedNode)
               }
                   
               else if bestTimesRectangle.parent != nil{
                   bestTimesTouchNodes(nodeTouched:touchedNode)
               }
               
               else if instructionsEspanolLabel.parent != nil || instructionsEspanolLabelTwo.parent != nil || instructionsEnglishLabel.parent != nil || instructionsEnglishLabelTwo.parent != nil {
                   instructionsTouchNodes(nodeTouched:touchedNode)
               }
               
               else if mapOrderBackgroundRectangle.parent != nil{
                   mapOrderTouchNodes(nodeTouched:touchedNode)
               }
               
               
               if gameModeSelectionBackgroundRectangle.parent != nil{
                   gameModeTouchNodes(nodeTouched:touchedNode)
               }
                   
               else if opcionesAudioLabel.parent != nil{
                   opcionesTouchNodes(nodeTouched:touchedNode)
               }
                   
               else if creditsContainer.parent != nil && creditsContainerTwo.parent != nil{
                   creditsTouchNodes(nodeTouched:touchedNode)
               }
               
           }
           /**Given that on mapOrder view any of the drop down menus are open by touching anywhere(where there are no physics bodies)menus will close)*/
           else if mapOrderBackgroundRectangle.parent != nil && mapOrderCountryDropDownMenu.parent != nil{
               mapOrderCountryDropDownMenu.removeFromParent()
               addChildSKLabelNodeToParentSKSPriteNode(parent: dropDownLabelBG, children: dropDownArrowLabel)
               //dropDownLabelBG.addChild(dropDownArrowLabel)//Adds to the view the label preveiously eliminated when gray drop down tab was pressed(dropDownArrowLabel)
           }
           /**When bottom drop down menu is rendered and user touch any where there is no physics body on the screen the drop down menu closes and highlighted text  is passed to dropDownArrowLabelTwo which is
             added on top of bottom drop down tab*/
           else if mapOrderBackgroundRectangle.parent != nil && orderDropDownMenu.parent != nil{
               orderDropDownMenu.removeFromParent()
               passHighlightedTextTodropDownArrowLabelTwo()
               addChildSKLabelNodeToParentSKSPriteNode(parent: dropDownLabelBGTwo, children: dropDownArrowLabelTwo)
               //dropDownLabelBGTwo.addChild(dropDownArrowLabelTwo)
                
               
           }
           
       }
    /*The following functions are organized more or less in the same order they are called on touch function. For example the function below is the first function called out of Touch funtion**/
    func initSetMainTouchNodes(){
        /**Following statements will set and/or initialize  the objects needed to be evaluated on Touch function. This objects must be ready(initialized and set) before the touch evaluation execute.
        Iam  using a distinction on naming the functions(Main/Secondary) when i use Main means objects that are needed at runtime. Secondary are objects that are not needed at run time
        and that could be initialized as they are needed by users.(see Touch function for Secondary objects inizializartion)*/
        initSetInstruccionesObjects()//Objects from instrucciones view that are to be evaluated by touch function.
        setMainMapOrderObjects()//Objects from mapOrder view that are to be evaluated by touch function.
        setMainGameModeSelectionObjects()//Objects from modeSelection view that are to be evaluated by touch function.
        setMainOpcionesObjects()//Objects from opciones view that are to be evaluated by touch function.
        initSetcreditsContainer()//creditsContainer object is to be evaluated by touch function.
    }
    /** Placed this initialization here as the following functions and/or their objects are related to the object below(but only for organization purposes)*/
    func initReturnVolverRedButtonObject(){
        returnVolverRedButton = StartMenuMethods().redButtonShapeNodeToSpriteNode()
        returnVolverRedButton.name = "returnVolverRedButton"
        
        let returnVolverRedButtonLabelOne:SKLabelNode = StartMenuMethods().redButtonBlueButtonLabelOne()
        returnVolverRedButtonLabelOne.name = "redButtonBlueButtonLabelOne"
        returnVolverRedButtonLabelOne.text = "Volver"
        //returnVolverRedButtonLabelTwo = redButtonBlueButtonLabelTwo()
        let returnVolverRedButtonLabelTwo:SKLabelNode = StartMenuMethods().redButtonBlueButtonLabelTwo()
        returnVolverRedButtonLabelTwo.name = "returnVolverRedButtonLabelTwo"
        returnVolverRedButtonLabelTwo.text = "(Return)"
        addChildSKLabelNodeToParentSKSPriteNode(parent: returnVolverRedButton, children: returnVolverRedButtonLabelOne)
        addChildSKLabelNodeToParentSKSPriteNode(parent: returnVolverRedButton, children: returnVolverRedButtonLabelTwo)
        
        
        print("Screen size: \(screenSize)")
        switch (screenSize.width, screenSize.height) {
            
            case (2048.0, 2732.0):
                 print("Pro12.9(3gen), Pro12.9(4gen), Pro12.9(5gen), Pro12.9(6gen) ")
                 //setScaleAndIndepRenderingPositioningForIpadsLargeScreenSizes()
           
            case (1536.0, 2048.0),(1488.0, 2266.0) :
                 print("iPad 6Gen, Mini(5gen), Mini(6gen) ")
                 //setScaleAndIndepRenderingPositioningForIpadsSmallScreenSizes()
            
            case (1668.0, 2224.0), (1668.0, 2388.0), (1620.0, 2160.0),(1640.0, 2360.0):
                print("iPad Pro 10.5, Pro11(1gen), Air(3gen), 7Gen, Pro11(2gen), 8Gen, 9Gen, Air(4gen), PRO11(3gen), Air(5gen), 10Gen, Pro11(4gen) ")
                //setScaleAndIndepRenderingPositioningForIpadsMediumScreenSizes()
            
            case (750.0, 1334), (1080, 2340 ),(1125, 2436 ) :
                print("iPhoneSE3, SE2, 8, mini12, mini13, iPhone X, XS ,11PRO")
                setVolverRedButtonScaleAndIndepRenderingPositioningForSmallScreenSizes()
            case (1242.0, 2208.0), (828.0, 1792.0 ),(1242.0, 2688.0 ) :
                print("iPhone 8plus, XR, 11, XSMax, 11ProMax")
                //setScaleAndIndepRenderingPositioningForMediumLargeScreenSizes()
                
            case (1170.0, 2532.0), (1179.0, 2556.0):
                print("iPhone 12, 12Pro, 13, 13Pro, 14, 14Pro")
                //setScaleAndIndepRenderingPositioningForLargeScreenSizes()
            
            case (1284.0, 2778.0), (1290.0, 2796.0):
                print("iPhone 12ProMax, 13ProMax, 14plus, 13Pro, 14ProMax")
                //setScaleAndIndepRenderingPositioningForXtraLargeScreenSizes()
        
            default:
                setVolverRedButtonScaleAndIndepRenderingPositioningForSmallScreenSizes()
                break
        }
    }
    
    func setVolverRedButtonScaleAndIndepRenderingPositioningForSmallScreenSizes(){
        returnVolverRedButton.position = CGPoint(x:50, y:28)
        returnVolverRedButton.setScale(1.5)//set a larger scale
    }
    
    /**The following 6 functions are ordered in the same way  to the order of the buttons in main menu that they are related to.(THIS ORGANIZATIONIS ONLY FOR REDABILITY AND A BETTER COMPREHENSION OF CODE).*/
    
    /**This objects are not initialized runtime, only if needed, thats why i did not init for this objects at initSetMainTouchNodes()*/
    func initSetBestTimesBoardObjects(){
        
        //bestTimesRectangle.position = CGPoint(x: self.size.width/2, y: self.size.height/2)/**Set this attribute here in order to apply to this parent position the class attributes for positioning in order for it to render equally a cross different devices*/
        
        let bestTimesToplabel:SKLabelNode = StartMenuMethods().mapOrderTwoLineLabelDefaults()
        bestTimesToplabel.name = "bestTimesToplabel"
        bestTimesToplabel.fontSize = 14
        bestTimesToplabel.text = "Mejores Tiempos\n   (Best Times)"
        bestTimesToplabel.position = CGPoint(x:0.5,y:60)
        addChildSKLabelNodeToParentSKSPriteNode(parent: bestTimesRectangle, children: bestTimesToplabel)
        //bestTimesRectangle.addChild(bestTimesToplabel)
        
        //bestTimesPrAlphabeticlabel = bestTimeslabel()
        let bestTimesPrAlphabeticlabel:SKLabelNode = StartMenuMethods().bestTimeslabel()
        bestTimesPrAlphabeticlabel.name = "bestTimesPrAlphabeticlabel"
        bestTimesPrAlphabeticlabel.text = "Puerto Rico(Alfabético/Alphabetic):"
        bestTimesPrAlphabeticlabel.position = CGPoint(x:-110,y:45)
        addChildSKLabelNodeToParentSKSPriteNode(parent: bestTimesRectangle, children: bestTimesPrAlphabeticlabel)
        //bestTimesRectangle.addChild(bestTimesPrAlphabeticlabel)
        
        //bestTimesPrRandomlabel = bestTimeslabel()
        let bestTimesPrRandomlabel:SKLabelNode = StartMenuMethods().bestTimeslabel()
        bestTimesPrRandomlabel.name = "bestTimesPrRandomlabel"
        bestTimesPrRandomlabel.text = "Puerto Rico(Al Azar/Random):"
        bestTimesPrRandomlabel.position = CGPoint(x:-95,y:25)
        addChildSKLabelNodeToParentSKSPriteNode(parent: bestTimesRectangle, children: bestTimesPrRandomlabel)
        //bestTimesRectangle.addChild(bestTimesPrRandomlabel)
        
        //bestTimesPrAlphabeticScorelabel = bestTimesPrAlphabeticScore()
        let bestTimesPrAlphabeticScorelabel:SKLabelNode = StartMenuMethods().bestTimesPrAlphabeticScore()
        bestTimesPrAlphabeticScorelabel.name = "bestTimesPrAlphabeticScorelabel"
        bestTimesPrAlphabeticScorelabel.position = CGPoint(x:120,y:45)
        addChildSKLabelNodeToParentSKSPriteNode(parent: bestTimesRectangle, children: bestTimesPrAlphabeticScorelabel)
        //bestTimesRectangle.addChild(bestTimesPrAlphabeticScorelabel)
        
        //bestTimesPrRandomScorelabel = bestTimesPrRandomScore()
        let bestTimesPrRandomScorelabel:SKLabelNode = StartMenuMethods().bestTimesPrRandomScore()
        bestTimesPrRandomScorelabel.name = "bestTimesPrRandomScorelabel"
        bestTimesPrRandomScorelabel.position = CGPoint(x:120,y:25)
        addChildSKLabelNodeToParentSKSPriteNode(parent: bestTimesRectangle, children: bestTimesPrRandomScorelabel)
        //bestTimesRectangle.addChild(bestTimesPrRandomScorelabel)
        
        print("Screen size: \(screenSize)")
        switch (screenSize.width, screenSize.height) {
            
            case (2048.0, 2732.0):
                 print("Pro12.9(3gen), Pro12.9(4gen), Pro12.9(5gen), Pro12.9(6gen) ")
                 //setScaleAndIndepRenderingPositioningForIpadsLargeScreenSizes()
           
            case (1536.0, 2048.0),(1488.0, 2266.0) :
                 print("iPad 6Gen, Mini(5gen), Mini(6gen) ")
                 //setScaleAndIndepRenderingPositioningForIpadsSmallScreenSizes()
            
            case (1668.0, 2224.0), (1668.0, 2388.0), (1620.0, 2160.0),(1640.0, 2360.0):
                print("iPad Pro 10.5, Pro11(1gen), Air(3gen), 7Gen, Pro11(2gen), 8Gen, 9Gen, Air(4gen), PRO11(3gen), Air(5gen), 10Gen, Pro11(4gen) ")
                //setScaleAndIndepRenderingPositioningForIpadsMediumScreenSizes()
            
            case (750.0, 1334), (1080, 2340 ),(1125, 2436 ) :
                print("iPhoneSE3, SE2, 8, mini12, mini13, iPhone X, XS ,11PRO")
                setBestTimesObjectsScaleAndIndepRenderingPositioningForSmallScreenSizes()
            case (1242.0, 2208.0), (828.0, 1792.0 ),(1242.0, 2688.0 ) :
                print("iPhone 8plus, XR, 11, XSMax, 11ProMax")
                //setScaleAndIndepRenderingPositioningForMediumLargeScreenSizes()
                
            case (1170.0, 2532.0), (1179.0, 2556.0):
                print("iPhone 12, 12Pro, 13, 13Pro, 14, 14Pro")
                //setScaleAndIndepRenderingPositioningForLargeScreenSizes()
            
            case (1284.0, 2778.0), (1290.0, 2796.0):
                print("iPhone 12ProMax, 13ProMax, 14plus, 13Pro, 14ProMax")
                //setScaleAndIndepRenderingPositioningForXtraLargeScreenSizes()
        
            default:
                setBestTimesObjectsScaleAndIndepRenderingPositioningForSmallScreenSizes()
                break
        }
    }
    
    func setBestTimesObjectsScaleAndIndepRenderingPositioningForSmallScreenSizes(){
       
        bestTimesRectangle.setScale(1.17)
        bestTimesRectangle.position = CGPoint(x: self.size.width/2, y: self.size.height/2 + 15)
    }
    
    //Function sets attributes and initialize some labels for Instrucciones objects needed to be evaluated on touch function
    func initSetInstruccionesObjects(){
        //Label with spanish instructions
        instructionsEspanolLabel.name = "instructionsEspanolLabel"
        instructionsEspanolLabel.text = "\tEn la parte inferior de la pantalla encontrarás el nombre de un municipio, estado,\n ciudad capital,territorio o país. Debes localizarlo en el mapa y tocarlo para\n identificarlo. La meta final es identificar todos los objetivos lo mas rapido que puedas.\n\t Puedes jugar en Modo de Practica con el mapa ya mostrando los nombres de los\n objetivos, pero solo se guardará tu tiempo mas rapido cuando juegas en Modo de\n Reto con un mapa en blanco.\n\tCon algunas excepciones, los nombres de los objetivos a identificarse seran\n en base al idioma oficial del pais o territorio."
        
        //label with second part of spanish instructions
        instructionsEspanolLabelTwo.name = "instructionsEspanolLabelTwo"
        instructionsEspanolLabelTwo.text = "\tPuedes acercar o alejar la cámara pellizcando la pantalla con 2 dedos. Cuando\n la cámara está acercada, puedes moverla deslizando 1 solo dedo a través de la pantalla.\n\tPara marcar el objetivo, haz un toque ligero sobre el mismo en la pantalla sin\n mover el dedo(toca el objetivo como tal, NO la raya apuntando al mismo.)Si\n seleccionaste el objetivo corecto, entonces su nombre(o, si estas jugando en\n Modo de Práctica, una marca de cotejo)aparecerá sobre el mismo en el mapa\n acompañado de un cambio de color tornando el objetivo verde y el nombre\n del proximo objetivo aparecerá al fondo de la pantalla.\n\tCada vez que hagas una selección errónea, se añadirán 3 segundos adicionales\n a tu tiempo. Tambien puedes escoger saltar el objetivo actual con una penalidad\n de 15 segundos añadidos(todavia tendrás que identificar los objetivos saltados al final)"
        
        //Label with english instructions
        instructionsEnglishLabel.name = "instructionsEnglishLabel"
        instructionsEnglishLabel.text = "\tAt the bottom of the screen is the name of a municipality, state, capital, city,\nterritory or country. You must find it on the map and tap it to identify it. The goal is\n to identify all the targets as fast as you can.\n\tYou can play in Practice Mode with the map already showing the names of the targets, but your fastest time will only be recorded if you play in Challenge Mode with a blank map.\n\tWith some exceptions, the names of the targets will be based on the official language of the countrie or territory"
        
        //Label with second part of english instructions
        instructionsEnglishLabelTwo.name = "instructionsEnglishLabelTwo"
        instructionsEnglishLabelTwo.text = "\tYou can zoom in/out by pinching the screen with 2 fingers. When zoomed in, you\ncan move the camera around by sliding a single finger across the screen.\n\tTo mark the target, tap it on the screen without moving your finger(tap the target itself, NOT the arrow pointing at it.) If you selected the correct target, then it's name\n(or if you are playing in Practice Mode, a checkmark) will appear over the target in the map and the color of the target will change(to green) and the name of the next target will appear at the bottom of the screen.\n\tEverytime you make a wrong selection, 3 more seconds will be added to your time. You can also choose to skip the current target with a penalty of 15 seconds added(you'll still need to identify skipped targets at the end.)"
        
        //Red arrow button that display at the bottom of spanish label instructions
        redArrowButtonEspanolLabel.name = "redArrowButtonEspanolLabel"
        redArrowButtonEspanolLabel.position = CGPoint(x:0.5,y:-35)
        addChildSKSpriteNodeToParentSKLabelNode(parent:instructionsEspanolLabel,children:redArrowButtonEspanolLabel)
        
        //Red arrow button that display at the bottom of the second spanish label instructions
        redArrowButtonEspanolLabelTwo.name = "redArrowButtonEspanolLabelTwo"
        redArrowButtonEspanolLabelTwo.zRotation = 3.14
        redArrowButtonEspanolLabelTwo.position = CGPoint(x:0.0,y:-33.5)
        addChildSKSpriteNodeToParentSKLabelNode(parent:instructionsEspanolLabelTwo,children:redArrowButtonEspanolLabelTwo)
        
        //Red arrow button that display at the bottom of english label instructions
        redArrowButtonEnglishLabel.name = "redArrowButtonEnglishLabel"
        redArrowButtonEnglishLabel.position = CGPoint(x:0.5,y:-33.0)
        addChildSKSpriteNodeToParentSKLabelNode(parent:instructionsEnglishLabel,children:redArrowButtonEnglishLabel)
        
        //Red arrow button that display at the bottom of the second english label instructions
        redArrowButtonEnglishLabelTwo.name = "redArrowButtonEnglishLabelTwo"
        redArrowButtonEnglishLabelTwo.zRotation =  3.14
        redArrowButtonEnglishLabelTwo.position = CGPoint(x:0.0,y:-28.0)
        addChildSKSpriteNodeToParentSKLabelNode(parent:instructionsEnglishLabelTwo,children:redArrowButtonEnglishLabelTwo)
        
        //"English" button at the top of spanish instructions label
        englishButton.name = "englishButton"
        let englishButtonLabel: SKLabelNode = StartMenuMethods().espanolEnglishButtonLabelDefaults()
        englishButtonLabel.text = "English"
        addChildSKLabelNodeToParentSKSPriteNode(parent: englishButton, children: englishButtonLabel)
        englishButton.position = CGPoint(x:0.5, y:190)//290
        addChildSKSpriteNodeToParentSKLabelNode(parent:instructionsEspanolLabel,children:englishButton)
        
        //"Español" button at the top of english instructions label
        espanolButton.name = "espanolButton"
        let espanolButtonLabel: SKLabelNode = StartMenuMethods().espanolEnglishButtonLabelDefaults()
        espanolButtonLabel.text = "Español"
        addChildSKLabelNodeToParentSKSPriteNode(parent: espanolButton, children: espanolButtonLabel)
        espanolButton.position = CGPoint(x:0.5, y:192)//160.5
        addChildSKSpriteNodeToParentSKLabelNode(parent:instructionsEnglishLabel,children:espanolButton)
        
        
        print("Screen size: \(screenSize)")
        switch (screenSize.width, screenSize.height) {
            
            case (2048.0, 2732.0):
                 print("Pro12.9(3gen), Pro12.9(4gen), Pro12.9(5gen), Pro12.9(6gen) ")
                 //setScaleAndIndepRenderingPositioningForIpadsLargeScreenSizes()
           
            case (1536.0, 2048.0),(1488.0, 2266.0) :
                 print("iPad 6Gen, Mini(5gen), Mini(6gen) ")
                 //setScaleAndIndepRenderingPositioningForIpadsSmallScreenSizes()
            
            case (1668.0, 2224.0), (1668.0, 2388.0), (1620.0, 2160.0),(1640.0, 2360.0):
                print("iPad Pro 10.5, Pro11(1gen), Air(3gen), 7Gen, Pro11(2gen), 8Gen, 9Gen, Air(4gen), PRO11(3gen), Air(5gen), 10Gen, Pro11(4gen) ")
                //setScaleAndIndepRenderingPositioningForIpadsMediumScreenSizes()
            
            case (750.0, 1334), (1080, 2340 ),(1125, 2436 ) :
                print("iPhoneSE3, SE2, 8, mini12, mini13, iPhone X, XS ,11PRO")
                setInstruccionesScaleAndIndepRenderingPositioningForSmallScreenSizes()
                
                
            case (1242.0, 2208.0), (828.0, 1792.0 ),(1242.0, 2688.0 ) :
                print("iPhone 8plus, XR, 11, XSMax, 11ProMax")
                //setScaleAndIndepRenderingPositioningForMediumLargeScreenSizes()
                
            case (1170.0, 2532.0), (1179.0, 2556.0):
                print("iPhone 12, 12Pro, 13, 13Pro, 14, 14Pro")
                //setScaleAndIndepRenderingPositioningForLargeScreenSizes()
            
            case (1284.0, 2778.0), (1290.0, 2796.0):
                print("iPhone 12ProMax, 13ProMax, 14plus, 13Pro, 14ProMax")
                //setScaleAndIndepRenderingPositioningForXtraLargeScreenSizes()
        
            default:
            setInstruccionesScaleAndIndepRenderingPositioningForSmallScreenSizes()
            break
        }
    }
    
    func setInstruccionesScaleAndIndepRenderingPositioningForSmallScreenSizes(){
        englishButton.setScale(1.50)
        espanolButton.setScale(1.50)
    
        instructionsEspanolLabel.position = CGPoint(x: self.size.width/2 /* 135*/, y:self.size.height/2 * 0.65)
        instructionsEspanolLabelTwo.position = CGPoint(x: self.size.width/2 /* 135*/, y:self.size.height/2 * 0.645)
        instructionsEnglishLabel.position = CGPoint(x: self.size.width/2 /* 135*/, y:self.size.height/2 * 0.64 /* 0.5*/)
        instructionsEnglishLabelTwo.position = CGPoint(x: self.size.width/2 /* 135*/, y:self.size.height/2 * 0.615/* 0.6*/)
        
        //redArrowButtonEspanolLabel.position = CGPoint(x:0.5,y:-35)
        //redArrowButtonEspanolLabelTwo.position = CGPoint(x:0.0,y:-33.5)
        //redArrowButtonEnglishLabel.position = CGPoint(x:0.5,y:-33.0)
        //redArrowButtonEnglishLabelTwo.position = CGPoint(x:0.0,y:-28.0)
    }
    
    //Function sets opciones objects needed to be eveluated on touch function
    func setMainOpcionesObjects(){
        //"Audio" label
        opcionesAudioLabel.name = "opcionesAudioLabel"
        opcionesAudioLabel.fontName = "GillSans-Bold"
        opcionesAudioLabel.text = "Audio"
        //opcionesAudioLabel.setScale(1.4)
        //opcionesAudioLabel.position = CGPoint(x:self.size.width/2,y:self.size.height/2 + 40)

        //Top checkbox
        opcionesCheckbox.name = "opcionesCheckbox"
        //opcionesCheckbox.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:opcionesCheckbox.size.width, height:opcionesCheckbox.size.height), center: CGPoint(x:0.5, y: 0.5))
        //opcionesCheckbox.physicsBody?.isDynamic = false
        opcionesCheckbox.position = CGPoint(x:50,y:-16)
        addChildSKSpriteNodeToParentSKLabelNode(parent:opcionesAudioLabel,children:opcionesCheckbox)
        //opcionesAudioLabel.addChild(opcionesCheckbox)

        //Top checkmark
        opcionesCheckmark.name = "opcionesCheckmark"
        opcionesCheckmark.position = CGPoint(x:0.5,y:0.5)//(x:50,y:-16)

        //Bottom checkbox
        opcionesCheckboxTwo.name = "opcionesCheckboxTwo"
        opcionesCheckboxTwo.position = CGPoint(x:50,y:-40)
        addChildSKSpriteNodeToParentSKLabelNode(parent:opcionesAudioLabel,children:opcionesCheckboxTwo)
        //opcionesAudioLabel.addChild(opcionesCheckboxTwo)

        //Bottom checkmark
        opcionesCheckmarkTwo.name = "opcionesCheckmarkTwo"
        opcionesCheckmarkTwo.position = CGPoint(x:0.5,y:0.5)//(x:50,y:-40)
        
        //"Creditos" button
        creditosButton.name = "creditosButton"
        creditosButton.position = CGPoint(x:0.5,y:-65)
        addChildSKSpriteNodeToParentSKLabelNode(parent:opcionesAudioLabel,children:creditosButton)
        //opcionesAudioLabel.addChild(creditosButton)
        
        creditButtonLabel.name = "creditButtonLabel"
        creditButtonLabel.text = "Creditos (Credits)"
        creditButtonLabel.position = CGPoint(x:0.5,y:-5.5)
        addChildSKLabelNodeToParentSKSPriteNode(parent: creditosButton, children: creditButtonLabel)
        //creditosButton.addChild(creditButtonLabel)
        
        switch (screenSize.width, screenSize.height) {
            
            case (2048.0, 2732.0):
                 print("Pro12.9(3gen), Pro12.9(4gen), Pro12.9(5gen), Pro12.9(6gen) ")
                 //setScaleAndIndepRenderingPositioningForIpadsLargeScreenSizes()
           
            case (1536.0, 2048.0),(1488.0, 2266.0) :
                 print("iPad 6Gen, Mini(5gen), Mini(6gen) ")
                 //setScaleAndIndepRenderingPositioningForIpadsSmallScreenSizes()
            
            case (1668.0, 2224.0), (1668.0, 2388.0), (1620.0, 2160.0),(1640.0, 2360.0):
                print("iPad Pro 10.5, Pro11(1gen), Air(3gen), 7Gen, Pro11(2gen), 8Gen, 9Gen, Air(4gen), PRO11(3gen), Air(5gen), 10Gen, Pro11(4gen) ")
                //setScaleAndIndepRenderingPositioningForIpadsMediumScreenSizes()
            
            case (750.0, 1334), (1080, 2340 ),(1125, 2436 ) :
                print("iPhoneSE3, SE2, 8, mini12, mini13, iPhone X, XS ,11PRO")
                setOpcionesScaleAndIndepRenderingPositioningForSmallScreenSizes()
                
                
            case (1242.0, 2208.0), (828.0, 1792.0 ),(1242.0, 2688.0 ) :
                print("iPhone 8plus, XR, 11, XSMax, 11ProMax")
                //setScaleAndIndepRenderingPositioningForMediumLargeScreenSizes()
                
            case (1170.0, 2532.0), (1179.0, 2556.0):
                print("iPhone 12, 12Pro, 13, 13Pro, 14, 14Pro")
                //setScaleAndIndepRenderingPositioningForLargeScreenSizes()
            
            case (1284.0, 2778.0), (1290.0, 2796.0):
                print("iPhone 12ProMax, 13ProMax, 14plus, 13Pro, 14ProMax")
                //setScaleAndIndepRenderingPositioningForXtraLargeScreenSizes()
        
            default:
                setOpcionesScaleAndIndepRenderingPositioningForSmallScreenSizes()
            break
        }
    }
    
    func setOpcionesScaleAndIndepRenderingPositioningForSmallScreenSizes(){
        opcionesAudioLabel.setScale(1.4)
        opcionesAudioLabel.position = CGPoint(x:self.size.width/2,y:self.size.height/2 + 40)
    }
    
    //Function init and set opciones objects that are not needed to evaluate on touch function and will only be called if "Opciones" button is pressed
    func initSetSecondaryOpcionesObjects(){
        ///"Musica (Music)" label
        let opcionesMusicaLabel:SKLabelNode = StartMenuMethods().opcionesLabelDefaults()
        opcionesMusicaLabel.name = "opcionesMusicaLabel"
        opcionesMusicaLabel.fontColor = UIColor.init(red: 0.5686, green: 1, blue: 0.8745, alpha: 1.0)
        opcionesMusicaLabel.text = "Música (Music)"
        opcionesMusicaLabel.position = CGPoint(x:-17,y:-20.5)
        addChildSKLabelNodeToParentSKLabelNode(parent: opcionesAudioLabel, children: opcionesMusicaLabel)
        //opcionesAudioLabel.addChild(opcionesMusicaLabel)
        //"Sonidos (Sound)" label
        let opcionesSonidosLabel:SKLabelNode = StartMenuMethods().opcionesLabelDefaults()
        opcionesSonidosLabel.name = "opcionesSonidosLabel"
        opcionesSonidosLabel.fontColor = UIColor.init(red: 0.5686, green: 1, blue: 0.8745, alpha: 1.0)
        opcionesSonidosLabel.text = "Sonidos (Sound)"
        opcionesSonidosLabel.position = CGPoint(x:-11.5,y:-45)
        addChildSKLabelNodeToParentSKLabelNode(parent: opcionesAudioLabel, children: opcionesSonidosLabel)
        //opcionesAudioLabel.addChild(opcionesSonidosLabel)
    }
    //Function initialize the container holding all credits labels
    func initSetcreditsContainer(){
        creditsContainer = nodesContainer()
        creditsContainerTwo = nodesContainer()
        creditsContainerTwo.position = CGPoint(x:self.size.width/11, y:self.size.height/60)/*Overriding function positioning, due at first there was only one containerNode(on StartMenu) and this second one needed a new positioning attributes. 20 - 15, 60*/
        creditsContainerTwo.name = "creditsContainerTwo"
        creditsContainer.name = "creditsContainer"
    }
    //creditsContainer attributes are set
    func nodesContainer() -> SKNode{
        let nodes_Container = SKNode()
        nodes_Container.position = CGPoint(x:self.size.width/10, y:self.size.height/20 - 25)///25 - 5)//(x: 60.0, y: 0.5)
        return  nodes_Container
    }
    
    //Function inits and set creditos labels, function is called if "Creditos" is pressed, not commenting on each item as its self explicative
    func initSetcreditsContainerChildren(){
    
        let creditsLabel:SKLabelNode = StartMenuMethods().setCreditsLabelDefaults()
        creditsLabel.name = "creditsLabel"
        creditsLabel.preferredMaxLayoutWidth = 110
        creditsLabel.text = "ORIGINAL CONCEPT\n\nORIGINAL DESIGN\n\n\n\nORIGINAL ART\n\n\n\nPROGRAMMING"
        //creditsLabel.position = CGPoint(x:50, y:260/*202*/)
        creditsLabel.fontColor = UIColor.init(red: 0.0078, green: 0.2941, blue: 0.8275, alpha: 1.0)
        addChildSKLabelNodeToParentSKNode(parent: creditsContainer, children: creditsLabel)
        //creditsContainer.addChild(creditsLabel)
        
        let creditsLabelTwo:SKLabelNode = StartMenuMethods().setCreditsLabelDefaults()
        creditsLabelTwo.name = "creditsLabelTwo"
        creditsLabelTwo.text = "Roberto Veléz Benítez\n\nRoberto Veléz Benítez\nManuel Alvarez\n\n\nRoberto Veléz Benítez\nManuel Alvarez\nRodrigo Barasorda\n\nEnrique J. Pizarro"
        //creditsLabelTwo.fontColor = .black
        //creditsLabelTwo.position = CGPoint(x:160, y:260)
        creditsLabelTwo.preferredMaxLayoutWidth = 130 //140
        addChildSKLabelNodeToParentSKNode(parent: creditsContainer, children: creditsLabelTwo)
        //creditsContainer.addChild(creditsLabelTwo)
        
        let creditsLabelThree:SKLabelNode = StartMenuMethods().licenseLabels()
        creditsLabelThree.name = "creditsLabelThree"
        //creditsLabelThree.position = CGPoint(x:100, y:226)
        creditsLabelThree.preferredMaxLayoutWidth = 270
        creditsLabelThree.text = "Developed by Enrique Pizarro with permission of use for the name Mapaclick(All rights reserved), concept, design, and artwork by the original creators, listed above."
        addChildSKLabelNodeToParentSKNode(parent: creditsContainer, children: creditsLabelThree)
        
        let creditsSoundMusicLabel:SKLabelNode = StartMenuMethods().creditsSingleLineLabelDefaults()
        creditsSoundMusicLabel.name = "creditsSoundMusicLabel"
        creditsSoundMusicLabel.text = "SOUND & MUSIC"
        //creditsSoundMusicLabel.position = CGPoint(x:95, y:210)
        addChildSKLabelNodeToParentSKNode(parent: creditsContainer, children: creditsSoundMusicLabel)
        //creditsContainer.addChild(creditsSoundMusicLabel)
        
        let creditsSoundMusicChildLabel:SKLabelNode = StartMenuMethods().setCreditsLabelDefaults()
        creditsSoundMusicChildLabel.name = "creditsSoundMusicChildLabel"
        creditsSoundMusicChildLabel.text = "1-At the shore\n2-No Frills Salsa-Alternate\n(shortened from original)\n3-Guiton Sketch\n\n1-La Borinqueña\n2-Star Spangled Banner\n\n1-Game Sound Correct\nOrganic Violin\n\nCartoon Success Fanfare"
        //creditsSoundMusicChildLabel.fontColor = .yellow//UIColor.init(red: 0.0078, green: 0.2941, blue: 0.8275, alpha: 1.0)
        creditsSoundMusicChildLabel.fontSize = 10.0
        creditsSoundMusicChildLabel.preferredMaxLayoutWidth = 130
        //creditsSoundMusicChildLabel.position = CGPoint(x:69, y:65)
        addChildSKLabelNodeToParentSKNode(parent: creditsContainer, children: creditsSoundMusicChildLabel)
        //creditsContainer.addChild(creditsSoundMusicChildLabel)
        
        let creditsSoundMusicChildLabelTwo:SKLabelNode = StartMenuMethods().setCreditsLabelDefaults()
        creditsSoundMusicChildLabelTwo.name = "creditsSoundMusicChildLabelTwo"
        creditsSoundMusicChildLabelTwo.text = "Kevin MacLeod\n(incompetech.com)\n\n\nnationalanthems.info\n\n\nBertrof\n(freesound.org)\n\nwww.zapsplat.com"
        //creditsSoundMusicChildLabelTwo.fontColor = UIColor.black
        creditsSoundMusicChildLabelTwo.fontSize = 10.0
        //creditsSoundMusicChildLabelTwo.position = CGPoint(x:200, y:64)
        creditsSoundMusicChildLabelTwo.preferredMaxLayoutWidth = 115 //140
        addChildSKLabelNodeToParentSKNode(parent: creditsContainer, children: creditsSoundMusicChildLabelTwo)
        //creditsContainer.addChild(creditsSoundMusicChildLabelTwo)
        
        let creditsSoundMusicChildLabelThree:SKLabelNode = StartMenuMethods().licenseLabels()
        creditsSoundMusicChildLabelThree.name = "creditsSoundMusicChildLabelThree"
        creditsSoundMusicChildLabelThree.text = "All music and sounds used licensed under Creative Commons:\n\t\tBy Attribution 3.0 License\n\t(http://creativecommons.org/licenses/by/3.0/)"
        //creditsSoundMusicChildLabelThree.position =  CGPoint(x:175, y:18)
        creditsSoundMusicChildLabelThree.preferredMaxLayoutWidth = 290
        addChildSKLabelNodeToParentSKNode(parent: creditsContainer, children: creditsSoundMusicChildLabelThree)
        //creditsContainer.addChild(creditsSoundMusicChildLabelThree)
        
        let creditsMapsImagesLabel:SKLabelNode = StartMenuMethods().creditsSingleLineLabelDefaults()
        creditsMapsImagesLabel.name = "creditsMapsImagesLabel"
        creditsMapsImagesLabel.text = "IMAGES AND MAPS"
        //creditsMapsImagesLabel.position = CGPoint(x:370, y:348)
        addChildSKLabelNodeToParentSKNode(parent: creditsContainerTwo, children: creditsMapsImagesLabel)
        //creditsContainerTwo.addChild(creditsMapsImagesLabel)
    
        let creditsMapsImagesChildLabel:SKLabelNode = StartMenuMethods().setCreditsLabelDefaults()
        creditsMapsImagesChildLabel.name = "creditsMapsImagesChildLabel"
        //creditsMapsImagesChildLabel.fontColor = UIColor.init(red: 0, green: 0.4824, blue: 0.8784, alpha: 1.0)
        creditsMapsImagesChildLabel.text = "\tMap of Puerto Rico\n(All BezierPath shapes based on:\nhttps://mapsvg.com/static/maps\n/geo-calibrated/puerto-rico.svg)"
        //creditsMapsImagesChildLabel.fontColor = .yellow//UIColor.init(red: 0.0078, green: 0.2941, blue: 0.8275, alpha: 1.0)
        creditsMapsImagesChildLabel.preferredMaxLayoutWidth = 155
        //creditsMapsImagesChildLabel.position = CGPoint(x:325, y:300)
        addChildSKLabelNodeToParentSKNode(parent: creditsContainerTwo, children: creditsMapsImagesChildLabel)
        //creditsContainerTwo.addChild(creditsMapsImagesChildLabel)
        
        let creditsMapsImagesChildLabelTwo:SKLabelNode = StartMenuMethods().setCreditsLabelDefaults()
        creditsMapsImagesChildLabelTwo.name = "creditsMapsImagesChildLabelTwo"
        creditsMapsImagesChildLabelTwo.text = "https://mapsvg.com/maps/puerto-rico"
        //creditsMapsImagesChildLabelTwo.fontColor = UIColor.black
        //creditsMapsImagesChildLabelTwo.position = CGPoint(x:510, y:310)
        creditsMapsImagesChildLabelTwo.preferredMaxLayoutWidth = 180
        addChildSKLabelNodeToParentSKNode(parent: creditsContainerTwo, children: creditsMapsImagesChildLabelTwo)
        //creditsContainerTwo.addChild(creditsMapsImagesChildLabelTwo)
        
        let creditsMapsImagesChildLabelThree:SKLabelNode = StartMenuMethods().licenseLabels()
        creditsMapsImagesChildLabelThree.name = "creditsMapsImagesChildLabelThree"
        //creditsMapsImagesChildLabelThree.position = CGPoint(x:420, y:260)
        creditsMapsImagesChildLabelThree.preferredMaxLayoutWidth = 250
        creditsMapsImagesChildLabelThree.text = "\tLicensed under Creative Commons:\nBy Attribution 4.0 International (CC BY 4.0) License\n(https://creativecommons.org/licenses/by/4.0/)"
        addChildSKLabelNodeToParentSKNode(parent: creditsContainerTwo, children: creditsMapsImagesChildLabelThree)
        //creditsContainerTwo.addChild(creditsMapsImagesChildLabelThree)
        
        let creditsSpecialThanksLabel:SKLabelNode = StartMenuMethods().creditsSingleLineLabelDefaults()
        creditsSpecialThanksLabel.name = "creditsSpecialThanksLabel"
        creditsSpecialThanksLabel.text = "SPECIAL THANKS"
        //creditsSpecialThanksLabel.position = CGPoint(x:360, y:240)
        addChildSKLabelNodeToParentSKNode(parent: creditsContainerTwo, children: creditsSpecialThanksLabel)
        //creditsContainerTwo.addChild(creditsSpecialThanksLabel)
        
        let creditsSpecialThanksChildLabel:SKLabelNode = StartMenuMethods().setCreditsLabelDefaults()
        creditsSpecialThanksChildLabel.name = "creditsSpecialThanksChildLabel"
        creditsSpecialThanksChildLabel.text = "Manuel Alvarez\nRoberto Vélez Benitez\nEnrique J. Pizarro\nRodrigo Barasorda\nJosé Ramos\nMaritza Torres\nNarén Vélez Vendrell\nGabriela Mora Llorens\nCarmine T. Guida\nVladimir Alyamkin\nRaul Rosado\n@Pedro Cacique(https://www.youtube.com/c/PedroCacique)\nHoglund & Pamías\nAtlantic University College\nEpic Games,inc"
        //creditsSpecialThanksChildLabel.fontColor = UIColor.black
        //creditsSpecialThanksChildLabel.position = CGPoint(x:425, y:80)
        creditsSpecialThanksChildLabel.preferredMaxLayoutWidth = 280 //140
        addChildSKLabelNodeToParentSKNode(parent: creditsContainerTwo, children: creditsSpecialThanksChildLabel)
        //creditsContainerTwo.addChild(creditsSpecialThanksChildLabel)
        
        let creditsSpecialThanksChildLabelTwo:SKLabelNode = StartMenuMethods().licenseLabels()
        creditsSpecialThanksChildLabelTwo.name = "creditsSpecialThanksChildLabelTwo"
        //creditsSpecialThanksChildLabelTwo.position = CGPoint(x:422, y:52)
        creditsSpecialThanksChildLabelTwo.text = "Mapaclick uses Swift© programming language developed by Apple© inc and Spritekit© framework developed by Apple© inc"
        creditsSpecialThanksChildLabelTwo.preferredMaxLayoutWidth = 295
        addChildSKLabelNodeToParentSKNode(parent: creditsContainerTwo, children: creditsSpecialThanksChildLabelTwo)
        //reditsContainerTwo.addChild(creditsSpecialThanksChildLabelTwo)
        //creditsContainerTwo.setScale(1.05)
        
        switch (screenSize.width, screenSize.height) {
            
            case (2048.0, 2732.0):
                 print("Pro12.9(3gen), Pro12.9(4gen), Pro12.9(5gen), Pro12.9(6gen) ")
                 //setScaleAndIndepRenderingPositioningForIpadsLargeScreenSizes()
           
            case (1536.0, 2048.0),(1488.0, 2266.0) :
                 print("iPad 6Gen, Mini(5gen), Mini(6gen) ")
                 //setScaleAndIndepRenderingPositioningForIpadsSmallScreenSizes()
            
            case (1668.0, 2224.0), (1668.0, 2388.0), (1620.0, 2160.0),(1640.0, 2360.0):
                print("iPad Pro 10.5, Pro11(1gen), Air(3gen), 7Gen, Pro11(2gen), 8Gen, 9Gen, Air(4gen), PRO11(3gen), Air(5gen), 10Gen, Pro11(4gen) ")
                //setScaleAndIndepRenderingPositioningForIpadsMediumScreenSizes()
            
            case (750.0, 1334), (1080, 2340 ),(1125, 2436 ) :
                print("iPhoneSE3, SE2, 8, mini12, mini13, iPhone X, XS ,11PRO")
                setCreditsScaleAndIndepRenderingPositioningForSmallScreenSizes()
            case (1242.0, 2208.0), (828.0, 1792.0 ),(1242.0, 2688.0 ) :
                print("iPhone 8plus, XR, 11, XSMax, 11ProMax")
                //setScaleAndIndepRenderingPositioningForMediumLargeScreenSizes()
                
            case (1170.0, 2532.0), (1179.0, 2556.0):
                print("iPhone 12, 12Pro, 13, 13Pro, 14, 14Pro")
                //setScaleAndIndepRenderingPositioningForLargeScreenSizes()
            
            case (1284.0, 2778.0), (1290.0, 2796.0):
                print("iPhone 12ProMax, 13ProMax, 14plus, 13Pro, 14ProMax")
                //setScaleAndIndepRenderingPositioningForXtraLargeScreenSizes()
        
            default:
                setCreditsScaleAndIndepRenderingPositioningForSmallScreenSizes()
            break
        }
        func setCreditsScaleAndIndepRenderingPositioningForSmallScreenSizes(){
            creditsLabel.position = CGPoint(x:50, y:260/*202*/)
            creditsLabelTwo.position = CGPoint(x:160, y:260)
            creditsLabelThree.position = CGPoint(x:100, y:226)
            creditsSoundMusicLabel.position = CGPoint(x:95, y:210)
            creditsSoundMusicChildLabel.position = CGPoint(x:69, y:65)
            creditsSoundMusicChildLabelTwo.position = CGPoint(x:200, y:64)
            creditsSoundMusicChildLabelThree.position =  CGPoint(x:175, y:18)
            creditsMapsImagesLabel.position = CGPoint(x:370, y:348)
            creditsMapsImagesChildLabel.position = CGPoint(x:325, y:300)
            creditsMapsImagesChildLabelTwo.position = CGPoint(x:510, y:310)
            creditsMapsImagesChildLabelThree.position = CGPoint(x:420, y:260)
            creditsSpecialThanksLabel.position = CGPoint(x:360, y:240)
            creditsSpecialThanksChildLabel.position = CGPoint(x:425, y:80)
            creditsSpecialThanksChildLabelTwo.position = CGPoint(x:422, y:52)
        }
    }
    
    
    
    //Function will set mapOrder objects needed to be evaluated by touch function
    func setMainMapOrderObjects(){
        //Parent node. Rectangle containing the objects that the user will interact with
        mapOrderBackgroundRectangle.name = "mapOrderBackgroundRectangle"
        mapOrderBackgroundRectangle.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        
        //Top Grey drop down tab.**IT DOES NOT HAVE PHYSICS BODY, THE TOUCH FUNCTION IS SET ON THE LABEL ON TOP OF IT**
        dropDownLabelBG.name = "dropDownLabelBG"
        dropDownLabelBG.position = CGPoint(x:100,y:50)
        addChildSKSpriteNodeToParentSKSPriteNode(parent: mapOrderBackgroundRectangle, children: dropDownLabelBG)
        //mapOrderOldPaperbackground.addChild(dropDownLabelBG)
        
        //Label "Puerto Rico"(default value) Lies on top of top grey drop down tab and contains the touch function
        dropDownArrowLabel.name = "dropDownArrowLabel"
        dropDownArrowLabel.position = CGPoint(x:-55.0,y:-4.5)
        dropDownArrowLabel.text = "Puerto Rico"
        dropDownArrowLabel.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:179, height:9.5), center: CGPoint(x:55, y: 4.5))
        dropDownArrowLabel.physicsBody?.isDynamic = false
        addChildSKLabelNodeToParentSKSPriteNode(parent: dropDownLabelBG, children: dropDownArrowLabel)
        //dropDownLabelBG.addChild(dropDownArrowLabel)
        
        //Top drop down menu(dark gray)
        mapOrderCountryDropDownMenu.name = "mapOrderCountryDropDownMenu"
        mapOrderCountryDropDownMenu.position = CGPoint(x:100,y:25.3)
        
        //Top yellow background that highlinght the selection on top of drop down menu(top dark gray)
        mapOrderCountryDropDownMenuYellowBG.name = "mapOrderCountryDropDownMenuYellowBG"
        mapOrderCountryDropDownMenuYellowBG.position = CGPoint(x:0.0,y:9.7)
        
        //Label "Puerto Rico" displayed when top drop down menu renders
        dropDownMenuLabelPR.name = "dropDownMenuLabelPR"
        dropDownMenuLabelPR.position = CGPoint(x:-56,y:4.5)
        dropDownMenuLabelPR.fontSize = 10.5
        dropDownMenuLabelPR.text = "Puerto Rico"
        dropDownMenuLabelPR.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:179, height:9.5), center: CGPoint(x:56, y: 4.5))
        dropDownMenuLabelPR.physicsBody?.isDynamic = false
        
        //Bottom gray drop down menu tab. **IT DOES NOT HAVE PHYSICS BODY, THE TOUCH FUNCTION IS SET ON THE LABEL ON TOP OF IT**
        dropDownLabelBGTwo.name = "dropDownLabelBGTwo"
        dropDownLabelBGTwo.position = CGPoint(x:100,y:-23)
        addChildSKSpriteNodeToParentSKSPriteNode(parent: mapOrderBackgroundRectangle, children: dropDownLabelBGTwo)
        //mapOrderOldPaperbackground.addChild(dropDownLabelBGTwo)
        
        //Label "Alfabético (Alphabetic)"(default value) Lies on top of bottom grey drop down tab and contains the touch function
        dropDownArrowLabelTwo.name = "dropDownArrowLabelTwo"
        dropDownArrowLabelTwo.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:179, height:9.5), center: CGPoint(x:26, y: 4.5))
        dropDownArrowLabelTwo.physicsBody?.isDynamic = false
        dropDownArrowLabelTwo.position = CGPoint(x:-26.0,y:-4.5)//posicionamiento con respecto al parent dropDownLabelBGTwo
        //dropDownArrowLabelTwo.preferredMaxLayoutWidth = 300
        dropDownArrowLabelTwo.text = "Alfabético (Alphabetic)"//default text
        addChildSKLabelNodeToParentSKSPriteNode(parent: dropDownLabelBGTwo, children: dropDownArrowLabelTwo)
        //dropDownLabelBGTwo.addChild(dropDownArrowLabelTwo)
        
        //Bottom drop down menu, displays when dropDownArrowLabelTwo is pressed
        orderDropDownMenu.name = "orderDropDownMenu"
        orderDropDownMenu.position = CGPoint(x:100,y:-45)
        
        //On bottom drop down menu, yellow background will display when default selection("Alfabético (Alphabetic)") is at play or if selected.
        orderDropDownMenuYellowBG.name = "orderDropDownMenuYellowBG"
        orderDropDownMenuYellowBG.position = CGPoint(x:0.0,y:7)
        orderDropDownMenuYellowBG.zPosition = 0
        
        //On bottom drop down menu, yellow background will display when selection("Al Azar (Random)") is selected.
        orderDropDownMenuYellowBGTwo.name = "orderDropDownMenuYellowBGTwo"
        orderDropDownMenuYellowBGTwo.position = CGPoint(x:0.0,y:-7.0)
        orderDropDownMenuYellowBGTwo.zPosition = 0
        
        //On bottom drop down menu, label "Alfabético (Alphabetic)" is the first selection(default)
        orderDropDownMenuLabel.name = "orderDropDownMenuLabel"
        orderDropDownMenuLabel.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:179, height:9.5), center: CGPoint(x:34.5, y: 4.5))
        orderDropDownMenuLabel.physicsBody?.isDynamic = false
        orderDropDownMenuLabel.position = CGPoint(x:-33,y:2)
        orderDropDownMenuLabel.zPosition = 1
        orderDropDownMenuLabel.fontSize = 10.5
        orderDropDownMenuLabel.text = "Alfabético (Alphabetic)"
        
        //On bottom drop down menu, label "Al Azar (Random)" is the second selection(or non default)
        orderDropDownMenuLabelTwo.name = "orderDropDownMenuLabelTwo"
        orderDropDownMenuLabelTwo.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:177, height:9.5), center: CGPoint(x:47.5, y: 4.5))
        orderDropDownMenuLabelTwo.physicsBody?.isDynamic = false
        orderDropDownMenuLabelTwo.position = CGPoint(x:-45,y:-12)
        orderDropDownMenuLabelTwo.zPosition = 1
        orderDropDownMenuLabelTwo.fontSize = 10.5
        //orderDropDownMenuLabelTwo.fontColor = .white
        orderDropDownMenuLabelTwo.text = "Al Azar (Random)"
        
        //green button
        mapOrderGreenButton.name = "mapOrderGreenButton"
        mapOrderGreenButton.position = CGPoint(x:-118, y:-67)
        addChildSKSpriteNodeToParentSKSPriteNode(parent: mapOrderBackgroundRectangle, children: mapOrderGreenButton)
        //mapOrderOldPaperbackground.addChild(mapOrderGreenButton)
        //red button
        mapOrderRedButton.name = "mapOrderRedButton"
        mapOrderRedButton.position = CGPoint(x:-185, y:-67)
        addChildSKSpriteNodeToParentSKSPriteNode(parent: mapOrderBackgroundRectangle, children: mapOrderRedButton)
        //mapOrderOldPaperbackground.addChild(mapOrderRedButton)
    }
    //map Order objects that will be loadad only if "Jugar" button is pressed, but are not needed inmediately for touch function evaluation
    func initSetSecondaryMapOrderObjects(){
        //top label map selection instructions
        let mapOrderTopLabel:SKLabelNode = StartMenuMethods().mapOrderTwoLineLabelDefaults()
        mapOrderTopLabel.name = "mapOrderTopLabel"
        mapOrderTopLabel.position = CGPoint(x:110, y:58)
        mapOrderTopLabel.text = "Seleccciona el mapa en el menú desplegable\n(Select the map from the drop-downmenu)"
        addChildSKLabelNodeToParentSKSPriteNode(parent: mapOrderBackgroundRectangle, children: mapOrderTopLabel)
        //mapOrderOldPaperbackground.addChild(mapOrderTopLabel)
        
        //middle label with order selection instructions
        let mapOrderMiddleLabel:SKLabelNode = StartMenuMethods().mapOrderTwoLineLabelDefaults()
        mapOrderMiddleLabel.name = "mapOrderMiddleLabel"
        mapOrderMiddleLabel.position = CGPoint(x:72, y:-15)
        mapOrderMiddleLabel.text = "Selecciona el orden de los objetivos en el menú desplegable\n\t   (Select the target order from the drop-downmenu)"
        addChildSKLabelNodeToParentSKSPriteNode(parent: mapOrderBackgroundRectangle, children: mapOrderMiddleLabel)
        //mapOrderOldPaperbackground.addChild(mapOrderMiddleLabel)
        
        //Arrow drawing on top of top gray drop down tab
        let dropDownArrow:SKSpriteNode = StartMenuMethods().dropDownArrowBPToSKSpritenode()
        dropDownArrow.name = "dropDownArrow"
        dropDownArrow.position = CGPoint(x:80,y:-0.5)
        addChildSKSpriteNodeToParentSKSPriteNode(parent: dropDownLabelBG, children: dropDownArrow)
        //dropDownLabelBG.addChild(dropDownArrow)
        
        //left top label
        let mapOrderSingleLineLabel:SKLabelNode = StartMenuMethods().creditsSingleLineLabelDefaults()
        mapOrderSingleLineLabel.name = "mapOrderSingleLineLabel"
        mapOrderSingleLineLabel.fontSize = 14
        mapOrderSingleLineLabel.text = "Mapa (Map)"
        addChildSKLabelNodeToParentSKSPriteNode(parent: mapOrderBackgroundRectangle, children: mapOrderSingleLineLabel)
        //mapOrderOldPaperbackground.addChild(mapOrderSingleLineLabel)
        mapOrderSingleLineLabel.position = CGPoint(x:-165, y:46)
        
        //left bottom label
        let mapOrderSingleLineLabelTwo:SKLabelNode = StartMenuMethods().creditsSingleLineLabelDefaults()
        mapOrderSingleLineLabelTwo.name = "mapOrderSingleLineLabelTwo"
        mapOrderSingleLineLabelTwo.fontSize = 14
        mapOrderSingleLineLabelTwo.text = "Orden (Order)"
        addChildSKLabelNodeToParentSKSPriteNode(parent: mapOrderBackgroundRectangle, children: mapOrderSingleLineLabelTwo)
        //mapOrderOldPaperbackground.addChild(mapOrderSingleLineLabelTwo)
        mapOrderSingleLineLabelTwo.position = CGPoint(x:-156, y:-25.0)
        
        //Arrow drawing on top of bottom gray drop down tab
        let dropDownArrowTwo:SKSpriteNode = StartMenuMethods().dropDownArrowBPToSKSpritenode()
        dropDownArrowTwo.name = "dropDownArrowTwo"
        dropDownArrowTwo.position = CGPoint(x:80,y:-0.5)
        addChildSKSpriteNodeToParentSKSPriteNode(parent: dropDownLabelBGTwo, children: dropDownArrowTwo)
        //dropDownLabelBGTwo.addChild(dropDownArrowTwo)//se anade como hijo del dropdown tab
         
        //green button top label
        let mapOrderGreenButtonTopLabel:SKLabelNode = StartMenuMethods().mapOrderButtonsTopLabelsDefault()
        mapOrderGreenButtonTopLabel.name = "mapOrderGreenButtonTopLabel"
        mapOrderGreenButtonTopLabel.text = "Siguiente"
        addChildSKLabelNodeToParentSKSPriteNode(parent: mapOrderGreenButton, children: mapOrderGreenButtonTopLabel)
        //mapOrderGreenButton.addChild(mapOrderGreenButtonTopLabel)
        
        //green button bottom label
        let mapOrderGreenButtonBottomLabel:SKLabelNode = StartMenuMethods().mapOrderButtonsBottomLabelsDefault()
        mapOrderGreenButtonBottomLabel.name = "mapOrderGreenButtonBottomLabel"
        mapOrderGreenButtonBottomLabel.text = "(Next)"
        addChildSKLabelNodeToParentSKSPriteNode(parent: mapOrderGreenButton, children: mapOrderGreenButtonBottomLabel)
        //mapOrderGreenButton.addChild(mapOrderGreenButtonBottomLabel)
       
        //red button top label
        let mapOrderRedButtonTopLabel:SKLabelNode = StartMenuMethods().mapOrderButtonsTopLabelsDefault()
        mapOrderRedButtonTopLabel.name = "mapOrderGreenButtonTopLabel"
        mapOrderRedButtonTopLabel.text = "Volver"
        addChildSKLabelNodeToParentSKSPriteNode(parent: mapOrderRedButton, children: mapOrderRedButtonTopLabel)
        //mapOrderRedButton.addChild(mapOrderRedButtonTopLabel)
        
        //red button bottom label
        let mapOrderRedButtonBottomLabel:SKLabelNode = StartMenuMethods().mapOrderButtonsBottomLabelsDefault()
        mapOrderRedButtonBottomLabel.name = "mapOrderGreenButtonBottomLabel"
        mapOrderRedButtonBottomLabel.text = "(Return)"
        addChildSKLabelNodeToParentSKSPriteNode(parent: mapOrderRedButton, children: mapOrderRedButtonBottomLabel)
        //mapOrderRedButton.addChild(mapOrderRedButtonBottomLabel)
    }
    //Function set game mode selection objects to be evaluated in touch function
    func setMainGameModeSelectionObjects(){
        
        //Parent is the rectangle containing the objects for game mode selection screen
        gameModeSelectionBackgroundRectangle.name = "gameModeSelectionBackgroundRectangle"
        gameModeSelectionBackgroundRectangle.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        
        //green button
        gameModeSelectionGreenButton.name = "gameModeSelectionGreenButton"
        gameModeSelectionGreenButton.position = CGPoint(x:-90, y:50)
        addChildSKSpriteNodeToParentSKSPriteNode(parent: gameModeSelectionBackgroundRectangle, children: gameModeSelectionGreenButton)
        //gameModeSelectionOldPaperbackground.addChild(gameModeSelectionGreenButton)
        
        //button label "Modo de Reto (Challenge Mode)"
        gameModeSelectionGreenButtonLabel.name = "gameModeSelectionGreenButtonLabel"
        gameModeSelectionGreenButtonLabel.text = "  Modo de Reto \n(Challenge Mode)"
        addChildSKLabelNodeToParentSKSPriteNode(parent: gameModeSelectionGreenButton, children: gameModeSelectionGreenButtonLabel)
        //gameModeSelectionGreenButton.addChild(gameModeSelectionGreenButtonLabel)
        
        //blue button
        gameModeSelectionBlueButton.name = "gameModeSelectionBlueButton"
        gameModeSelectionBlueButton.position = CGPoint(x:90, y:50)
        addChildSKSpriteNodeToParentSKSPriteNode(parent: gameModeSelectionBackgroundRectangle, children: gameModeSelectionBlueButton)
        //gameModeSelectionOldPaperbackground.addChild(gameModeSelectionBlueButton)
        
        //blue button label
        gameModeSelectionBlueButtonLabel.name = "gameModeSelectionBlueButtonLabel"
        gameModeSelectionBlueButtonLabel.text = "  Modo de Práctica \n   (Practice Mode)"
        addChildSKLabelNodeToParentSKSPriteNode(parent: gameModeSelectionBlueButton, children: gameModeSelectionBlueButtonLabel)
        //gameModeSelectionBlueButton.addChild(gameModeSelectionBlueButtonLabel)
        
        //red button
        gameModeSelectionRedButton.name = "gameModeSelectionRedButton"
        gameModeSelectionRedButton.position = CGPoint(x:0,y:-55)
        addChildSKSpriteNodeToParentSKSPriteNode(parent: gameModeSelectionBackgroundRectangle, children: gameModeSelectionRedButton)
        //gameModeSelectionOldPaperbackground.addChild(gameModeSelectionRedButton)
    }
    //Function init and set objects when game mode selection screen is rendered, not needed for evaluation for touch function
    func initSetSecondaryGameModeSelectionObjects(){
       //on game mode selection screen instructions label at the left
       let gameModeSelectionLabel:SKLabelNode = StartMenuMethods().modeSelectionLabelDefaults()
       gameModeSelectionLabel.name = "gameModeSelectionLabel"
       gameModeSelectionLabel.text = "Juega con un mapa en blanco.\nTiempo más rápido se guardará.\n  (Play with a blank map.\n  Fastest time will be saved)"
       gameModeSelectionLabel.position = CGPoint(x:-87,y:-25)
       addChildSKLabelNodeToParentSKSPriteNode(parent: gameModeSelectionBackgroundRectangle, children: gameModeSelectionLabel)
       //gameModeSelectionOldPaperbackground.addChild(gameModeSelectionLabel)
       
       //on game mode selection screen instructions label at the right
       let gameModeSelectionLabelTwo:SKLabelNode = StartMenuMethods().modeSelectionLabelDefaults()
       gameModeSelectionLabelTwo.name = "gameModeSelectionLabelTwo"
       gameModeSelectionLabelTwo.text = "Juega con nombres ya en el mapa.\n\t Tiempo no se guardará.\n(Play with names already on the map.\n\tTime will not be saved)"
       gameModeSelectionLabelTwo.preferredMaxLayoutWidth = 160
       gameModeSelectionLabelTwo.position = CGPoint(x:105,y:-26)
       addChildSKLabelNodeToParentSKSPriteNode(parent: gameModeSelectionBackgroundRectangle, children: gameModeSelectionLabelTwo)
       //gameModeSelectionOldPaperbackground.addChild(gameModeSelectionLabelTwo)
    }
    
    func scaleAndRepositionMapaclickBanner(){
        mapaClickBanner.setScale(0.4)
        mapaClickBanner.position = CGPoint(x:180, y:-160.0)//y:-150.5)
    }
    
    //Touched node evaluation when main menu screen is rendered at launch
    /**returnVolver object(This object is a stand alone object meaning it have no children or node parent besides self, this was done due its used across different groups of objects(Mejores tiempos objs,instrucciones objs,opciones objs and creditos objcs). It was more legible code and easier to understand(like a stand alone objct) .*/
    func mainMenuTouchNodes(nodeTouched:SKPhysicsBody){
        //buttonGreen: When buttongreen is pressed the main menu objects are removed and mapOrder objects are added to the scene
        if(buttonGreen.name == nodeTouched.node?.name){
            buttonGreen.removeFromParent()
            //initialization of mapOrder secondary objects, this line will execute once as you don't need your variables to be reinitialized everytime the button is touched.
            if mapOrderObjectsNotInitSet == true{
                initSetSecondaryMapOrderObjects()
                print("inicializando mapOrderObject")//programmer use
                mapOrderObjectsNotInitSet = false//line change value to false preventing the execution from reentering and reinitialize the objects again
            }
            scaleAndRepositionMapaclickBanner()
            addChildSKSPriteNodeToself(children: mapOrderBackgroundRectangle)
            //self.addChild(mapOrderOldPaperbackground)//parent(containing mapOrder objects) is added to the scene
            
        }
        
        /**button "Mejores Tiempos" When pressed the main menu objects are removed and bestTimes objects and returnVolver objec are added to the scene*/
        else if (redButtonOne.name == nodeTouched.node?.name){
            buttonGreen.removeFromParent()//removing parent of main menu objects
            //initialization of bestTimes objects, this line will execute once as you don't need your variables to be reinitialized everytime the button is touched.
            if bestTimesObjectsNotInitSet == true{
                initSetBestTimesBoardObjects()
                bestTimesObjectsNotInitSet = false//line change value to false preventing the execution from reentering and reinitialize the objects
            }
            if returnVolverRedButton == nil{/*returnVolver button is not initialized until needed(if Mejores tiempos, Instrucciones or Opciones are pressed) also this prevent it from being reinitialized on memory each time bestTimes button is pressed **/
                initReturnVolverRedButtonObject()
                print("outside")
            }
            scaleAndRepositionMapaclickBanner()
            addChildSKSPriteNodeToself(children: bestTimesRectangle)
            addChildSKSPriteNodeToself(children: returnVolverRedButton)
            //self.addChild(bestTimesRectangle)//parent containing bestTimes objects
            //self.addChild(returnVolverRedButton)//read comments at the top
        }
        
        //button Instrucciones when pressed main menu opbjects are removed and spanish instructions with a couple of objects(english button and red arrow button) are rendered and returnVolver button
        else if (redButtonTwo.name == nodeTouched.node?.name){
            buttonGreen.removeFromParent()
            
            if returnVolverRedButton == nil{/*returnVolver button is not initialized until needed(if Mejores tiempos, Instrucciones or Opciones are pressed) also this prevent it from being reinitialized on memory each time bestTimes button is pressed **/
                initReturnVolverRedButtonObject()
                print("inside")
            }
            addChildSKLabelNodeToself(children: instructionsEspanolLabel)
            addChildSKSPriteNodeToself(children: returnVolverRedButton)
            scaleAndRepositionMapaclickBanner()
            //self.addChild(instructionsEspanolLabel)//First label with spanish instructions parent to two more objects
            //self.addChild(returnVolverRedButton)//read comments at the top

        }
        //Opciones button when pressed main menu objects are removed and opcionesAudioLabel parent added with children
        else if (redButtonThree.name == nodeTouched.node?.name){
            buttonGreen.removeFromParent()//removes button green and its children
            /**Init object not needed on touch evalation objects are only initialized if button  opciones is pressed*/
            if opcionesObjectsNotInitSet == true{
                initSetSecondaryOpcionesObjects()
                opcionesObjectsNotInitSet = false//line change value to false preventing the execution from reentering and reinitialize the objects once been initialized
            }
            /*returnVolver button is not initialized until needed(if Mejores tiempos, Instrucciones or Opciones are pressed) also this prevent it from being reinitialized on memory each time opciones button is pressed **/
            if returnVolverRedButton == nil{
                initReturnVolverRedButtonObject()
                print("wisin y yandel")//programmer use
            }
            /*Due StartMenu.backgroundMusicOn is a static variable it will hold it's value even between transitions of scenes. So that we are able to keep StartMenu.backgroundMusicOn default value(true/background music enabled) in between scenes transitions or to keep user changes to defaults in between scenes transitions. In this instance StartMenu.backgroundMusicOn is evaluated in order for the scene to acknowledge if it must render the checkmark or not.**/
            if StartMenu.backgroundMusicOn == true{
                addChildSKSpriteNodeToParentSKSPriteNode(parent:opcionesCheckbox,children:opcionesCheckmark)
                //opcionesCheckbox.addChild(opcionesCheckmark)
            }
            /*Due StartMenu.gamePlaySoundOn is a static variable it will hold it's value even between transitions of scenes. So that we are able to keep StartMenu.gamePlaySoundOn default value(true/background music enabled) in between scenes transitions or to keep user changes to defaults in between scenes transitions. In this instance StartMenu.gamePlaySoundOn is evaluated in order to acknowledge if it must render the checkmark or not.**/
            if StartMenu.gamePlaySoundOn == true{
                addChildSKSpriteNodeToParentSKSPriteNode(parent:opcionesCheckboxTwo,children:opcionesCheckmarkTwo)
                //opcionesCheckboxTwo.addChild(opcionesCheckmarkTwo)
            }
            /** opciones is the label parent on opciones screen*/
            addChildSKLabelNodeToself(children: opcionesAudioLabel)
            addChildSKSPriteNodeToself(children: returnVolverRedButton)
            scaleAndRepositionMapaclickBanner()
            //self.addChild(opcionesAudioLabel)//Parent added with children
            //self.addChild(returnVolverRedButton)
        }
    }
    /**Touch evaluation  for returnVolver button only button rendered on best times view, when pressed bestTimesRectangle(parent) is removed with children and main menu objects are rendered*/
    func bestTimesTouchNodes(nodeTouched:SKPhysicsBody){
        if (returnVolverRedButton.name == nodeTouched.node?.name /*&& bestTimesRectangle.parent != nil*/){
           returnVolverRedButton.removeFromParent()
           bestTimesRectangle.removeFromParent()
           scaleMapaclickBannerToOriginalSizeAndOriginalPosition()
           addChildSKSPriteNodeToself(children: buttonGreen)
           //self.addChild(buttonGreen)
        }
    }
    /** touch evaluation to navigate along and out of the Instrucciones objects*/
    func instructionsTouchNodes(nodeTouched:SKPhysicsBody){
        /**redArrowButtonEspanolLabel moves  to Instrucciones spanish second label (instructionsEspanolLabelTwo)*/
        if (redArrowButtonEspanolLabel.name == nodeTouched.node?.name){
            instructionsEspanolLabel.removeFromParent()
            addChildSKLabelNodeToself(children: instructionsEspanolLabelTwo)
            //self.addChild(instructionsEspanolLabelTwo)
        }
        /**instructionsEspanolLabelTwo(parent) is removed and instructionsEspanolLabel(parent) added. In general this is returning from spanish instructions second label to spanish instructions first label*/
        else if (redArrowButtonEspanolLabelTwo.name == nodeTouched.node?.name){
            instructionsEspanolLabelTwo.removeFromParent()
           addChildSKLabelNodeToself(children: instructionsEspanolLabel)
            //self.addChild(instructionsEspanolLabel)
        }
        /**englishButton instructionsEspanolLabel is removed to display first english instructions first label(instructionsEnglishLabel) */
        else if (englishButton.name == nodeTouched.node?.name){
            instructionsEspanolLabel.removeFromParent()
            addChildSKLabelNodeToself(children: instructionsEnglishLabel)
            //self.addChild(instructionsEnglishLabel)
        }
        /**instructionsEspanolLabel is removed and spanish instructions first label is added to view*/
        else if (espanolButton.name == nodeTouched.node?.name){
            instructionsEnglishLabel.removeFromParent()
            //instructionsEspanolLabel.addChild(englishButton)
            addChildSKLabelNodeToself(children: instructionsEspanolLabel)
            //self.addChild(instructionsEspanolLabel)
        }
        /**instructionsEnglishLabel is removed to add second english instructions label*/
        else if (redArrowButtonEnglishLabel.name == nodeTouched.node?.name){
            instructionsEnglishLabel.removeFromParent()
            //instructionsEspanolLabel.addChild(englishButton)
            addChildSKLabelNodeToself(children: instructionsEnglishLabelTwo)
            //self.addChild(instructionsEnglishLabelTwo)
        }
        /**instructionsEnglishLabelTwo is removed and first english instruction label added*/
        else if (redArrowButtonEnglishLabelTwo.name == nodeTouched.node?.name){
            instructionsEnglishLabelTwo.removeFromParent()
            addChildSKLabelNodeToself(children: instructionsEnglishLabel)
            //self.addChild(instructionsEnglishLabel)
        }
       
       /**the following manages the touch evaluation for returnVolver in order to return to main menu from the Instrucciones view (screens)*/
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
            scaleMapaclickBannerToOriginalSizeAndOriginalPosition()
            addChildSKSPriteNodeToself(children: buttonGreen)
            //self.addChild(buttonGreen)
            
        }
    }
    
    func scaleMapaclickBannerToOriginalSizeAndOriginalPosition(){
        mapaClickBanner.setScale(1.0)
        mapaClickBanner.position = CGPoint(x: 0.5, y: 145)
    }
    /**Touched nodes evaluation when mapOrder parent mapOrderBackgroundRectangle and children are rendered*/
    func mapOrderTouchNodes(nodeTouched:SKPhysicsBody){
        /**General explanation: in this instance when button green is pressed bottom drop down menu will close and highlighted selection(or last selection) label text attribute is passed to dropDownArrowLabelTwo, developer wanted drop down menus closed before moving to next view .
         The execution enters when orderDropDownMenu(bottom drop down menu) is rendered but the green button is touched, removing the drop downmenu from view
         and adding the label dropDownArrowLabelTwo on top of dropDownLabelBGTwo that was removed  when order orderDropDownMenu (bottom drop down menu) is displayed.
         */
        if mapOrderGreenButton.name == nodeTouched.node?.name && orderDropDownMenu.parent != nil{
             orderDropDownMenu.removeFromParent()
             passHighlightedTextTodropDownArrowLabelTwo()
             addChildSKLabelNodeToParentSKSPriteNode(parent: dropDownLabelBGTwo, children: dropDownArrowLabelTwo)
             //dropDownLabelBGTwo.addChild(dropDownArrowLabelTwo)
         }
         /**General explanation:in this instance when button green is pressed top drop down menu will close, developer wanted drop down menus closed before moving to next view.
         The execution enters when mapOrderCountryDropDownMenu(top drop down menu) is rendered but the green button is touched, removing the drop downmenu from view
         and adding the label dropDownArrowLabel on top of dropDownLabelBG that was removed  when order mapOrderCountryDropDownMenu (top drop down menu) is displayed.
         */
         else if mapOrderGreenButton.name == nodeTouched.node?.name && mapOrderCountryDropDownMenu.parent != nil {
             mapOrderCountryDropDownMenu.removeFromParent()
             addChildSKLabelNodeToParentSKSPriteNode(parent: dropDownLabelBG, children: dropDownArrowLabel)
             //dropDownLabelBG.addChild(dropDownArrowLabel)
         }
         /* When mapOrderGreenButton is touched mapOrder parent mapOrderBackgroundRectangle is removed and gameModeSelection parent(with its children) is added to the view**/
         else if(mapOrderGreenButton.name == nodeTouched.node?.name){
             mapOrderBackgroundRectangle.removeFromParent()
             if gameModeSelectionObjectsNotInitSet == true{
                 initSetSecondaryGameModeSelectionObjects()
                 gameModeSelectionObjectsNotInitSet = false
             }
             addChildSKSPriteNodeToself(children: gameModeSelectionBackgroundRectangle)
             //self.addChild(gameModeSelectionOldPaperbackground)
         }
         
         /**General explanation: in this instance when buttonr ed is pressed bottom drop down menu will close and highlighted selection(or last selection) label text attribute is passed to dropDownArrowLabelTwo which is added to the view on top of dropDownLabelBGTwo(bottom drop down tab), developer wanted drop down menus closed before moving to next view .*/
        else if mapOrderRedButton.name == nodeTouched.node?.name && orderDropDownMenu.parent != nil{
            orderDropDownMenu.removeFromParent()
            passHighlightedTextTodropDownArrowLabelTwo()
            addChildSKLabelNodeToParentSKSPriteNode(parent: dropDownLabelBGTwo, children: dropDownArrowLabelTwo)
            //dropDownLabelBGTwo.addChild(dropDownArrowLabelTwo)
             
         }
         /**General explanation:in this instance when button red is pressed top drop down menu will close, developer wanted drop down menus closed before moving to next view.
         The execution enters when mapOrderCountryDropDownMenu(top drop down menu) is rendered but the red button is touched, removing the drop downmenu from view
         and adding the label dropDownArrowLabel on top of dropDownLabelBG that was removed  when order mapOrderCountryDropDownMenu (top drop down menu) is displayed.
         */
         else if mapOrderRedButton.name == nodeTouched.node?.name && mapOrderCountryDropDownMenu.parent != nil {
             mapOrderCountryDropDownMenu.removeFromParent()
             addChildSKLabelNodeToParentSKSPriteNode(parent: dropDownLabelBG, children: dropDownArrowLabel)
             //dropDownLabelBG.addChild(dropDownArrowLabel)
         }
         /* When mapOrderRedButton is touched mapOrder parent mapOrderOldPaperbackground is removed and buttonGreen parent of main menu objs is added to the view**/
         else if mapOrderRedButton.name == nodeTouched.node?.name{
             mapOrderBackgroundRectangle.removeFromParent()
             scaleMapaclickBannerToOriginalSizeAndOriginalPosition()
             addChildSKSPriteNodeToself(children: buttonGreen)
             //self.addChild(buttonGreen)
         }
          /*General explanation: Developer wanted that only one drop down menu is rendered at a time, so that if user tries to open a second drop down menu the one originally open will close.
             The execution will enter here when dropDownArrowLabel(top drop down tab label ) is pressed but orderDropDownMenu is rendered. orderDropDownMenu is removed from view and dropDownArrowLabelTwo
             added with the selection highlighted in yellow by orderDropDownMenuYellowBG or orderDropDownMenuYellowBGTwo**/
         
         else if (dropDownArrowLabel.name == nodeTouched.node?.name && orderDropDownMenu.parent != nil){
             /**When first label of  bottom drop down menu is highlighted*/
             if orderDropDownMenuYellowBG.parent != nil {
                if dropDownArrowLabelTwo.text != orderDropDownMenuLabel.text{
                 dropDownArrowLabelTwo.text = orderDropDownMenuLabel.text
                 redifinePhysicsBodyAfterLabelTextAttributeRedefinedAsAlfabeticoAlphabetic(label:dropDownArrowLabelTwo)
                }
             }
            /**When second label of bottom drop down menu is highlighted*/
             else if orderDropDownMenuYellowBGTwo.parent != nil{
                 if dropDownArrowLabelTwo.text != orderDropDownMenuLabelTwo.text{
                  dropDownArrowLabelTwo.text = orderDropDownMenuLabelTwo.text
                  redifinePhysicsBodyAfterLabelTextAttributeRedefinedAsAlAzarRandom(label:dropDownArrowLabelTwo)
                 }
                 
             }
             
             orderDropDownMenu.removeFromParent()
             addChildSKLabelNodeToParentSKSPriteNode(parent: dropDownLabelBGTwo, children: dropDownArrowLabelTwo)
             //dropDownLabelBGTwo.addChild(dropDownArrowLabelTwo)
         }
         
         /**When dropDownArrowLabel(default text "Puerto Rico") is touched,  dropDownArrowLabel is removed and top drop down menu rendered */
         else if (dropDownArrowLabel.name == nodeTouched.node?.name){
             
             dropDownArrowLabel.removeFromParent()
             addChildSKSpriteNodeToParentSKSPriteNode(parent: mapOrderBackgroundRectangle, children: mapOrderCountryDropDownMenu)
             //mapOrderOldPaperbackground.addChild(mapOrderCountryDropDownMenu)
             
            /**The following statement adds to drop down menu (mapOrderCountryDropDownMenu) mapOrderCountryDropDownMenuYellowBG(yellow background) and dropDownMenuLabelPR(text:"Puerto Rico") . The statements :&& mapOrderCountryDropDownMenuYellowBG.parent == nil && dropDownMenuLabelPR.parent == nil prevents mapOrderCountryDropDownMenuYellowBG and dropDownMenuLabelPR from being re-added to parent if they have already been added previously */
             if dropDownArrowLabel.text == dropDownMenuLabelPR.text && mapOrderCountryDropDownMenuYellowBG.parent == nil && dropDownMenuLabelPR.parent == nil{
                 print("entre")
                 addChildSKSpriteNodeToParentSKSPriteNode(parent: mapOrderCountryDropDownMenu, children: mapOrderCountryDropDownMenuYellowBG)
                 //mapOrderCountryDropDownMenu.addChild(mapOrderCountryDropDownMenuYellowBG)
                 addChildSKLabelNodeToParentSKSPriteNode(parent: mapOrderCountryDropDownMenu, children: dropDownMenuLabelPR)
                 //mapOrderCountryDropDownMenu.addChild(dropDownMenuLabelPR)
             }

         }
         /**Execution will enter here when top drop down menu is on display,  when  dropDownMenuLabelPR is touched or selected  removes drop down menu from view and gives its text value  to dropDownArrowLabel(label over top drop down menu tab) and also add it to the view*/
         else if (dropDownMenuLabelPR.name == nodeTouched.node?.name){
            if dropDownArrowLabel.text != dropDownMenuLabelPR.text{
                dropDownArrowLabel.text = dropDownMenuLabelPR.text
            }
             mapOrderCountryDropDownMenu.removeFromParent()
             addChildSKLabelNodeToParentSKSPriteNode(parent: dropDownLabelBG, children: dropDownArrowLabel)
             //dropDownLabelBG.addChild(dropDownArrowLabel)

         }
        
         /**General explanation: This statement evaluate if at the time of pressing dropDownArrowLabelTwo(label over bottom drop down menu tab)  there is also the top drop down menu on display */
         else if (dropDownArrowLabelTwo.name == nodeTouched.node?.name && mapOrderCountryDropDownMenu.parent != nil){
            /**Before closing the drop down menu dropDownMenuLabelPR text value is passed to dropDownArrowLabel to be added to the view to the view (over the top drop down tab)in the last statement  */
             if mapOrderCountryDropDownMenuYellowBG.parent != nil {
                 dropDownArrowLabel.text = dropDownMenuLabelPR.text
             }
             
             mapOrderCountryDropDownMenu.removeFromParent()
             addChildSKLabelNodeToParentSKSPriteNode(parent: dropDownLabelBG, children: dropDownArrowLabel)
             //dropDownLabelBG.addChild(dropDownArrowLabel)
         }
         /**When the label on top of  bottom drop down tab is pressed the same label is removed from view and bottom drop down menu displayed*/
         else if (dropDownArrowLabelTwo.name == nodeTouched.node?.name){
             //remuevo el label del dropdown tab
             dropDownArrowLabelTwo.removeFromParent()
             addChildSKSpriteNodeToParentSKSPriteNode(parent: mapOrderBackgroundRectangle, children: orderDropDownMenu)
             //mapOrderOldPaperbackground.addChild(orderDropDownMenu)
             
            /**The following is evaluating whether at the moment dropDownArrowLabelTwo is pressed, if the selection at the drop down menu is the first label (default highlighted in yellow) and whether orderDropDownMenu children have been added,**/
             /**this evaluation will proof false when in a previous selection the second label is the selection.(see following else if statement)*/
             /*When this condition is true it will add to the view(on top of orderDropDownMenu) the labels for "Alfabetico" and "Al Azar" and will place the highlighted yellow backgroud under the
             first label(**This is the default arrangement when  dropDownArrowLabelTwo is pressed the first time**)*/
             /**The execution will  enter this block always the first time dropDownArrowLabelTwo is pressed */
             /**This statements: && orderDropDownMenuYellowBG.parent == nil && orderDropDownMenuLabel.parent == nil && orderDropDownMenuLabelTwo.parent == nil will prevent the children from being added if the are already added to their parenrt*/
             if dropDownArrowLabelTwo.text == orderDropDownMenuLabel.text && orderDropDownMenuYellowBG.parent == nil && orderDropDownMenuLabel.parent == nil && orderDropDownMenuLabelTwo.parent == nil{
                 addChildSKSpriteNodeToParentSKSPriteNode(parent: orderDropDownMenu, children: orderDropDownMenuYellowBG)
                 //orderDropDownMenu.addChild(orderDropDownMenuYellowBG)
                 addChildSKLabelNodeToParentSKSPriteNode(parent: orderDropDownMenu, children: orderDropDownMenuLabel)
                 //orderDropDownMenu.addChild(orderDropDownMenuLabel)
                 orderDropDownMenuLabelTwo.fontColor = .white
                 addChildSKLabelNodeToParentSKSPriteNode(parent: orderDropDownMenu, children: orderDropDownMenuLabelTwo)
                 //orderDropDownMenu.addChild(orderDropDownMenuLabelTwo)
                 
             }
             /**(see commets above)Execution enters here when the selection is(previously selected/non default) the second label and will add the yellow background  under second label*/
             else if dropDownArrowLabelTwo.text == orderDropDownMenuLabelTwo.text && orderDropDownMenuYellowBGTwo.parent == nil && orderDropDownMenuLabelTwo.parent == nil && dropDownArrowLabelTwo.parent == nil {
                 addChildSKSpriteNodeToParentSKSPriteNode(parent: orderDropDownMenu, children: orderDropDownMenuYellowBGTwo)
                 //orderDropDownMenu.addChild(orderDropDownMenuYellowBGTwo)
                 addChildSKLabelNodeToParentSKSPriteNode(parent: orderDropDownMenu, children: orderDropDownMenuLabelTwo)
                 //orderDropDownMenu.addChild(orderDropDownMenuLabelTwo)
                 orderDropDownMenuLabel.fontColor = .white
                 addChildSKLabelNodeToParentSKSPriteNode(parent: orderDropDownMenu, children: orderDropDownMenuLabel)
                 orderDropDownMenu.addChild(orderDropDownMenuLabel)
             }
         }
        /**The execution enters here when orderDropDownMenuLabel(first label bottom drop down menu ) is selected,  but previously orderDropDownMenuLabelTwo was the selection.
             General explanation: orderDropDownMenuLabel is selected and highlighted its text color chaged to black indicating is the current selection and  orderDropDownMenuLabelTwo highlight is removed and text color change to white*/
        else if (orderDropDownMenuLabel.name == nodeTouched.node?.name && orderDropDownMenuYellowBGTwo.parent != nil ){
           orderDropDownMenuYellowBGTwo.removeFromParent()
           addChildSKSpriteNodeToParentSKSPriteNode(parent: orderDropDownMenu, children: orderDropDownMenuYellowBG)
           //orderDropDownMenu.addChild(orderDropDownMenuYellowBG)
           orderDropDownMenuLabel.fontColor = .black
           orderDropDownMenuLabelTwo.fontColor = .white
        }
            
         /*orderDropDownMenuLabel is the first label inside bottom drop down menu**/
         else if (orderDropDownMenuLabel.name == nodeTouched.node?.name){
             /*Following condition is predeterminded as default(where orderDropDownMenuLabel and  dropDownArrowLabelTwo text attribute is the same) in such scenario when orderDropDownMenuLabel is pressed  orderDropDownMenu is removed and dropDownArrowLabelTwo added on top of dropDownLabelBGTwo(drop down tab) */
             if orderDropDownMenuLabel.text == dropDownArrowLabelTwo.text{
                 orderDropDownMenu.removeFromParent()
                 //dropDownLabelBGTwo.addChild(dropDownArrowLabelTwo)//como se habia removido en el bloque anterior tenemos que volver a anadir al redering
             }
             /*On the contrary when  orderDropDownMenuLabel is pressed and its text is different from dropDownArrowLabelTwo due previous selection of  "Al Azar"*/
            /**In such scenario orderDropDownMenu is removed from view and the text of the new selection "Alfabetico" y passed to dropDownArrowLabelTwo(label on top of bottom drop down tab(dropDownLabelBGTwo)) */
             else if orderDropDownMenuLabel.text != dropDownArrowLabelTwo.text{
                 orderDropDownMenu.removeFromParent()
                 /*Reescribe label elimina el phisics body que tenia y que se podria haber afectado por reajustes previos de posicionamiento y se vuelve a definir con respecto al posicionamiento
                 aqui otorgado*/
                 dropDownArrowLabelTwo.text = orderDropDownMenuLabel.text
                 redifinePhysicsBodyAfterLabelTextAttributeRedefinedAsAlfabeticoAlphabetic(label:dropDownArrowLabelTwo)
                /**When  label text attribute is passed to another label the text rendering result might not be as expected(maybe a glitch)  in this scenario when  text attribute("ALfabetico(ALphabetic)") is passed to dropDownArrowLabelTwo, the text rendered more towards the center of the drop down tab, what requires the label tobe repositioned to the left, as a result of this is necessary to also reposition the physics body (but due Physics bodies can't be repositioned) so Physics body is set to nil or removed and redifined with new position*/
                 /*dropDownArrowLabelTwo.physicsBody = nil
                 dropDownArrowLabelTwo.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:179, height:9.5), center: CGPoint(x:26, y: 4.5))
                 dropDownArrowLabelTwo.physicsBody?.isDynamic = false
                 dropDownArrowLabelTwo.position = CGPoint(x:-26.0,y:-4.5)
                 dropDownLabelBGTwo.addChild(dropDownArrowLabelTwo)*/
                
                /**The next block sets the objects inside orderDropDownMenu for the next time dropDownArrowLabelTwo is pressed and orderDropDownMenu displayed */
                 //orderDropDownMenuYellowBGTwo.removeFromParent()
                 //orderDropDownMenuLabel.fontColor = .black
                 //orderDropDownMenuLabelTwo.fontColor = .white
                 //orderDropDownMenuLabel.zPosition = 1
                 //orderDropDownMenu.addChild(orderDropDownMenuYellowBG)

            }
            addChildSKLabelNodeToParentSKSPriteNode(parent: dropDownLabelBGTwo, children: dropDownArrowLabelTwo)
            //dropDownLabelBGTwo.addChild(dropDownArrowLabelTwo)
         }
         /**The execution enters here when orderDropDownMenuLabelTwo(second label bottom drop down menu ) is selected,  but previously orderDropDownMenuLabel was the selection.
            General explanation: orderDropDownMenuLabelTwo is selected and highlighted its text color chaged to black indicating is the current selection and  orderDropDownMenuLabel highlight is removed and text color change to white*/
         else if (orderDropDownMenuLabelTwo.name == nodeTouched.node?.name && orderDropDownMenuYellowBG.parent != nil ){
            orderDropDownMenuYellowBG.removeFromParent()
            addChildSKSpriteNodeToParentSKSPriteNode(parent: orderDropDownMenu, children: orderDropDownMenuYellowBGTwo)
            //orderDropDownMenu.addChild(orderDropDownMenuYellowBGTwo)
            orderDropDownMenuLabel.fontColor = .white
            orderDropDownMenuLabelTwo.fontColor = .black
         }
         /**orderDropDownMenuLabelTwo second label at the bottom drop down menu*/
         else if (orderDropDownMenuLabelTwo.name == nodeTouched.node?.name){
             /**when  the condition below evaluate to true means that the previous selection was "Al Azar(Random)" and  that the selection will remain the same("Al Azar(Random)",
             in this scenario drop down menu(bottom) is removed and due their text attribute is the same dropDownArrowLabelTwo is re-added */
             if dropDownArrowLabelTwo.text == orderDropDownMenuLabelTwo.text{
                 orderDropDownMenu.removeFromParent()
                 //redifinePhysicsBodyAfterLabelTextAttributeRedefinedAsAlfabeticoAlphabetic(label:dropDownArrowLabelTwo)
                 //dropDownArrowLabelTwo.text = orderDropDownMenuLabelTwo.text
                 //dropDownLabelBGTwo.addChild(dropDownArrowLabelTwo)
             }
             
             /**Execution will enter here when orderDropDownMenuLabelTwo is pressed and the default selection is in place or where "Alfabetico(Alphabetic)" is the previous selection. On this instance orderDropDownMenu is removed from view
                and orderDropDownMenuLabelTwo text attribute is passed to  dropDownArrowLabelTwo*/
             else if dropDownArrowLabelTwo.text != orderDropDownMenuLabelTwo.text{
                 //orderDropDownMenu.alpha = 0.9
                 orderDropDownMenu.removeFromParent()
                 //dropDownArrowLabelTwo.text = ""
                 dropDownArrowLabelTwo.text = orderDropDownMenuLabelTwo.text
                 redifinePhysicsBodyAfterLabelTextAttributeRedefinedAsAlAzarRandom(label:dropDownArrowLabelTwo)
                /**When  label text attribute is passed to another label the text rendering result might not be as expected(maybe a glitch)  in this scenario when  text attribute("Al Azar(Random)" is passed to dropDownArrowLabelTwo, the text rendered more towards the center of the drop down tab, what requires the label to be repositioned to the left, as a result of this is necessary to also reposition the physics body (but due Physics bodies can't be repositioned) so Physics body is set to nil or removed and redifined with new position*/
                 /*dropDownArrowLabelTwo.physicsBody = nil
                 dropDownArrowLabelTwo.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:179, height:9.5), center: CGPoint(x:40, y: 4.5))
                 dropDownArrowLabelTwo.physicsBody?.isDynamic = false
                 dropDownArrowLabelTwo.position = CGPoint(x:-40.0,y:-4.5)//despues que escribimos el label hay reposicionarlo
                 dropDownLabelBGTwo.addChild(dropDownArrowLabelTwo)*/
                 
                /**The next block sets the objects inside orderDropDownMenu for the next time dropDownArrowLabelTwo is pressed and orderDropDownMenu displayed */
                 //orderDropDownMenuYellowBG.removeFromParent()
                 //orderDropDownMenuLabel.fontColor = .white
                 //orderDropDownMenuLabelTwo.fontColor = .black
                 //orderDropDownMenuLabelTwo.zPosition = 1
                 /*RECORDAR: orderDropDownMenuLabelTwo fue anadido previamente a orderDropDownMenu,*/
                 //orderDropDownMenu.addChild(orderDropDownMenuYellowBGTwo)
                 //orderDropDownMenuLabelTwo.zPosition = 1
             }
             addChildSKLabelNodeToParentSKSPriteNode(parent: dropDownLabelBGTwo, children: dropDownArrowLabelTwo)
             //dropDownLabelBGTwo.addChild(dropDownArrowLabelTwo)
         }
    }
    /**Touch evaluation for game mode selection view*/
    func gameModeTouchNodes(nodeTouched: SKPhysicsBody){
        /**gameModeSelectionGreenButton navigate the user to alphabetic game or random game based on the previous selections on mapOrder view*/
        if (gameModeSelectionGreenButton.name == nodeTouched.node?.name){
            if dropDownArrowLabel.text == "Puerto Rico" && dropDownArrowLabelTwo.text == "Alfabético (Alphabetic)"{
                let startScene = StartScene(size: self.size)
                //self.removeAllActions()
                //self.removeFromParent()
                self.view?.presentScene(startScene)
            }
            if dropDownArrowLabel.text == "Puerto Rico" && dropDownArrowLabelTwo.text == "Al Azar (Random)"{
                let randomGame = RandomGame(size: self.size)
                //self.removeAllActions()
                //self.removeFromParent()
                self.view?.presentScene(randomGame)
            }
            
        }
        /**gameModeSelectionBlueButton navigate user to practice alphabetical game or practice random game based on the selections done on previous mapOrder view*/
        else if (gameModeSelectionBlueButton.name == nodeTouched.node?.name){
            /**Selection for practiceAlphabeticGame*/
            if dropDownArrowLabel.text == "Puerto Rico" && dropDownArrowLabelTwo.text == "Alfabético (Alphabetic)"{
                StartMenu.playPracticeAlphabeticGame = true
                let practiceAlphabeticGame = PracticeAlphabeticGame(size: self.size)
                //self.removeAllActions()
                //self.removeFromParent()
                self.view?.presentScene(practiceAlphabeticGame)
            }
            /**Selection for practiceRandomGame*/
            if dropDownArrowLabel.text == "Puerto Rico" && dropDownArrowLabelTwo.text == "Al Azar (Random)"{
                StartMenu.playPracticeRandomGame = true
                let practiceRandomGame = PracticeRandomGame(size: self.size)
                //self.removeAllActions()
                //self.removeFromParent()
                self.view?.presentScene(practiceRandomGame)
            }
        }
        /**gameModeSelectionRedButton return user back to mapOrder view*/
        else if (gameModeSelectionRedButton.name == nodeTouched.node?.name){
            gameModeSelectionBackgroundRectangle.removeFromParent()
            addChildSKSPriteNodeToself(children: mapOrderBackgroundRectangle)
            //self.addChild(mapOrderOldPaperbackground)
        }
    }
    /**Touch evaluation for objects on the opciones view*/
    func opcionesTouchNodes(nodeTouched:SKPhysicsBody){
        /**manage top checkbox/checkmark to disable music*/
        if (opcionesCheckbox.name == nodeTouched.node?.name && opcionesCheckmark.parent != nil){
            opcionesCheckmark.removeFromParent()
            StartMenu.backgroundMusicOn = false
            //startMenuMusic.removeFromParent()
            musicPlayer.stop()
        }
         /**manage top checkbox/checkmark to enable music*/
        else if (opcionesCheckbox.name == nodeTouched.node?.name && opcionesCheckmark.parent == nil){
            addChildSKSpriteNodeToParentSKSPriteNode(parent:opcionesCheckbox,children:opcionesCheckmark)
            //opcionesCheckbox.addChild(opcionesCheckmark)
            StartMenu.backgroundMusicOn = true
            //self.addChild(startMenuMusic)
            initMusic()
        }
        /**The following two else ifs manage if sound is enabled or disabled*/
        else if (opcionesCheckboxTwo.name == nodeTouched.node?.name && opcionesCheckmarkTwo.parent != nil){
            opcionesCheckmarkTwo.removeFromParent()
            StartMenu.gamePlaySoundOn = false
        }
        else if (opcionesCheckboxTwo.name == nodeTouched.node?.name && opcionesCheckmarkTwo.parent == nil){
            addChildSKSpriteNodeToParentSKSPriteNode(parent:opcionesCheckboxTwo,children:opcionesCheckmarkTwo)
            //opcionesCheckboxTwo.addChild(opcionesCheckmarkTwo)
            StartMenu.gamePlaySoundOn = true
        }
        /**creditosButton when pressed wil navigate the user to creditos screen(view)*/
        else if (creditosButton.name == nodeTouched.node?.name){
            opcionesAudioLabel.removeFromParent()
            if creditsContainerChildrenNotInitSet == true{
                initSetcreditsContainerChildren()
                creditsContainerChildrenNotInitSet = false
            }
            addChildSKNodeToself(children: creditsContainer)
            //self.addChild(creditsContainer)
            addChildSKNodeToself(children: creditsContainerTwo)
            //self.addChild(creditsContainerTwo)
        }
        /**Manages touch evaluation for returnVolver button when it display in opciones view*/
        else if (returnVolverRedButton.name == nodeTouched.node?.name /*&& opcionesAudioLabel.parent != nil*/){
            returnVolverRedButton.removeFromParent()
            opcionesAudioLabel.removeFromParent()
            scaleMapaclickBannerToOriginalSizeAndOriginalPosition()
            addChildSKSPriteNodeToself(children: buttonGreen)
            //self.addChild(buttonGreen)
        }
    }
    /**Touch evaluation for returnVolverRedButton when it display in creditos view. Note that this is the only instance of returnVolverRedButton that navigates user to Opciones and not main menu*/
    func creditsTouchNodes(nodeTouched: SKPhysicsBody){
        if (returnVolverRedButton.name == nodeTouched.node?.name /*&& creditsContainer.parent != nil*/){
            creditsContainer.removeFromParent()
            creditsContainerTwo.removeFromParent()
            addChildSKLabelNodeToself(children: opcionesAudioLabel)
            //self.addChild(opcionesAudioLabel)
        }
    }
    /**Function is called when a label.text atribute is re-written  and its Physics body is redefined to be re alignned with its label also the label is repositioned as well for the same reason*/
    /**This is due(maybe a glitch) Physics bodies won't be aligned with its label when its text attribute is re written*/
    func redifinePhysicsBodyAfterLabelTextAttributeRedefinedAsAlAzarRandom(label:SKLabelNode){
         
        label.text = orderDropDownMenuLabelTwo.text
        /**When  label text attribute is passed to another label the text rendering result might not be as expected(maybe a glitch)  in this scenario when  text attribute("Al Azar(Random)" is passed to dropDownArrowLabelTwo, the text rendered more towards the center of the drop down tab, what requires the label to be repositioned to the left, as a result of this is necessary to also reposition the physics body (but due Physics bodies can't be repositioned) so Physics body is set to nil or removed and redifined with new position*/
         label.physicsBody = nil
         label.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:179, height:9.5), center: CGPoint(x:40, y: 4.5))
         label.physicsBody?.isDynamic = false
         label.position = CGPoint(x:-40.0,y:-4.5)//despues que escribimos el label hay reposicionarlo
         //dropDownLabelBGTwo.addChild(label)
         
    }
    /**Function is called when a label.text atribute is re-written  and its Physics body is redefined to be re alignned with its label also the label is repositioned as well for the same reason*/
    /**This is due(maybe a glitch) Physics bodies won't be aligned with its label when its text attribute is re written*/
    func redifinePhysicsBodyAfterLabelTextAttributeRedefinedAsAlfabeticoAlphabetic(label:SKLabelNode){
    
         label.text = orderDropDownMenuLabel.text
        /**When  label text attribute is passed to another label the text rendering result might not be as expected(maybe a glitch)  in this scenario when  text attribute("ALfabetico(ALphabetic)") is passed to dropDownArrowLabelTwo, the text rendered more towards the center of the drop down tab, what requires the label tobe repositioned to the left, as a result of this is necessary to also reposition the physics body (but due Physics bodies can't be repositioned) so Physics body is set to nil or removed and redifined with new position*/
         label.physicsBody = nil
         label.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:179, height:9.5), center: CGPoint(x:26, y: 4.5))
         label.physicsBody?.isDynamic = false
         label.position = CGPoint(x:-26.0,y:-4.5)
         //dropDownLabelBGTwo.addChild(label)
         
    }
    
    func passHighlightedTextTodropDownArrowLabelTwo(){
        if orderDropDownMenuLabel.parent != nil && orderDropDownMenuYellowBG.parent != nil{
                if dropDownArrowLabelTwo.text != orderDropDownMenuLabel.text{
                    dropDownArrowLabelTwo.text = orderDropDownMenuLabel.text
                    redifinePhysicsBodyAfterLabelTextAttributeRedefinedAsAlfabeticoAlphabetic(label:dropDownArrowLabelTwo)
                }
           }
        
           else if orderDropDownMenuLabelTwo.parent != nil && orderDropDownMenuYellowBGTwo.parent != nil{
                if dropDownArrowLabelTwo.text != orderDropDownMenuLabelTwo.text{
                    dropDownArrowLabelTwo.text = orderDropDownMenuLabelTwo.text
                    redifinePhysicsBodyAfterLabelTextAttributeRedefinedAsAlAzarRandom(label:dropDownArrowLabelTwo)
                }
           }
    }
    
    func addChildSKSpriteNodeToParentSKSPriteNode(parent:SKSpriteNode,children:SKSpriteNode){
       if children.parent == nil{
           parent.addChild(children)
       }
    }
    
    func addChildSKSPriteNodeToself(children:SKSpriteNode){
       if children.parent == nil{
           self.addChild(children)
       }
    }
    
    func addChildSKLabelNodeToself(children:SKLabelNode){
       if children.parent == nil{
           self.addChild(children)
       }
    }
    func addChildSKNodeToself(children:SKNode){
       if children.parent == nil{
           self.addChild(children)
       }
    }
    
    func addChildSKLabelNodeToParentSKSPriteNode(parent:SKSpriteNode,children:SKLabelNode){
       if children.parent == nil{
           parent.addChild(children)
       }
    }
    
    func addChildSKSpriteNodeToParentSKLabelNode(parent:SKLabelNode,children:SKSpriteNode){
       if children.parent == nil{
           parent.addChild(children)
       }
    }
    
    func addChildSKLabelNodeToParentSKLabelNode(parent:SKLabelNode,children:SKLabelNode){
       if children.parent == nil{
           parent.addChild(children)
       }
    }
    
    func addChildSKLabelNodeToParentSKNode(parent:SKNode,children:SKLabelNode){
       if children.parent == nil{
           parent.addChild(children)
       }
    }
}
