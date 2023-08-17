//
//  StartScene.swift
//  test_grounds
//
//  Created by javier pizarro on 1/8/21.
//  Copyright © 2021 javierpizarro. All rights reserved.
//
import Foundation
import SpriteKit
//import UIKit
import AVFoundation

class StartScene: SKScene{
    let mapRectangleGestureMGMT: SKSpriteNode = GamePlayRenderingObjects().mapRectangleGestureMGMTBezierPathToSKSpriteNode(bpRectangle: TestClass().createRectangle())//This Node is invisible, it works by parenting containeNode and applying handgestures as SKNode have no anchor point property which is needed to be set at 0.5 for the pinch gesture to be able to zoom and be centered
    
    let controlPanelSKSpriteNode = GamePlayRenderingObjects().initControlPanel()
    let skipButton = GamePlayRenderingObjects().skipBlueButton()//used in more than one function
    let exitRedButton = GamePlayRenderingObjects().redButton()//used in more than one function
    
    let containerNode = CreateSetMapNodes().initSetcontainerNodeAndChildren()//Node container for map nodes and map frames. Used in more than one function
    let labelTimer = GamePlayRenderingObjects().labelForTimer()//used in more than one function
    let labelScores = GamePlayRenderingObjects().labelForScores()//Scores label(in fluorocent text)
    //let timerBackground = TestClass().timerBackGround()//This background was used when the timer used a background for seconds(0-59) and a wider background for when minutes(1:00) started to render.
    let timerBackgroundTwo = GamePlayRenderingObjects().timerBackGroundTwo()/*Background for timer(At one time the timer used two different size backgrounds, but later i opted out of doing that for eficiency and kept
    the bigger background(timerBackgroundTwo) as timer's only background along its life cycle */
    let municipioNameLabel = GamePlayRenderingObjects().labelForMunicipioNames()//Label rendering municipio name to look up, Used in more than one function
    let municipiosNameBackground = GamePlayRenderingObjects().labelMunicipiosNameBackground()//Background for most(shorter) municipio names. Used in more than one function
    let municipiosNameBackgroundTwo = GamePlayRenderingObjects().labelMunicipiosNameBackgroundTwo()//Background for longer municipio names. Used in more than one function

    /**following two variables(renderTime and changeTime)  are basic part of the timer mechanism  and should not be bothered, in case dev wants to understand  how they work roll back to a branch previous to timer function makeover and follow the comments, but again dev should not be too concerned with this variables*/
    var renderTime: TimeInterval = 0.0//marks the time being played to be compared with currentTime, only used on update(timer function)
    let changeTime: TimeInterval = 1//adds(update) to renderTime in order to keep renderTime running, only used on update(imer function)
    var seconds: Int = 0//seconds count, only used on update(imer function)
    var minutes: Int = 0//minutes count, only used on update(imer function)
    static var secondsGameOver:Int = 0 //gets number of seconds to render tracked time(renders on gameOverScene), static variables must be declared at the top
    static var minutesGameOver:Int = 0 //gets number of minutes to render tracked time(renders on gameOverScene), static variables must be declared at the top
    let skipButtonPenalty = 15//seconds added to timer when skip buttom is pressed
    let penalty = 3//seconds added to timer when wrong node is pressed
    
    static var completedGame = false/**flow control variable for timer once its value is true allows for timer to stop, and transition to gameOverScene*/
    
    var useLine2:Bool = false//used on splitTextIntoFields functions and touch function.(intrinsic to function mechanism, dev should not be too concerned with it)
    var twoLineText: String = ""//used on splitTextIntoFields, this is the text passed to splitTextIntoFields functions

    /** Array includes Adjuntas although it' is written from the function that sets the label for municipios to look up, this is due  if adjuntas is skipped when the array reach the end to go back to index 0, then it gets Adjuntas.
     This array contain the text elements for the municipios to look up*/
    var municipios_names_array = ["Adjuntas", "Aguada", "Aguadilla", "Aguas Buenas", "Aibonito", "Arecibo", "Arroyo", "Añasco", "Barceloneta", "Barranquitas", "Bayamón", "Cabo Rojo", "Caguas", "Camuy", "Canóvanas", "Carolina", "Cataño", "Cayey", "Ceiba", "Ciales", "Cidra", "Coamo", "Comerío", "Corozal", "Culebra", "Dorado", "Fajardo", "Florida", "Guayama", "Guayanilla", "Guaynabo","Gurabo", "Guánica", "Hatillo", "Hormigueros", "Humacao", "Isabela", "Jayuya", "Juana Díaz", "Juncos", "Lajas", "Lares", "Las Marías", "Las Piedras", "Loíza", "Luquillo", "Manatí", "Maricao", "Maunabo", "Mayagüez", "Moca", "Morovis", "Naguabo", "Naranjito", "Orocovis", "Patillas", "Peñuelas", "Ponce", "Quebradillas", "Rincón", "Rio Grande", "Sabana Grande", "Salinas", "San Germán", "San Juan", "San Lorenzo", "San Sebastián", "Santa Isabel", "Toa Alta", "Toa Baja", "Trujillo Alto", "Utuado", "Vega Alta", "Vega Baja", "Vieques", "Villalba", "Yabucoa", "Yauco"]
    
    //var touchedNode: SKPhysicsBody!//holds touched node, declared at the top to be accesed by accesory functions out of Touch function
    var fail: Bool!//flow control var allow when true for penalty to be added at timer funtion. Used on more than one funtion
    var currentIndex: Int = 0 //refers to index currently diplayed on municipio name label declared at the top to be accesed by accesory functions
    var pressSKipButton:Bool = false//Flow control variables when true allows timer to add 15 penalty
    var scoreCount:Int = 0//variable represent the number of municipios identified rendered in the control bar to the right
    let totalScoreCount:String = "/78"
    
    let correctSound = SKAction.playSoundFileNamed("351566__bertrof__game-sound-correct-organic-violin", waitForCompletion: false)
    let incorrectSound = SKAction.playSoundFileNamed("351565__bertrof__game-sound-incorrect-organic-violin", waitForCompletion: false)
    //static var backgroundMusic = SKAudioNode(fileNamed: "predited.mp3")
    var musicPlayer = AVAudioPlayer()//audio player
    let musicURL:URL? = Bundle.main.url(forResource:"predited", withExtension:"mp3")//reference to PR Himn
    
    var skipButtonPressed = false//flow control var allows to apply alpha animation to skipbuttom on Touches end
    //var pinchToZoom = false
    
    var isScaled = false
    
    let screenSize = UIScreen.main.nativeBounds
    
    /*let minX = CGFloat(0)
    let maxX = CGFloat(670)
    let minY = CGFloat(50)
    let maxY = CGFloat(350)*/
    
         
    override func didMove(to view: SKView){
        
        
        self.backgroundColor = UIColor.init(red: 0.2588, green: 0.7608, blue: 1, alpha: 1.0) /* #42c2ff */ /* #1cb3c8 */ //UIColor.init(red: 0.5373, green: 0.8431, blue: 0.9294, alpha: 1.0)//blue background that resembles the ocean
        
        /**The following  objects are the parent for all rendering objects, class positioning attributers are applied in order for objects to render the same independent of the screen size, In the case of containerNode it's positioning is set  based on its parent
        timerBackgroundTwo. The reason for not giving containerNode class positioning was due when class attributes were applied to containerNode it would render different in devices with smaller screen size(maybe something im not aware about, or a glitch of some kind).*/
        
        //Invisible Node see comment n its declaration at the top
        //mapRectangleGestureMGMT.zPosition = 0
        mapRectangleGestureMGMT.anchorPoint = CGPoint(x:0.5, y:0.5)
        //mapRectangleGestureMGMT.position = CGPoint(x:self.size.width / 2, y:self.size.height / 1.755/*1.8*/)
        //mapRectangleGestureMGMT.setScale(1.33)//1.38
        
        //containerNode.zPosition = -1
        containerNode.position = CGPoint(x:-280, y:-190)//CGPoint(x:self.size.width/2 - 285, y:self.size.height/2 - 175) /*CGPoint(x:-275 , y:-75 /*15*/)*//**Sknode containing(children) map sprites, desecheo cover(node whose only job is to hid desecheo island, rectangular frames)*/
        
        //timerBackgroundTwo.setScale(1.20)
        //timerBackgroundTwo.position = CGPoint(x:self.size.width / 2/*333.5*/, y:self.size.height / 6.4)/**parent to labelTimer*/
        
        controlPanelSKSpriteNode.zPosition = 1//Set to one in order for the map to zoom and remain behind
        controlPanelSKSpriteNode.size = CGSize(width:self.size.width - 1, height:50) //50)
        //controlPanelSKSpriteNode.position = CGPoint(x:self.size.width / 2, y:self.size.height / 14.8) //14.8)
        
        //skipButton.setScale(1.50)
        //exitRedButton.setScale(1.50)
        
        //municipiosNameBackground.setScale(1.20)
        
        //let screenSize = UIScreen.main.nativeBounds
        
        //The following block reads device screen size in points, based on screen size a function will execute to asign scaling and positioning attributes
        print("Screen size: \(screenSize)")
        switch (screenSize.width, screenSize.height) {
            
            case (2048.0, 2732.0):
                 //print("Pro12.9(3gen), Pro12.9(4gen), Pro12.9(5gen), Pro12.9(6gen) ")
                 setScaleAndIndepRenderingPositioningForIpadsLargeScreenSizes()
           
            case (1536.0, 2048.0),(1488.0, 2266.0) :
                 //print("iPad 6Gen, Mini(5gen), Mini(6gen) ")
                 setScaleAndIndepRenderingPositioningForIpadsSmallScreenSizes()
            
            case (1668.0, 2224.0), (1668.0, 2388.0), (1620.0, 2160.0),(1640.0, 2360.0):
                //print("iPad Pro 10.5, Pro11(1gen), Air(3gen), 7Gen, Pro11(2gen), 8Gen, 9Gen, Air(4gen), PRO11(3gen), Air(5gen), 10Gen, Pro11(4gen) ")
                setScaleAndIndepRenderingPositioningForIpadsMediumScreenSizes()
            
            case (750.0, 1334), (1080, 2340 ),(1125, 2436 ) :
                //print("iPhoneSE3, SE2, 8, mini12, mini13, iPhone X, XS ,11PRO")
                setScaleAndIndepRenderingPositioningForSmallScreenSizes()
            
            case (1242.0, 2208.0), (828.0, 1792.0 ),(1242.0, 2688.0 ) :
                //print("iPhone 8plus, XR, 11, XSMax, 11ProMax")
                setScaleAndIndepRenderingPositioningForMediumLargeScreenSizes()
            
           case (1170.0, 2532.0), (1179.0, 2556.0):
                //print("iPhone 12, 12Pro, 13, 13Pro, 14, 14Pro")
                setScaleAndIndepRenderingPositioningForLargeScreenSizes()
            
           case (1284.0, 2778.0), (1290.0, 2796.0):
                //print("iPhone 12ProMax, 13ProMax, 14plus, 13Pro, 14ProMax")
                setScaleAndIndepRenderingPositioningForXtraLargeScreenSizes()
        
            default:
               setScaleAndIndepRenderingPositioningForSmallScreenSizes()//This line will catch any device which screen measure is none of the above
                break
        }
        //print("Screen size: \(screenSize)")
        
        /*if screenSize.width == 750 && screenSize.height == 1334 || screenSize.width == 1080 && screenSize.height == 2340 || screenSize.width == 1125 && screenSize.height == 2436{
            print("iPhoneSE3, SE2, 8, mini12, mini13, iPhone X, XS ,11PRO")
            setScaleAndIndepRenderingPositioningForSmallScreenSizes()
        }
        
        else if screenSize.width == 1242 && screenSize.height == 2208 || screenSize.width == 828 && screenSize.height == 1792 || screenSize.width == 1242 && screenSize.height == 2688{
            print("iPhone 8plus, XR, 11, XSMax, 11ProMax")
            setScaleAndIndepRenderingPositioningForMediumLargeScreenSizes()
        }
        
        else if screenSize.width == 1170 && screenSize.height == 2532 || screenSize.width == 1179 && screenSize.height == 2556 {
            print("iPhone 12, 12Pro, 13, 13Pro, 14, 14Pro")
            setScaleAndIndepRenderingPositioningForLargeScreenSizes()
        }
        
        else if screenSize.width == 1284 && screenSize.height == 2778 || screenSize.width == 1290 && screenSize.height == 2796 {
            print("iPhone 12ProMax, 13ProMax, 14plus, 13Pro, 14ProMax")
            setScaleAndIndepRenderingPositioningForXtraLargeScreenSizes()
        }
        
        /*else if screenSize.width == 1668 && screenSize.height == 2224  {
            print("iPad Pro10.5")
            setScaleAndIndepRenderingPositioningForIpadsSmallScreenSizes()
        }*/
        
        else {
            setScaleAndIndepRenderingPositioningForSmallScreenSizes()
        }*/
        
        
        /**Following objects are related to goldBackground SKSPriteNode*/
        //addChildSKSpriteNodeToParentself(children:containerSKSPriteNode)
        addChildSKLabelNodeToParentSKSpriteNode(parent: municipiosNameBackground, children: municipioNameLabel)
        addChildSKSpriteNodeToParentSKSpriteNode(parent: controlPanelSKSpriteNode, children: municipiosNameBackground)
        addChildSKLabelNodeToParentSKSpriteNode(parent: controlPanelSKSpriteNode, children: labelScores)
        addChildSKSpriteNodeToParentSKSpriteNode(parent: controlPanelSKSpriteNode, children: skipButton)
        addChildSKSpriteNodeToParentSKSpriteNode(parent: controlPanelSKSpriteNode, children: exitRedButton)
        addChildSKSpriteNodeToParentself(children: controlPanelSKSpriteNode)
        addChildSKNodeToParentSKSpriteNode(parent:mapRectangleGestureMGMT, children:containerNode)
        //containerSKSPriteNode.addChild(containerNode)
        addChildSKSpriteNodeToParentself(children:mapRectangleGestureMGMT)
        //self.addChild(containerSKSPriteNode)
        //addChildSKNodeToParentself(children: containerNode)
        //addChildSKNodeToParentSKSpriteNode(parent: timerBackgroundTwo, children: containerNode)
        addChildSKLabelNodeToParentSKSpriteNode(parent: timerBackgroundTwo, children: labelTimer)
        addChildSKSpriteNodeToParentself(children: timerBackgroundTwo)
        //addChildSKNodeToParentself(children: containerNode)
        
        //set an call hand gesture recognizers
        let pinchRecognizer: UIPinchGestureRecognizer = UIPinchGestureRecognizer(target:self, action: #selector(self.handlePinchFrom(_:)))
        self.view!.addGestureRecognizer(pinchRecognizer)
        
        let tapRecognizer: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.handleTapFrom(_:)))
        tapRecognizer.numberOfTapsRequired = 1
        self.view!.addGestureRecognizer(tapRecognizer)
        
        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(self.handlePan(_:)))
        // Add the gesture recognizer to the scene's view
        self.view!.addGestureRecognizer(panGestureRecognizer)
        
        
        
        /**Play background music*/
        if StartMenu.backgroundMusicOn == true{
            //self.addChild(StartScene.backgroundMusic)
            initMusic()
        }
        //sleep(1)
    }
    //Execute attributes for scaling and positioning based on device screen size
    func setScaleAndIndepRenderingPositioningForIpadsLargeScreenSizes(){
        print("Set StartScene gamePlay objts scaling and positioning for: iPads Pro12.9(3gen), Pro12.9(4gen), Pro12.9(5gen), Pro12.9(6gen) IpadsLargeScreenSizes scaling and positioning func")
        print("Ipads Large Screen Sizes")
        mapRectangleGestureMGMT.position = CGPoint(x:self.size.width / 2, y:self.size.height / 2.00/*1.8*/)
        //mapRectangleGestureMGMT.setScale(1.90)//1.38
        mapRectangleGestureMGMT.setScale(2.4)//1.38
        
        timerBackgroundTwo.setScale(1.20)
        timerBackgroundTwo.position = CGPoint(x:self.size.width / 2/*333.5*/, y:self.size.height / 12.0)/**parent to labelTimer*/
        
        labelScores.position = CGPoint(x:440/*300*/, y:-7)
        labelScores.fontSize = 25.5
        
        controlPanelSKSpriteNode.size = CGSize(width:self.size.width - 1, height:70)
        //controlPanelSKSpriteNode.position = CGPoint(x:self.size.width / 2, y:self.size.height / 20.5) //14.8)
        controlPanelSKSpriteNode.position = CGPoint(x:self.size.width / 2, y:self.size.height / 28.5)
        //controlPanelSKSpriteNode.position = CGPoint(x:self.size.width / 2, y:self.size.height / 4.5) //14.8)
        //controlPanelSKSpriteNode.setScale(1.5)
        
        skipButton.setScale(2.1)
        skipButton.position = CGPoint(x:320, y:-0.5)
        exitRedButton.setScale(2.1)
        exitRedButton.position = CGPoint(x:-370, y:-0.5)
        
        timerBackgroundTwo.setScale(1.9)
        
        municipiosNameBackground.setScale(1.9)
    }
    //Execute attributes for scaling and positioning based on device screen size
    func setScaleAndIndepRenderingPositioningForIpadsSmallScreenSizes(){
        print("Set StartScene gamePlay objts scaling and positioning for: iPad 6Gen, Mini(5gen), Mini(6gen) entering IpadsSmallScreenSizes scaling and positioning func")
        print("Ipads Small Screen Sizes")
        mapRectangleGestureMGMT.position = CGPoint(x:self.size.width / 2, y:self.size.height / 2.00/*1.8*/)
        //mapRectangleGestureMGMT.setScale(1.90)//1.38
        mapRectangleGestureMGMT.setScale(1.85)//1.38
        
        timerBackgroundTwo.setScale(1.20)
        timerBackgroundTwo.position = CGPoint(x:self.size.width / 2/*333.5*/, y:self.size.height / 9.5 )/**parent to labelTimer*/
        
        labelScores.position = CGPoint(x:440/*300*/, y:-7)
        labelScores.fontSize = 22.5
        
        controlPanelSKSpriteNode.size = CGSize(width:self.size.width - 1, height:64)
        //controlPanelSKSpriteNode.position = CGPoint(x:self.size.width / 2, y:self.size.height / 20.5) //14.8)
        controlPanelSKSpriteNode.position = CGPoint(x:self.size.width / 2, y:self.size.height / 22.5)
        //controlPanelSKSpriteNode.position = CGPoint(x:self.size.width / 2, y:self.size.height / 4.5) //14.8)
        //controlPanelSKSpriteNode.setScale(1.5)
        
        skipButton.setScale(1.90)
        skipButton.position = CGPoint(x:320, y:-0.5)
        exitRedButton.setScale(1.90)
        exitRedButton.position = CGPoint(x:-370, y:-0.5)
        
        timerBackgroundTwo.setScale(1.85)
        
        municipiosNameBackground.setScale(1.75)
    }
    //Execute attributes for scaling and positioning based on device screen size
    func setScaleAndIndepRenderingPositioningForIpadsMediumScreenSizes(){
        print("Set StartScene gamePlay objts scaling and positioning for: iPad Pro 10.5, Pro11(1gen), Air(3gen), 7Gen, Pro11(2gen), 8Gen, 9Gen, Air(4gen), PRO11(3gen), Air(5gen), 10Gen, Pro11(4gen) entering iPad Medium size scaling and positioning func")
        print("Ipads Medium Screen Sizes")
        mapRectangleGestureMGMT.position = CGPoint(x:self.size.width / 2, y:self.size.height / 2.00/*1.8*/)
        //mapRectangleGestureMGMT.setScale(1.90)//1.38
        mapRectangleGestureMGMT.setScale(1.85)//1.38
        
        timerBackgroundTwo.setScale(1.20)
        timerBackgroundTwo.position = CGPoint(x:self.size.width / 2/*333.5*/, y:self.size.height / 9.5)/**parent to labelTimer*/
        
        labelScores.position = CGPoint(x:440/*300*/, y:-7)
        labelScores.fontSize = 22.5
        
        controlPanelSKSpriteNode.size = CGSize(width:self.size.width - 1, height:70)
        //controlPanelSKSpriteNode.position = CGPoint(x:self.size.width / 2, y:self.size.height / 20.5) //14.8)
        controlPanelSKSpriteNode.position = CGPoint(x:self.size.width / 2, y:self.size.height / 22.5)
        //controlPanelSKSpriteNode.position = CGPoint(x:self.size.width / 2, y:self.size.height / 4.5) //14.8)
        //controlPanelSKSpriteNode.setScale(1.5)
        
        skipButton.setScale(2.00)
        skipButton.position = CGPoint(x:320, y:-0.5)
        exitRedButton.setScale(2.00)
        exitRedButton.position = CGPoint(x:-370, y:-0.5)
        
        timerBackgroundTwo.setScale(1.85)
        
        municipiosNameBackground.setScale(1.75)
    }
    //Execute attributes for scaling and positioning based on device screen size
    func setScaleAndIndepRenderingPositioningForSmallScreenSizes(){
        print("Set StartScene gamePlay objts scaling and positioning for: iPhone SE3, SE2, 8, mini12, mini13, iPhone X, XS ,11PRO enter SmallScreenSizes scaling and positioning func")
        print("iPhone small screen sizes")
        mapRectangleGestureMGMT.position = CGPoint(x:self.size.width / 2, y:self.size.height / 1.755/*1.8*/)
        mapRectangleGestureMGMT.setScale(1.33)//1.38
        
        timerBackgroundTwo.setScale(1.20)
        timerBackgroundTwo.position = CGPoint(x:self.size.width / 2/*333.5*/, y:self.size.height / 6.4)/**parent to labelTimer*/
        
        controlPanelSKSpriteNode.position = CGPoint(x:self.size.width / 2, y:self.size.height / 14.8) //14.8)
        
        
        skipButton.setScale(1.50)
        exitRedButton.setScale(1.50)
        
        municipiosNameBackground.setScale(1.20)
    }
    //Execute attributes for scaling and positioning based on device screen size
    func setScaleAndIndepRenderingPositioningForMediumLargeScreenSizes(){
        print("Set StartScene gamePlay objts scaling and positioning for: iPhone 8plus, XR, 11, XSMax, 11ProMax enter MediumLargeScreenSizes scaling and positioning func")
        print("iPhone medium-large screen sizes")
        mapRectangleGestureMGMT.position = CGPoint(x:self.size.width / 2, y:self.size.height / 1.906/*1.8*/)
        mapRectangleGestureMGMT.setScale(1.33)//1.38
        
        timerBackgroundTwo.setScale(1.20)
        timerBackgroundTwo.position = CGPoint(x:self.size.width / 2/*333.5*/, y:self.size.height / 6.7)/**parent to labelTimer*/
        
        controlPanelSKSpriteNode.position = CGPoint(x:self.size.width / 2, y:self.size.height / 14.8) //14.8)
        
        skipButton.setScale(1.50)
        exitRedButton.setScale(1.50)
        
        municipiosNameBackground.setScale(1.20)
    }
    //Execute attributes for scaling and positioning based on device screen size
    func setScaleAndIndepRenderingPositioningForLargeScreenSizes(){
        print("Set StartScene gamePlay objts scaling and positioning for: iPhone 12, 12Pro, 13, 13Pro, 14, 14Pro enter LargeScreenSizes scaling and positioning func")
        print("iPhone large screen sizes")
        mapRectangleGestureMGMT.position = CGPoint(x:self.size.width / 2, y:self.size.height / 1.811/*1.8*/)
        mapRectangleGestureMGMT.setScale(1.33)//1.38
        
        timerBackgroundTwo.setScale(1.20)
        timerBackgroundTwo.position = CGPoint(x:self.size.width / 2/*333.5*/, y:self.size.height / 6.5)/**parent to labelTimer*/
        
        controlPanelSKSpriteNode.position = CGPoint(x:self.size.width / 2, y:self.size.height / 14.8) //14.8)
        
        skipButton.setScale(1.50)
        exitRedButton.setScale(1.50)
        
        municipiosNameBackground.setScale(1.20)
    }
    //Execute attributes for scaling and positioning based on device screen size
    func setScaleAndIndepRenderingPositioningForXtraLargeScreenSizes(){
        print("Set StartScene gamePlay objts scaling and positioning for: iPhone 12ProMax, 13ProMax, 14plus, 14ProMax enter XtraLargeScreenSizes scaling and positioning func ")
        print("iPhone Xtralarge screen sizes")
        mapRectangleGestureMGMT.position = CGPoint(x:self.size.width / 2, y:self.size.height / 1.975/*1.8*/)
        mapRectangleGestureMGMT.setScale(1.33)//1.38
        
        timerBackgroundTwo.setScale(1.20)
        timerBackgroundTwo.position = CGPoint(x:self.size.width / 2/*333.5*/, y:self.size.height / 7.0)/**parent to labelTimer*/
        
        controlPanelSKSpriteNode.position = CGPoint(x:self.size.width / 2, y:self.size.height / 16) //14.8)
        
        skipButton.setScale(1.50)
        exitRedButton.setScale(1.50)
        
        municipiosNameBackground.setScale(1.20)
    }
    
    
    /*@objc func handlePan(_ gesture: UIPanGestureRecognizer) {
        if isScaled == true {
            //let translation = gesture.translation(in: gesture.view)
            
            // Limit the position of the node to within the desired bounds
            if containerSKSPriteNode.position.x > maxX {
                containerSKSPriteNode.position.x = maxX
            } else if containerSKSPriteNode.position.x < minX {
                containerSKSPriteNode.position.x = minX
            }
            if containerSKSPriteNode.position.y > maxY {
                containerSKSPriteNode.position.y = maxY
            } else if containerSKSPriteNode.position.y < minY {
                containerSKSPriteNode.position.y = minY
            }
            
            let velocity = gesture.velocity(in: gesture.view)
            filteredVelocity = CGPoint(x: filteredVelocity.x * 0.9 + velocity.x * 0.01,
                                       y: filteredVelocity.y * 0.9 + velocity.y * 0.01)

            containerSKSPriteNode.position = CGPoint(x: containerSKSPriteNode.position.x + filteredVelocity.x, y: containerSKSPriteNode.position.y - filteredVelocity.y)
            gesture.setTranslation(.zero, in: view)
        }
    }*/

    
    
    @objc func handlePan(_ gesture: UIPanGestureRecognizer) {
        //Asses screen
        let screenSize = self.view?.bounds.size
        let screenWidth = screenSize?.width ?? 0
        let screenHeight = screenSize?.height ?? 0
        
        //Apply min and max value to limit panning based on screen size
        let minX = screenWidth * 0.02
        let maxX = screenWidth * 0.99
        let minY = screenHeight * 0.1
        let maxY = screenHeight * 1.0//0.6
        
        //Flag variable allows pan only when zoom in have taken place
        if isScaled == true{
            /*var touchLocation: CGPoint = gesture.location(in: gesture.view)
            touchLocation = self.convertPoint(fromView: touchLocation)
            let moveAction = SKAction.move(to: touchLocation, duration: 0.5)
            moveAction.timingMode = .linear//.easeInEaseOut
            containerSKSPriteNode.run(moveAction)*/
            
            //Contraints for limiting panning
            let translation = gesture.translation(in: gesture.view)
            if mapRectangleGestureMGMT.position.x > maxX {
                mapRectangleGestureMGMT.position.x = maxX
            } else if mapRectangleGestureMGMT.position.x < minX {
                mapRectangleGestureMGMT.position.x = minX
            }

            if mapRectangleGestureMGMT.position.y > maxY {
                mapRectangleGestureMGMT.position.y = maxY
            } else if mapRectangleGestureMGMT.position.y < minY {
                mapRectangleGestureMGMT.position.y = minY
            }
            //pan execution
            mapRectangleGestureMGMT.position = CGPoint(x: mapRectangleGestureMGMT.position.x + translation.x, y: mapRectangleGestureMGMT.position.y - translation.y)
            gesture.setTranslation(.zero, in: view)
            
        }
       
    }
    
  
    
    
    
    @objc func handleTapFrom(_ sender: UITapGestureRecognizer){
        
        
        if sender.state == .recognized {//execute code as soon as gesture is recognized
            
            let touchLocation = sender.location(in: sender.view)//convert UIView coordinates to SpriteKit
            let location = self.convertPoint(fromView: touchLocation)//Defines the space where touch is taking effect, in this case StartScene
            let touchedNode = self.physicsWorld.body(at:location)//Defines that touch will take effect when it gets in contact with an SKphysics body
            
            if (touchedNode != nil){//This line controls the flow by evaluating if a SKphysics body was touch or not, touchNode will return nil when the screen is touched but no SKphysics body was touched
                if (municipioNameLabel.text == touchedNode?.node?.name){//Evaluates touch by matching the label text attribute with node's name attributes
                    let spritenode = touchedNode?.node as! SKSpriteNode//pass touchedNode node attribute to spritenode, to apply changes
                    spritenode.physicsBody = nil
                    playCorrectSound()
                    setLabelForMunicipioNameAndAddToNode(nodeSprite: spritenode)
                    //playCorrectSound()
                    paintNode(spriteNode: spritenode)//color SKSpriteNode green
                    /**Set labels and add them to map texture(node)*/
                    //setLabelForMunicipioNameAndAddToNode(nodeSprite: spritenode)
                    //playCorrectSound()
                    /**Element identified is removed from names array, Evaluates for game complition and removal of Skip button*/
                    removeIdentifiedElementEvaluateCompleteGameAndSkipButtonRemoval()
                    /**set new municipio to look after*/
                    setNewMunicipioNameToLookUp()
                    /**add one to number of municipios located*/
                    addToScoreCountWriteToLabel()
                }
                
                /*Skip button touch action**/
                else if (skipButton.name == touchedNode?.node?.name){//Es lo mismo que preguntar si el physics body tocado se llama (name) como skipButton, la condicion quiere saber si tocamos skipButton basicamente
                    addOneTocurrentIndexSetNameToLookUp()
                }
                /**Exit button touch action*/
                else if (exitRedButton.name == touchedNode?.node?.name){
                    goToStartMenu()
                }
               
                //else statement will execute whenever a wrong municipio node is touched
                else{
                    playIncorrectSound()
                    
                    return fail = true//variable updates to apply 3 seconds penalty at timer function
                }
            }
        }
    }
    

    @objc func handlePinchFrom(_ sender: UIPinchGestureRecognizer) {
        
        
        //The following block limits the scaling(Zoom effect) from 2.4(default size) and no larger than 3.0 for device iPad Pro12.9
        if screenSize.width == 2048.0 && screenSize.height == 2732.0{
            print("iPad Pro12.9 entering handlePinch func")
            if mapRectangleGestureMGMT.xScale * sender.scale < 2.4 {
                sender.scale = 2.4 / mapRectangleGestureMGMT.xScale
            } else if mapRectangleGestureMGMT.xScale * sender.scale > 3.0 {
                sender.scale = 3.0 / mapRectangleGestureMGMT.xScale
            }
        
            if mapRectangleGestureMGMT.yScale * sender.scale < 2.4 {
                sender.scale = 2.4 / mapRectangleGestureMGMT.yScale
            } else if mapRectangleGestureMGMT.yScale * sender.scale > 3.0 {
            sender.scale = 3.0 / mapRectangleGestureMGMT.yScale
            }
        }
        //The following block limits the scaling(Zoom effect) from 1.85(default size) and no larger than 3.0 for device iPad Pro 10.5, Pro11(1gen), Air(3gen), 7Gen, Pro11(2gen), 8Gen, 9Gen, Air(4gen), PRO11(3gen), Air(5gen), 10Gen, Pro11(4gen), iPad 6Gen, Mini(5gen), Mini(6gen)
        else if screenSize.width == 1668 && screenSize.height == 2224 || screenSize.width == 1536.0 && screenSize.height == 2048.0 || screenSize.width == 1668.0 && screenSize.height == 2388.0 || screenSize.width == 2048.0 && screenSize.height == 2732.0 || screenSize.width == 1620.0 && screenSize.height == 2160.0 || screenSize.width == 1640.0 && screenSize.height == 2360.0 || screenSize.width == 1536.0 && screenSize.height == 2048.0 || screenSize.width == 1488.0 && screenSize.height == 2266.0{
            print("iPad Pro 10.5, Pro11(1gen), Air(3gen), 7Gen, Pro11(2gen), 8Gen, 9Gen, Air(4gen), PRO11(3gen), Air(5gen), 10Gen, Pro11(4gen), iPad 6Gen, Mini(5gen), Mini(6gen) entering handlePinch func")
            if mapRectangleGestureMGMT.xScale * sender.scale < 1.85 {
                sender.scale = 1.85 / mapRectangleGestureMGMT.xScale
            } else if mapRectangleGestureMGMT.xScale * sender.scale > 3.0 {
                sender.scale = 3.0 / mapRectangleGestureMGMT.xScale
            }

            if mapRectangleGestureMGMT.yScale * sender.scale < 1.85 {
               sender.scale = 1.85 / mapRectangleGestureMGMT.yScale
            } else if mapRectangleGestureMGMT.yScale * sender.scale > 3.0 {
            sender.scale = 3.0 / mapRectangleGestureMGMT.yScale
            }
        }
        //The following block limits the scaling(Zoom effect) from 1.33(default size) and no larger than 3.0 for device
        else{
            print("iPhone entering handlePinch func")
            if mapRectangleGestureMGMT.xScale * sender.scale < 1.33 {
                sender.scale = 1.33 / mapRectangleGestureMGMT.xScale
            } else if mapRectangleGestureMGMT.xScale * sender.scale > 3.0 {
                sender.scale = 3.0 / mapRectangleGestureMGMT.xScale
            }
            
            if mapRectangleGestureMGMT.yScale * sender.scale < 1.33 {
                sender.scale = 1.33 / mapRectangleGestureMGMT.yScale
            } else if mapRectangleGestureMGMT.yScale * sender.scale > 3.0 {
                sender.scale = 3.0 / mapRectangleGestureMGMT.yScale
            }
        }
        
        //Set scaling action
        let pinch = SKAction.scale(by: sender.scale, duration: 0.0)
        mapRectangleGestureMGMT.run(pinch)
        sender.scale = 1.00
        
        //Asses if the node is scaled or not(scaled to default size)
        if sender.state == .ended{
            
            if screenSize.width == 2048.0 && screenSize.height == 2732.0{
                if mapRectangleGestureMGMT.xScale > 2.4 && mapRectangleGestureMGMT.yScale > 2.4 {
                    isScaled = true
                    print("iPad Pro12.9(3 to 6 Gen)(BIGGER Screen) scaled bigger")
                }
            }
            
            else if screenSize.width == 1668.0 && screenSize.height == 2224.0 || screenSize.width == 1536.0 && screenSize.height == 2048.0 || screenSize.width == 1668.0 && screenSize.height == 2388.0 || screenSize.width == 1620.0 && screenSize.height == 2160.0 || screenSize.width == 1640.0 && screenSize.height == 2360.0 || screenSize.width == 1488.0 && screenSize.height == 2266.0 {
                if mapRectangleGestureMGMT.xScale > 1.85 && mapRectangleGestureMGMT.yScale > 1.85{
                    isScaled = true
                    print("iPad Pro 10.5, Pro11(1gen), Air(3gen), 7Gen, Pro11(2gen), 8Gen, 9Gen, Air(4gen), PRO11(3gen), Air(5gen), 10Gen, Pro11(4gen), 6Gen, Mini(5gen), Mini(6gen) (MEDIUM/SMALL Screen) scaled bigger")
                }
            }
            else{
                if mapRectangleGestureMGMT.xScale > 1.33 && mapRectangleGestureMGMT.yScale > 1.33 {
                    isScaled = true
                    print("iPhone scaled bigger")
                }
            }
            
            
            let tolerance: CGFloat = 0.001
            
            //print("Last Screen size: \(screenSize)")
            switch (screenSize.width, screenSize.height) {
             // checking if the absolute difference between the current scaling factor and the target scaling factor is smaller than the tolerance value. If it is, it means that the scaling factor is very close to the target value, indicating that the node has been scaled back to the normal size
                case (2048.0, 2732.0):
                     //print("iPad Pro 12.9")
                     if abs(mapRectangleGestureMGMT.xScale - 2.4) < tolerance && abs(mapRectangleGestureMGMT.yScale - 2.4) < tolerance {
                        isScaled = false
                        mapRectangleGestureMGMT.position = CGPoint(x:self.size.width / 2, y:self.size.height / 2.00/*1.8*/)//Whenever node is scaled back to default size the node is repositioned at default position or center
                        print("iPad Pro 12.9 Bigger Screen scaled back to normal")
                    }
               
              
                case (1668.0, 2224.0), (1536.0, 2048.0), (1668.0,2388.0), (2048.0, 2732.0), (1620.0, 2160.0), (1640.0, 2360.0), (1488.0, 2266.0),(1488.0, 2266.0),(2048.0, 2732.0):
                    //print("iPad Pro 10.5, Pro11(1gen), Air(3gen), 7Gen, Pro11(2gen), 8Gen, 9Gen, Air(4gen), PRO11(3gen), Air(5gen), 10Gen, Pro11(4gen), iPad 6Gen, Mini(5gen), Mini(6gen)")
                    if abs(mapRectangleGestureMGMT.xScale - 1.85) < tolerance && abs(mapRectangleGestureMGMT.yScale - 1.85) < tolerance {
                        isScaled = false
                        mapRectangleGestureMGMT.position = CGPoint(x:self.size.width / 2, y:self.size.height / 2.00/*1.8*/)//Whenever node is scaled back to default size the node is repositioned at default position or center
                        print("iPad Pro 10.5, Pro11(1gen), Air(3gen), 7Gen, Pro11(2gen), 8Gen, 9Gen, Air(4gen), PRO11(3gen), Air(5gen), 10Gen, Pro11(4gen), iPad 6Gen, Mini(5gen), Mini(6gen) small/medium screen scaled back to normal")
                    }
                    
                case (750.0, 1334), (1080, 2340 ),(1125, 2436 ) :
                    //print("iPhoneSE3, SE2, 8, mini12, mini13, iPhone X, XS ,11PRO")
                    if abs(mapRectangleGestureMGMT.xScale - 1.33) < tolerance && abs(mapRectangleGestureMGMT.yScale - 1.33) < tolerance {
                        isScaled = false
                        mapRectangleGestureMGMT.position = CGPoint(x:self.size.width / 2, y:self.size.height / 1.755/*1.8*/)//Whenever node is scaled back to default size the node is repositioned at default position or center
                        print("iPhoneSE3, SE2, 8, mini12, mini13, iPhone X, XS ,11PRO scaled back to normal")
                    }
                case (1242.0, 2208.0), (828.0, 1792.0 ),(1242.0, 2688.0 ) :
                    //print("iPhone 8plus, XR, 11, XSMax, 11ProMax")
                    if abs(mapRectangleGestureMGMT.xScale - 1.33) < tolerance && abs(mapRectangleGestureMGMT.yScale - 1.33) < tolerance {
                        isScaled = false
                        mapRectangleGestureMGMT.position = CGPoint(x:self.size.width / 2, y:self.size.height / 1.906/*1.8*/)//Whenever node is scaled back to default size the node is repositioned at default position or center
                        print("iPhone 8plus, XR, 11, XSMax, 11ProMax scaled back to normal")
                    }
                    
                case (1170.0, 2532.0), (1179.0, 2556.0):
                     //print("iPhone 12, 12Pro, 13, 13Pro, 14, 14Pro")
                     if abs(mapRectangleGestureMGMT.xScale - 1.33) < tolerance && abs(mapRectangleGestureMGMT.yScale - 1.33) < tolerance {
                        isScaled = false
                        mapRectangleGestureMGMT.position = CGPoint(x:self.size.width / 2, y:self.size.height / 1.811/*1.8*/)//Whenever node is scaled back to default size the node is repositioned at default position or center
                        print("iPhone 12, 12Pro, 13, 13Pro, 14, 14Pro scaled back to normal")
                    }
                    
                case (1284.0, 2778.0), (1290.0, 2796.0):
                     //print("iPhone 12ProMax, 13ProMax, 14plus, 13Pro, 14ProMax")
                     if abs(mapRectangleGestureMGMT.xScale - 1.33) < tolerance && abs(mapRectangleGestureMGMT.yScale - 1.33) < tolerance {
                        isScaled = false
                        mapRectangleGestureMGMT.position = CGPoint(x:self.size.width / 2, y:self.size.height / 1.975/*1.8*/)//Whenever node is scaled back to default size the node is repositioned at default position or center
                        print("iPhone 12ProMax, 13ProMax, 14plus, 13Pro, 14ProMax scaled back to normal")
                    }
                    
                    
                default:
                    if abs(mapRectangleGestureMGMT.xScale - 1.33) < tolerance && abs(mapRectangleGestureMGMT.yScale - 1.33) < tolerance {
                    isScaled = false
                    mapRectangleGestureMGMT.position = CGPoint(x:self.size.width / 2, y:self.size.height / 1.755/*1.8*/)//Whenever node is scaled back to default size the node is repositioned at default position or center
                    print("scaled back to normal")
                    }
                    break
                
            }
            
            
            /*if screenSize.width == 750 && screenSize.height == 1334 || screenSize.width == 1080 && screenSize.height == 2340 || screenSize.width == 1125 && screenSize.height == 2436{
                if abs(mapRectangleGestureMGMT.xScale - 1.33) < tolerance && abs(mapRectangleGestureMGMT.yScale - 1.33) < tolerance {
                isScaled = false
                mapRectangleGestureMGMT.position = CGPoint(x:self.size.width / 2, y:self.size.height / 1.755/*1.8*/)//Whenever node is scaled back to default size the node is repositioned at default position or center
                print("scaled back to normal")
                }
            }
            
            else if screenSize.width == 1242 && screenSize.height == 2208 || screenSize.width == 828 && screenSize.height == 1792 || screenSize.width == 1242 && screenSize.height == 2688{
                if abs(mapRectangleGestureMGMT.xScale - 1.33) < tolerance && abs(mapRectangleGestureMGMT.yScale - 1.33) < tolerance {
                    isScaled = false
                    mapRectangleGestureMGMT.position = CGPoint(x:self.size.width / 2, y:self.size.height / 1.906/*1.8*/)//Whenever node is scaled back to default size the node is repositioned at default position or center
                    print("scaled back to normal")
                }
            }
            else if screenSize.width == 1170 && screenSize.height == 2532 || screenSize.width == 1179 && screenSize.height == 2556{
                if abs(mapRectangleGestureMGMT.xScale - 1.33) < tolerance && abs(mapRectangleGestureMGMT.yScale - 1.33) < tolerance {
                    isScaled = false
                    mapRectangleGestureMGMT.position = CGPoint(x:self.size.width / 2, y:self.size.height / 1.811/*1.8*/)//Whenever node is scaled back to default size the node is repositioned at default position or center
                    print("scaled back to normal")
                }
            }
            else if screenSize.width == 1284 && screenSize.height == 2778 || screenSize.width == 1290 && screenSize.height == 2796{
                if abs(mapRectangleGestureMGMT.xScale - 1.33) < tolerance && abs(mapRectangleGestureMGMT.yScale - 1.33) < tolerance {
                    isScaled = false
                    mapRectangleGestureMGMT.position = CGPoint(x:self.size.width / 2, y:self.size.height / 1.96/*1.8*/)//Whenever node is scaled back to default size the node is repositioned at default position or center
                    print("scaled back to normal")
                }
            }
            else{
                if abs(mapRectangleGestureMGMT.xScale - 1.33) < tolerance && abs(mapRectangleGestureMGMT.yScale - 1.33) < tolerance {
                isScaled = false
                mapRectangleGestureMGMT.position = CGPoint(x:self.size.width / 2, y:self.size.height / 1.755/*1.8*/)//Whenever node is scaled back to default size the node is repositioned at default position or center
                print("scaled back to normal")
                }
            }*/
        }
    }
    
    
    
    func addChildSKSpriteNodeToParentSKSpriteNode(parent:SKSpriteNode, children:SKSpriteNode){
        if children.parent == nil{
        parent.addChild(children)
        }
    }
    
    func addChildSKLabelNodeToParentSKSpriteNode(parent:SKSpriteNode, children:SKLabelNode){
        if children.parent == nil{
        parent.addChild(children)
        }
    }
    
    func addChildSKSpriteNodeToParentself(children:SKSpriteNode){
        if children.parent == nil{
        self.addChild(children)
        }
    }
    
    func addChildSKLabelNodeToParentself(children:SKLabelNode){
        if children.parent == nil{
        self.addChild(children)
        }
    }
    
    func addChildSKNodeToParentself(children:SKNode){
        if children.parent == nil{
        self.addChild(children)
        }
    }
    func addChildSKNodeToParentSKSpriteNode(parent:SKSpriteNode, children:SKNode){
        if children.parent == nil{
        parent.addChild(children)
        }
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
    
    
    

    override public func update(_ currentTime: TimeInterval) {/*Function execute every second, for timer functionality*/
        
        
       if StartScene.completedGame == false{//Control variable to keep the timer running, once condition is true the timer is stopped
            /* currentTime refers to the pc running clock and renderTime refers to the passing time while the game is running*/
            if currentTime > renderTime {/**currentTime  value is bigger than renderTime only when a second is added, later on renderTime value updates to a future time measure bigger than currentTime, due currenTime is continuously running when it becomes bigger than renderTime value, the execution enters the next block to sum seconds and minutes*/
            
                /**following block is where seconds and minuteds are added*/
                if renderTime > 0{/**In its first iteration renderTime value  is 0.0, so that the execution will go  to the next Else If statement, after the first iteration its value will always be bigger than 0*/
                    timerManagement()
                }
                /**Next block will execute only when renderTime value is 0 and it just formats and render 00(timer) at the beginning of the game, it will only execute once as renderTime value keep increasing*/
                else if renderTime == 0.0{
                    formatCastZeroToStringAndWriteToLabel()
                   
                    //For dev use ONLY
                     /**ATTENTION DUE THIS BLOCK EXECUTE ONCE(SECOND 00). I  PLACE HERE THE RESET FOR PERSISTENT MEMORY WHERE I STORE THE VALUES TO EVALUATE  TIME RECORDS ON GAMEOVERSCENE
                     IN ORDER TO WIPE(reset) PERSISTEN MEMORY UNCOMMENT THE FOLLOWING STATEMENTS RUN THE GAME A FEW SECONDS STOP THE GAME, AND WHEN YOU LAUNCH THE GAME NEXT TIME  PERSISTENT MEMORY WILL BE
                     CLEAN AS WHEN THE GAME IS PLAYED FOR THE FIRST TIME WHEN DOWNLOADED*/
                    //UserDefaults.standard.removeObject(forKey: "secondsAlphabetic")
                    //UserDefaults.standard.removeObject(forKey: "minutesAlphabetic")
                }
                
                renderTime = currentTime + changeTime//updates renderTime value, when this happens renderTime value is bigger than currentTime
            }
            
        }
        /** This block  will execute when completedGame equals true(meaning all nodes were correctly identified), the function below will get gameOverScene. The reason to place here the game transition to gameOverScene is due Touch function needs "space" in order to perform without much lagging as scene transitioning and
         Touch function both require a lot of resouces that can compromise the flow of the game(so basically thats why the scene transition is not placed on Touch function)*/
        
        if StartScene.completedGame == true{
            goToGameOverScene()
        }
        
    }
    //Function adds seconds and minute, also adds penalties when wrong node or skip button is pressed
    func timerManagement(){
            addSecond()
            //seconds += 1
            if seconds == 60 {
                resetSecondsAddMinutes()

            }
            
            //Este bloque solo se ejecuta cuando se presiona sobre el municipio incorrecto, anadiendo 3 segundos al reloj
            if(fail == true){
                
                addPenaltyToSeconds()
                
                //El if statement abajo substituye(0 resume) los proximos if statements comentados,si los segundos al sumarle el penalty sobrepasan 59, dentro del if se convierte a la cantidad de segundos correspondientes osea 60 a 0, 61 a 1 etc....
                if seconds >= 60{
                    resetSecondsAfterPenaltyAddMinutes()
                }
                fail = false
                
            }
            
            if (pressSKipButton == true){
                addSkipButtonPenaltyToSeconds()
                
                
                //El if statement abajo substituye(0 resume) los proximos if statements comentados,si los segundos al sumarle el penalty sobrepasan 59, dentro del if se convierte a la cantidad de segundos correspondientes osea 60 a 0, 61 a 1 etc....
                if seconds >= 60{
                    resetSecondsAfterPenaltyAddMinutes()
                }
                pressSKipButton = false
            }
            
            formatCastToStringAndWriteSecondsAndMinutesToLabel()

    }
    
    func addSecond(){
        seconds += 1
    }
    
    func resetSecondsAddMinutes(){
        seconds = 0
        minutes += 1
    }
    
    func addPenaltyToSeconds(){
        //let penalty = 3
        print("inside")
        seconds = seconds + penalty
    }
    
    func resetSecondsAfterPenaltyAddMinutes(){
        seconds = seconds - 60//Subastracting 60 from seconds gets the number of seconds while seconds are reinitiated
        minutes += 1//adding minutes once seconds count reach 59
    }
    
    func addSkipButtonPenaltyToSeconds(){
        print("15 more seconds")
        seconds = seconds + skipButtonPenalty
    }
    
    func formatCastToStringAndWriteSecondsAndMinutesToLabel(){
        let secondsText = (seconds < 10) ? "0\(seconds)" : "\(seconds)"
        let minutesText = "\(minutes)"
        //"0\(minutes)" : "\(minutes)"//this line of code is to show a 0(01,02,03...minutes) on the minutes counter
        if minutes >= 1 {
              labelTimer.text = "\(minutesText):\(secondsText)"
              
          }
        
          else{
              labelTimer.text = "\(secondsText)"
              
          }
    }
    //Function will only execute during second 00
    func formatCastZeroToStringAndWriteToLabel(){
        let secondsText = (seconds < 10) ?
        "0\(seconds)" : "\(seconds)"
        labelTimer.text = "\(secondsText)"
        //timerBackground.size = labelTimer.frame.size//size para el background del timer para acomodar 00
        print("rendertime = 0")//Esta linea es solo para indicar al programador cuando se ejecuta este bloque
    }
    
    func goToGameOverScene(){
        //musicPlayer.stop()
        
        //StartScene.secondsGameOver = seconds
        //StartScene.minutesGameOver = minutes
        //musicPlayer.stop()
        //self.removeAllActions()
        //self.removeAllChildren()
        
        let gameOverScene = GameOverScene(size: self.size)
        let transition = SKTransition.fade(withDuration: 2.0)//withDuration: 1.5)
    
        self.view?.presentScene(gameOverScene, transition: transition)/*si anado una transicion con 1.0 segundos o hasta 0.5 permite que el ultimo mnicipio se cambie de color antes de cambiar la vista pero ocurre cierto laggin que de cierta forma interfiere con el ritmo que llevaba el juego y afecta un poco la experiencia pero puedo volver a tratar mas adelante ajustando esto hasta dar con la experiencia que busco*/
    }
    //Function gets seconds and minutes to be evaluated at gameOverScene
    func getSecondsAndMinutes(){
        StartScene.secondsGameOver = seconds
        StartScene.minutesGameOver = minutes
    }
    
    //function manage touch on screen
    /*override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {//Touch function
         
        let touch = touches.first!//store touch
        let touchLocation = touch.location(in: self)//Defines the space where touch is taking effect, in this case StartScene
        let touchedNode = self.physicsWorld.body(at:touchLocation)//Defines that touch will take effect when it gets in contact with an SKphysics body
        
        
    
        if (touchedNode != nil){//This line controls the flow by evaluating if a SKphysics body was touch or not, touchNode will return nil when the screen is touched but no SKphysics body was touched
            if (municipioNameLabel.text == touchedNode?.node?.name){//Evaluates touch by matching the label text attribute with node's name attributes
                let spritenode = touchedNode?.node as! SKSpriteNode//pass touchedNode node attribute to spritenode, to apply changes
                paintNode(spriteNode: spritenode)//color SKSpriteNode green
                playCorrectSound()
                /**Set labels and add them to map texture(node)*/
                setLabelForMunicipioNameAndAddToNode(nodeSprite: spritenode)
                /**Element identified is removed from names array, Evaluates for game complition and removal of Skip button*/
                removeIdentifiedElementEvaluateCompleteGameAndSkipButtonRemoval()
                /**set new municipio to look after*/
                setNewMunicipioNameToLookUp()
                /**add one to number of municipios located*/
                addToScoreCountWriteToLabel()
                
            }
            
            /*Skip button touch action**/
            else if (skipButton.name == touchedNode?.node?.name){//Es lo mismo que preguntar si el physics body tocado se llama (name) como skipButton, la condicion quiere saber si tocamos skipButton basicamente
                addOneTocurrentIndexSetNameToLookUp()
            }
            /**Exit button touch action*/
            else if (exitRedButton.name == touchedNode?.node?.name){
                goToStartMenu()
            }
           
            //else statement will execute whenever a wrong municipio node is touched
            else{
                playIncorrectSound()
                
                return fail = true//variable updates to apply 3 seconds penalty at timer function
            }
        }
    }*/
    
    func playCorrectSound(){
        if StartMenu.gamePlaySoundOn == true{
            run(correctSound)//correctSound
        }
    }
    
    //paint nodes green also sets physics body to nil
    func paintNode(spriteNode:SKSpriteNode){
        spriteNode.colorBlendFactor = 0.8
        spriteNode.color = UIColor.init(red: 0, green: 1, blue: 0.949, alpha: 1.0)//(red: 0, green: 1, blue: 1, alpha: 1.0)//(red: 0.098, green: 1, blue: 1, alpha: 1.0)//UIColor.init(red: 0, green: 1, blue: 0.949, alpha: 1.0)//UIColor.init(red: 0, green: 1, blue: 0.949, alpha: 1.0)//(red: 0, green: 1, blue: 0.9137, alpha: 1.0)//UIColor.init(red: 0.0314, green: 1, blue: 0.7843, alpha: 1.0)//UIColor.init(red: 0.5686, green: 1, blue: 0.8745, alpha: 1.0)
        //spriteNode.colorBlendFactor = 0.8
        //spriteNode.physicsBody = nil
    }
    
    //following function sets labels for municio names using one or two labels and adds labels to map node(municipio map node)
    func setLabelForMunicipioNameAndAddToNode(nodeSprite:SKSpriteNode){
           
           let locationNameLabel = SKLabelNode()/**Label serves two uses, first it's the display label on map for short named municipios but also is use to pass its text Attributes to function splitTextIntoFields*/
           let firstLineLabel = SKLabelNode()//First label for long named municipio names(ex. Aguas Buenas)
           let secondLineLabel = SKLabelNode()//Second label for long named municipio names(ex Aguas Buenas)
           locationNameLabel.text = municipioNameLabel.text//Text atribute is pass to locationNameLabel to be used by one word municipios(except for Las Piedras and Las Marias) same
           
           /**The switch statement allows to set the label(that identifies each municipio in the map) with attributes necessary to acamodate text, set positioning and other attributes  exclusive to a group of nodes or individual nodes  */
           /**The execution will enter the case that corresponds with the String value of municipioNameLabel.text*/
           switch municipioNameLabel.text {
                   
           case "Adjuntas", "Aguada", "Añasco", "Lajas", "Maricao", "Las Marías", "Moca", "Yauco", "Guánica", "Lares", "Arecibo", "Utuado", "Ponce", "Jayuya",
               "Manatí", "Coamo", "Orocovis", "Villalba", "Comerío", "Toa Alta", "Caguas", "Cidra", "Salinas", "Culebra", "Naguabo", "Yabucoa" :
              setOneLineMunicipioNameLabel(Oneline:locationNameLabel)//Attributes are set for label
              locationNameLabel.horizontalAlignmentMode = .center
              locationNameLabel.verticalAlignmentMode = .center
              
          case "Camuy", "Aguadilla", "Juncos":
              setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
              locationNameLabel.fontSize = 5.0
              locationNameLabel.position = CGPoint(x: -2.0, y: 0.0)

          case "Cayey":
              setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
              locationNameLabel.position = CGPoint(x: -6.5, y: 3.0)

              
          case "Isabela", "Corozal", "Morovis", "Aibonito", "Gurabo", "Luquillo":
              setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
              locationNameLabel.fontSize = 5.0
              locationNameLabel.position = CGPoint(x: 0.5, y: 0.5)
              //locationNameLabel.zPosition = 1

              
          case "Hormigueros":
              setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
          locationNameLabel.fontSize = 3.9
              locationNameLabel.zRotation = 10.0
              locationNameLabel.position = CGPoint(x: -0.5, y: 2.5)
       
           case "Maunabo" :
               setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
               locationNameLabel.fontSize = 4.5
               locationNameLabel.zRotation = 10.0
          locationNameLabel.position = CGPoint(x: -1.5/*-0.5*/, y: 2.5)

              
          case "Rincón", "Canóvanas", "Arroyo", "Patillas" :
              setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
              locationNameLabel.fontSize = 5.0
              locationNameLabel.zRotation = 10.5
              locationNameLabel.position = CGPoint(x: -4.5, y: 1.0)

              
          case "Mayagüez":
              setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
              locationNameLabel.fontSize = 5.4
              locationNameLabel.position = CGPoint(x: 42.0, y: 21.5)

              
          case "Quebradillas", "Hatillo", "Peñuelas", "Carolina":
              setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
              locationNameLabel.fontSize = 5.5
              locationNameLabel.zRotation = 10.8
              locationNameLabel.position = CGPoint(x: 1.5, y: -1.2)

              
          case "Guayanilla" :
              setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
              locationNameLabel.fontSize = 5.5
              locationNameLabel.position = CGPoint(x: 2.5, y:12.5)
              locationNameLabel.zRotation = 9.0
          
          case "Guaynabo":
              setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
              locationNameLabel.fontSize = 5.0
              locationNameLabel.zRotation = 1.6
              locationNameLabel.position = CGPoint(x: 0.5, y: -1.2)

          case  "Barceloneta":
              setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
              locationNameLabel.fontSize = 4.5
              locationNameLabel.zRotation = 1.9
              locationNameLabel.position = CGPoint(x: 0.5, y: -2.2)
              
          case  /*"Barceloneta",*/ "Bayamón", "Dorado"/*, "Guaynabo"*/:
              setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
              locationNameLabel.fontSize = 5.1
              locationNameLabel.zRotation = 1.9
              locationNameLabel.position = CGPoint(x: 0.5, y: -1.2)

              
          case "Florida" :
              setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
              locationNameLabel.fontSize = 4.5
              locationNameLabel.position = CGPoint(x: 0.5, y: 0.5)

              
          case  "Ciales", "Ceiba" :
              setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
              locationNameLabel.position = CGPoint(x: 5.5, y: 0.5)

              
              
          case "Naranjito", "Barranquitas", "Las Piedras", "Humacao" :
              setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
              locationNameLabel.fontSize = 4.5
              locationNameLabel.zRotation = 2.3
              locationNameLabel.position = CGPoint(x: 3.5, y: 1.0)

              
          case "Cataño":
              setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
              locationNameLabel.fontSize = 3.6//4.0
              locationNameLabel.position = CGPoint(x: 0.5, y: 1.5)

              
          case "Loíza" :
              setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
              locationNameLabel.fontSize = 7.5
              locationNameLabel.zRotation = 6.18
              locationNameLabel.xScale = 1.0
              locationNameLabel.position = CGPoint(x: 10.0, y: 0.5)

              
          case "Fajardo":
              setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
              locationNameLabel.position = CGPoint(x: -5.7, y: 8.5)

              
          case "Guayama":
              setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
              locationNameLabel.position = CGPoint(x: 0.5, y: 6.5)

              
          case "Vieques":
              setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
              locationNameLabel.position = CGPoint(x: -40.5, y: -8.5)

                 
              
          case "Cabo Rojo", "San Germán", "San Sebastián", "Juana Díaz", "Vega Baja", "San Juan", "Santa Isabel", "Aguas Buenas", "Rio Grande" :
              setTwoLineMunicipioNameLabels(labelLineFirst:firstLineLabel, labelLineSecond:secondLineLabel)//Attributes are set for label
              firstLineLabel.text = splitTextIntoFields(theText:locationNameLabel.text!)//adds first part of text attribute(ex.Aguas)
              secondLineLabel.text = splitTextIntoFieldsTwo(theText:locationNameLabel.text!)//adds second part of text attribute(ex.Buenas)
              secondLineLabel.verticalAlignmentMode = .top

              
          case "Sabana Grande" :
              setTwoLineMunicipioNameLabels(labelLineFirst:firstLineLabel, labelLineSecond:secondLineLabel)
              firstLineLabel.text = splitTextIntoFields(theText:locationNameLabel.text!)
              secondLineLabel.text = splitTextIntoFieldsTwo(theText:locationNameLabel.text!)
              firstLineLabel.fontSize = 5.0
              secondLineLabel.fontSize = 5.0
              firstLineLabel.position = CGPoint(x:-4.0, y:5.5)
              secondLineLabel.position = CGPoint(x:-3.5, y:13.0)

              
          case "Vega Alta":
              setTwoLineMunicipioNameLabels(labelLineFirst:firstLineLabel, labelLineSecond:secondLineLabel)
              firstLineLabel.text = splitTextIntoFields(theText:locationNameLabel.text!)
              secondLineLabel.text = splitTextIntoFieldsTwo(theText:locationNameLabel.text!)
              firstLineLabel.position = CGPoint(x:2, y:0.5)
              secondLineLabel.verticalAlignmentMode = .top

              
          case "Toa Baja":
              setTwoLineMunicipioNameLabels(labelLineFirst:firstLineLabel, labelLineSecond:secondLineLabel)
              firstLineLabel.text = splitTextIntoFields(theText:locationNameLabel.text!)
              secondLineLabel.text = splitTextIntoFieldsTwo(theText:locationNameLabel.text!)
              firstLineLabel.horizontalAlignmentMode = .right
              secondLineLabel.verticalAlignmentMode = .top
              secondLineLabel.horizontalAlignmentMode = .right

              
          case "Trujillo Alto" :
              setTwoLineMunicipioNameLabels(labelLineFirst:firstLineLabel, labelLineSecond:secondLineLabel)
              firstLineLabel.text = splitTextIntoFields(theText:locationNameLabel.text!)
              secondLineLabel.text = splitTextIntoFieldsTwo(theText:locationNameLabel.text!)
              firstLineLabel.fontSize = 5.5
              secondLineLabel.fontSize = 5.5
              firstLineLabel.position = CGPoint(x:-4.0, y:0.5)
              secondLineLabel.position = CGPoint(x:-3.5, y:6.5)

              
          case "San Lorenzo"  :
              setTwoLineMunicipioNameLabels(labelLineFirst:firstLineLabel, labelLineSecond:secondLineLabel)
              firstLineLabel.text = splitTextIntoFields(theText:locationNameLabel.text!)
              secondLineLabel.text = splitTextIntoFieldsTwo(theText:locationNameLabel.text!)
              secondLineLabel.position = CGPoint(x:4.5, y:6.0)

               
                   default:
                       break
           }
        
           if(useLine2 == true){
             nodeSprite.addChild(firstLineLabel)//adds label to map node
             nodeSprite.addChild(secondLineLabel)//adds label to map node
             useLine2 = false
           }
               
           else{
             nodeSprite.addChild(locationNameLabel)//adds label to map node
           }
       }
    
    //sets attributes for label to use with one word municipio names
    func setOneLineMunicipioNameLabel(Oneline:SKLabelNode){
        //Oneline.text = municipioNameLabel.text
        Oneline.fontName = "ArialMT"//"Helvetica"
        Oneline.fontColor = UIColor.init(red: 0.149, green: 0.149, blue: 0.149, alpha: 1.0)
        Oneline.xScale = -1.0
        Oneline.zRotation = 9.44
        Oneline.fontSize = 5.4
    }
    //sets attributes for labels to use with two word municipio names
    func setTwoLineMunicipioNameLabels(labelLineFirst:SKLabelNode, labelLineSecond:SKLabelNode){
        
        labelLineFirst.fontName = "ArialMT"//"Helvetica"
        labelLineSecond.fontName = "ArialMT"//"Helvetica"
        labelLineFirst.fontSize = 5.4
        labelLineSecond.fontSize = 5.4
        labelLineFirst.fontColor = UIColor.init(red: 0.149, green: 0.149, blue: 0.149, alpha: 1.0)
        labelLineSecond.fontColor = UIColor.init(red: 0.149, green: 0.149, blue: 0.149, alpha: 1.0)
        labelLineFirst.xScale = -1.0
        labelLineSecond.xScale = -1.0
        labelLineFirst.zRotation = 9.44
        labelLineSecond.zRotation = 9.44
    }
    
    //The next two fucctions are identical with the difference that each return a different part of the text
    func splitTextIntoFields(theText:String)->String{
        
        twoLineText = theText//text to split in two(ex:"Aguas Buenas")

        var line1:String = ""//var declaration for String value to be returned
        var line2:String = ""
            
            
        for letter in twoLineText{//each character is split on each for loop iteration(one character at a time)
            if (String(letter) == " "){
                useLine2 = true
            }
                
            if(useLine2 == false){
                line1 = line1 + String(letter)//casting of letter to String
            }
            else {
                line2 = line2 + String(letter)
            }
                
            //i += 1
        }
        return line1
    }
    
    func splitTextIntoFieldsTwo(theText:String)->String{
        useLine2 = false//This lie resets the variable which is necessary in order not to create repetition of text ex Aguas Aguas Buenas
        //var twoLineText: String = ""
        twoLineText = theText
        //var i: Int = 0
        var line1:String = ""
        var line2:String = ""
            
            
        for letter in twoLineText{
            if (String(letter) == " "){
                useLine2 = true
            }
                
            if(useLine2 == false){
                line1 = line1 + String(letter)
            }
            else {
                line2 = line2 + String(letter)
            }
                
            //i += 1
            }
        return line2
    }
    
    func removeIdentifiedElementEvaluateCompleteGameAndSkipButtonRemoval(){
        let countOfIndexes = municipios_names_array.count - 1//Gets the number of indexes in array

        /**cuurentIndex and countOfIndexes will be different as long as the end of the array have not been reached. they become equal under two scenarios when the end of array is reached but still some skipped nodes remain to be identified
         or reaching the end of array by  identifying all nodes*/
        if currentIndex != countOfIndexes{
            municipios_names_array.remove(at:currentIndex)//remove element at the index from array
        }
            
        /**This condition equals true when currentIndex and countOfIndexes are equals but both equal or bigger than 1. This scenario will play out when skipButtom is pressed , this moves the index forward from default index position 0. When index have moved foward  and the end of array have been reached(at this point currentIndex and countOfIndexes are equals but both equal or bigger than 1 (Note:actually both value are equals to the number of skipped elements)) , then currentIndex must be moved back to 0 in order to be able to evaluate and look up the remaining skipped elements.  */
        else if currentIndex == countOfIndexes && currentIndex >= 1 && countOfIndexes >= 1{
            municipios_names_array.remove(at:currentIndex)//remove element at the index from array
            currentIndex = 0/*resets currentIndex once end of array been reached to go back to index 0 and go over the remaining skipped municipios*/
        }
            
        /**following statement will execute when currentIndex and countOfIndexes equals 0 meaning that last element have been identified and prepare the game to move to gameOverScene*/
        else{
            //musicPlayer.stop()
            //self.removeAllActions()//It catches the last correctSound in order for transition to gameOverScene to flow smoother with less laggin
            getSecondsAndMinutes()//gets seconds and minutes to be used for time record function at gameOverScene
            StartScene.completedGame = true//variable updates to stop the timer and execute the transition to gameOverScene (gameOverScene TRANSITION EXECUTES AT UPDATE FUNCTION)
        }
        /**the following condition is true when var countOfIndexes == 1(meaning there are two elements left 0 and 1) and currentIndex value is 0 or first index of array, where is the second to last element(penultimo elemento), that at this point have been already removed in the block above. But due countOfIndexes updates in the following iteration, to the effect of the present iteration there are two elements left and this allows for this condition to evaluate to true in order to toguether with the removing second to last element(in the previous block) its also removed the skipButton on this block. WHAT IS IMPORTANT TO ACKNOWLEDGE IS THAT THE REMOTION OF SECOND TO LAST(PENULTIMO) ELEMENT AND SKIPBUTTON HAPPENS IN THE SAME ITERATION*/
        if  countOfIndexes == 1 && currentIndex == 0 && municipios_names_array.endIndex-1 == 0 {
         print("skip button out")
         skipButton.removeFromParent()
        }
        
    }
    
    /**following function pass text attributes for the next municipio name to look up and adjust the background size for the label(municipioNameLabel) */
    func setNewMunicipioNameToLookUp(){
        municipioNameLabel.text = municipios_names_array [currentIndex] //Se desplega el nuevo municipio a ser localizado por el jugador
        
        if municipioNameLabel.text == "Aguas Buenas" || municipioNameLabel.text == "Barceloneta" || municipioNameLabel.text == "Barranquitas" || municipioNameLabel.text == "Cabo Rojo"
        || municipioNameLabel.text == "Canóvanas" || municipioNameLabel.text == "Guayanilla" || municipioNameLabel.text == "Guaynabo" || municipioNameLabel.text == "Hormigueros"
        || municipioNameLabel.text == "Juana Díaz" || municipioNameLabel.text == "Las Marías" || municipioNameLabel.text == "Las Piedras" || municipioNameLabel.text == "Mayagüez"
        || municipioNameLabel.text == "Quebradillas" || municipioNameLabel.text == "Rio Grande" || municipioNameLabel.text == "Sabana Grande" || municipioNameLabel.text == "San Germán"
        || municipioNameLabel.text == "San Lorenzo" || municipioNameLabel.text == "San Sebastián" || municipioNameLabel.text == "Santa Isabel" || municipioNameLabel.text == "Trujillo Alto"{
            if municipiosNameBackgroundTwo.parent == nil{
                municipioNameLabel.removeFromParent()
                municipiosNameBackground.removeFromParent()
                
                if screenSize.width == 2048.0 && screenSize.height == 2732.0{
                    municipiosNameBackgroundTwo.setScale(1.9)
                }
                
                else if screenSize.width == 1668.0 && screenSize.height == 2224.0 || screenSize.width == 1536.0 && screenSize.height == 2048.0 || screenSize.width == 1668.0 && screenSize.height == 2388.0 || screenSize.width == 2048.0 && screenSize.height == 2732.0 || screenSize.width == 1620.0 && screenSize.height == 2160.0 || screenSize.width == 1640.0 && screenSize.height == 2360.0 || screenSize.width == 1488.0 && screenSize.height == 2266.0 {
                    municipiosNameBackgroundTwo.setScale(1.75)
                }
                else{
                    municipiosNameBackgroundTwo.setScale(1.20)
                }
                addChildSKLabelNodeToParentSKSpriteNode(parent: municipiosNameBackgroundTwo, children: municipioNameLabel)
                addChildSKSpriteNodeToParentSKSpriteNode(parent: controlPanelSKSpriteNode, children: municipiosNameBackgroundTwo)
            }
            //if else municipiosNameBackgroundTwo.parent
        }
        else {
            if municipiosNameBackground.parent == nil{
            municipioNameLabel.removeFromParent()
            municipiosNameBackgroundTwo.removeFromParent()
            addChildSKLabelNodeToParentSKSpriteNode(parent: municipiosNameBackground, children: municipioNameLabel)
            addChildSKSpriteNodeToParentSKSpriteNode(parent: controlPanelSKSpriteNode, children: municipiosNameBackground)
            }
        }
    }
    
    //function updates the label rendering the number of municipios identified already at the bottom right of screen
    func addToScoreCountWriteToLabel(){
        scoreCount += 1
        labelScores.text = "\(scoreCount)" + totalScoreCount//totalScoreCount es un constant string solo sirve al rendering del score
    }
    
    /*funtion adds 1 to currentIndex(due skipButton been pressed). Also gives alpha effect to the button when pressed, updates variables for penalty(pressSkipButton) at Update(timer) function and updates
    skipButtonPressed to complete alpha effect at touchesEnded function and set the new municipio to look up at municipioNameLabel*/
    func addOneTocurrentIndexSetNameToLookUp(){
        currentIndex += 1
        //skipButton.alpha = 0.88
        pressSKipButton = true
        //skipButtonPressed = true THIS IS USED WHEN touchesEnd FUNCTION IS USED FOR ALPHA EFFECT ON BUTTON AT THE MOMENT IT IS NOT ON USE DUE TO HANDGESTURE TAP FUNCTION IS USED INSTEAD.
        
        if currentIndex == municipios_names_array.endIndex-0{//Si el indice llega al ultimo elemento el index se devuelve al 0 para comenzar a iterar los municipios que no fueron identificados en la pasada anterior del juego
            print("This")//para programador
            currentIndex = 0//resetea el index al lugar 0 cuando presionando el skip button alcanzamos el ultimo indice
        }
        
        setNewMunicipioNameToLookUp()
        print("Skip Button touched")
    }
    
    //transition to StartMenu Scene when exit button is pressed
    func goToStartMenu(){
        let startMenuScene = StartMenu(size: self.size)//definitio
        //let transition = SKTransition.doorsOpenVertical(withDuration: 1.5)
        self.view?.presentScene(startMenuScene)/*present scene and execut transitions*/
    }
    
    func playIncorrectSound(){
        if StartMenu.gamePlaySoundOn == true{
            run(incorrectSound)
        }
    }

    //function detects when the touch on screen have ended in order to complete alpha effect that started at addOneTocurrentIndexSetNameToLookUp()
    /*override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        //Efecto para el skipButton cuando se suelta el boton
        if skipButtonPressed == true{
            print("ENtering touchesEnd")
            skipButton.alpha = 2.5//Ojo esto se veria mejor dentro de un if sin embargo  si utilizo una condicion como if skipButton.alpha == 1.0 causa un glitch, pero puedo hacer una condicion con una variable boolean
            skipButtonPressed = false
        }
        //Exit button does not have alpha effect as it goes out of view when pressed
    }*/

}
