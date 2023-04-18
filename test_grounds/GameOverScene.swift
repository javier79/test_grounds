//
//  GameOverScene.swift
//  test_grounds
//
//  Created by javier pizarro on 4/4/22.
//  Copyright © 2022 javierpizarro. All rights reserved.
//
import Foundation
import SpriteKit
//import UIKit
import AVFoundation

class GameOverScene: SKScene{
    //var arrayOfMapSpriteNodes = [SKSpriteNode()]
    //var twoLineText: String = ""//se usa solo en las dos funciones splitTextIntoFields puedo declararla en ambas funciones de manera local
    //var useLine2:Bool = false//se usa en mas de una funcion
    let mapRectangleGestureMGMT: SKSpriteNode = GamePlayRenderingObjects().mapRectangleGestureMGMTBezierPathToSKSpriteNode(bpRectangle: TestClass().createRectangle())//This Node is invisible, it works by parenting containeNode and applying handgestures as SKNode have no anchor point property which is needed to be set at 0.5 for the pinch gesture to be able to zoom and be centered
    let containerNode = CreateSetMapNodes().initSetcontainerNodeAndChildren()
    let endGameRectangle = GameOverRenderingObjects().endGameRectangleBezierPathToSKSpriteNode(bpEndGameRectangle: GameOverRenderingObjects().createEndGameRectangle())
    let endGameRectangleButton = GameOverRenderingObjects().endGameRectangleMapButtonBezierPathToSKSpriteNode(bpEndGameRectangleButton:GameOverRenderingObjects().createEndGameRectangleSidesButtons())
    let endGameRectangleButtonTwo = GameOverRenderingObjects().endGameRectangleJugarOtraButtonBezierPathToSKSpriteNode(bpEndGameRectangleButton:GameOverRenderingObjects().createEndGameRectangleMiddleButton())
    let endGameRectangleButtonThree = GameOverRenderingObjects().endGameRectangleSalirButtonBezierPathToSKSpriteNode(bpEndGameRectangleButton:GameOverRenderingObjects().createEndGameRectangleSidesButtons())
    let resultadosButton = GameOverRenderingObjects().redButtonBpDrawToSKSpriteNode()
    let labelOne = SKLabelNode(); let labelTwo = SKLabelNode(); let labelThree = SKLabelNode(); let labelFour = SKLabelNode();  let labelFive = SKLabelNode();  let labelSix = SKLabelNode()
    let labelSeven = SKLabelNode(); let labelEight = SKLabelNode(); let labelNine = SKLabelNode(); let labelTen = SKLabelNode()
    var playagain: Bool = false
    var exited:Bool = false
    let fanfair = SKAction.playSoundFileNamed("cartoon_success_fanfair 1", waitForCompletion: false)
    //let backgroundMusic = SKAudioNode(fileNamed: "predited.mp3")
    var musicPlayer = AVAudioPlayer()
    let musicURL:URL? = Bundle.main.url(forResource:"predited", withExtension:"mp3")//reference to PR Himn
    var isScaled = false
    
    override func didMove(to view: SKView) {
        //PracticeAlphabeticGame.completedGame = true
        
        if StartMenu.gamePlaySoundOn == true{
            run(fanfair)
        }
        self.backgroundColor = UIColor.init(red: 0.2588, green: 0.7608, blue: 1, alpha: 1.0)
        
        mapRectangleGestureMGMT.zPosition = 0
        mapRectangleGestureMGMT.anchorPoint = CGPoint(x:0.5, y:0.5)
        mapRectangleGestureMGMT.position = CGPoint(x:self.size.width / 2, y:self.size.height / 1.8)
        
        containerNode.zPosition = -1
        containerNode.position = CGPoint(x:-280, y:-190)//CGPoint(x:self.size.width/2 - 285, y:self.size.height/2 - 175) /*CGPoint(x:-275 , y:-75 /*15*/)*//**Sknode containing(children) map sprites, desecheo cover(node whose only job is to hid desecheo island, rectangular frames)*/
        
        endGameRectangle.position = CGPoint(x: self.size.width/2, y: self.size.height/2 + 16)
        endGameRectangle.zPosition = 2
        setEndgameRectangleLabels()
        //containerNode.position = CGPoint(x:self.size.width/2 - 285, y:self.size.height/2 - 175)
        //setEndGameRectangleMapButtonAndLabels()
        resultadosButton.position = CGPoint(x: self.size.width/2, y: self.size.height/2 - 102)
        
        
        if RandomGame.completedGame == true{
            secondsAndMinutesBestTimesAssesmentAndRecordStatusAndTimesRenderingRandom(second:RandomGame.secondsGameOver,minute:RandomGame.minutesGameOver)
        }
        else if StartScene.completedGame{
            secondsAndMinutesBestTimesAssesmentAndRecordStatusAndTimesRenderingAlphabetic(second:StartScene.secondsGameOver,minute:StartScene.minutesGameOver)
        }
        
        
        endGameRectangle.addChild(endGameRectangleButton)
        endGameRectangle.addChild(endGameRectangleButtonTwo)
        endGameRectangle.addChild(endGameRectangleButtonThree)
        
        addChildSKNodeToParentSKSpriteNode(parent:mapRectangleGestureMGMT, children:containerNode)
        addChildSKSpriteNodeToParentself(children:mapRectangleGestureMGMT)
        //self.addChild(containerNode)
        self.addChild(endGameRectangle)
        
        //set an call hand gesture recognizers
        let pinchRecognizer: UIPinchGestureRecognizer = UIPinchGestureRecognizer(target:self, action: #selector(self.handlePinchFrom(_:)))
        self.view!.addGestureRecognizer(pinchRecognizer)
        
        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(self.handlePan(_:)))
        // Add the gesture recognizer to the scene's view
        self.view!.addGestureRecognizer(panGestureRecognizer)
        
        
        //musicURL = Bundle.main.url(forResource:"predited", withExtension:"mp3")
        if StartMenu.backgroundMusicOn == true{
            //self.addChild(StartScene.backgroundMusic)
            initMusic()
        }
    }
    
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
    
    @objc func handlePinchFrom(_ sender: UIPinchGestureRecognizer) {
        
        //Constraints for limiting the scaling  of the node
        if mapRectangleGestureMGMT.xScale * sender.scale < 1.0 {
            sender.scale = 1.0 / mapRectangleGestureMGMT.xScale
        } else if mapRectangleGestureMGMT.xScale * sender.scale > 1.7 {
            sender.scale = 1.7 / mapRectangleGestureMGMT.xScale
        }

        if mapRectangleGestureMGMT.yScale * sender.scale < 1.0 {
            sender.scale = 1.0 / mapRectangleGestureMGMT.yScale
        } else if mapRectangleGestureMGMT.yScale * sender.scale > 1.7 {
            sender.scale = 1.7 / mapRectangleGestureMGMT.yScale
        }
        
        //Set scaling action
        let pinch = SKAction.scale(by: sender.scale, duration: 0.0)
        mapRectangleGestureMGMT.run(pinch)
        sender.scale = 1.0
        
        //Asses if the node is scaled or not(scaled to default size)
        if sender.state == .ended{
        
            if mapRectangleGestureMGMT.xScale > 1.0 && mapRectangleGestureMGMT.yScale > 1.0 {
                isScaled = true
                print("scaled bigger")
            }
            let tolerance: CGFloat = 0.001

            if abs(mapRectangleGestureMGMT.xScale - 1.0) < tolerance && abs(mapRectangleGestureMGMT.yScale - 1.0) < tolerance {
                isScaled = false
                mapRectangleGestureMGMT.position = CGPoint(x:self.size.width / 2, y:self.size.height / 1.8)//Whenever node is scaled back to default size the node is repositioned at default position or center
                print("scaled back to normal")
            }
        }
    }
    
     override public func update(_ currentTime: TimeInterval) {
        
           if playagain == true{
                if  StartScene.completedGame == true{
                    //self.removeAllChildren()
                    //self.removeAllActions()
                    StartScene.completedGame = false
                    //playagain = false
                    let startScene = StartScene(size: self.size)//definitio
                    //let transition = SKTransition.fade(withDuration: 1.0)
                    self.view?.presentScene(startScene/*, transition: transition*/)/*present scene and execut transitions*/
                    
                }
                else if RandomGame.completedGame == true{
                    //self.removeAllChildren()
                    //self.removeAllActions()
                    RandomGame.completedGame = false
                    //playagain = false
                    let randomGame = RandomGame(size: self.size)//definitio
                    //let transition = SKTransition.fade(withDuration: 1.0)
                    self.view?.presentScene(randomGame/*, transition: transition*/)/*present scene and execut transitions*/
                    
                    
                }
                else if PracticeAlphabeticGame.completedGame == true{
                    //self.removeAllChildren()
                    //self.removeAllActions()
                    PracticeAlphabeticGame.completedGame = false
                    //playagain = false
                    StartMenu.playPracticeAlphabeticGame = true/*Flow control variable that allows when play again is selected to execute adding name labels to the map nodes when initSetcontainerNodeAndChildren() is called by PracticeAlphabeticGame when game reloads(play again)*/
                    let practiceAlphabeticGame = PracticeAlphabeticGame(size: self.size)//definitio
                    //let transition = SKTransition.fade(withDuration: 1.0)
                    self.view?.presentScene(practiceAlphabeticGame/*, transition: transition*/)/*present scene and execut transitions*/
                    
                    
                }
                else if PracticeRandomGame.completedGame == true{
                    //self.removeAllChildren()
                    //self.removeAllActions()
                    PracticeRandomGame.completedGame = false
                    //playagain = false
                    StartMenu.playPracticeRandomGame = true/*Flow control variable that allows when play again is selected to execute adding name labels to the map nodes when initSetcontainerNodeAndChildren() is called by PracticeRandomGame when game reloads(play again)*/
                    let practiceRandomGame = PracticeRandomGame(size: self.size)//definitio
                    //let transition = SKTransition.fade(withDuration: 1.0)
                    self.view?.presentScene(practiceRandomGame/*, transition: transition*/)/*present scene and execut transitions*/
                }
                playagain = false
            }
        
        if exited == true{
            /*Los if statements van a devolver completedGame a false, de lo contrario si oprimo salir en GameOverScene, cuando vuelvo a comenzar un juego
            va hacer el rendering de GameOverScene ya que completedGame tendria como valor true*/
            if StartScene.completedGame == true{
                StartScene.completedGame = false
            }
            if RandomGame.completedGame == true{
                RandomGame.completedGame = false
            }
            if PracticeRandomGame.completedGame == true{
                PracticeRandomGame.completedGame = false
            }
            if PracticeAlphabeticGame.completedGame == true{
                PracticeAlphabeticGame.completedGame = false
            }
            
           //self.removeAllActions()
           //self.removeFromParent()

           let startMenu = StartMenu(size: self.size)//definitio
           //let transition = SKTransition.fade(withDuration: 1.0)
           self.view?.presentScene(startMenu/*, transition: transition*/)/*present scene and execut transitions*/
           exited = false
       }
    }
    
     override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch = touches.first!//Guarda toque de pantalla
        let touchLocation = touch.location(in: self)//Define el espacio en donde van a tomar efecto los toques de pantalla en este caso la vista StartScene
        let touchedNode = self.physicsWorld.body(at:touchLocation)//Se define que el toque de pantalla tomara efecto cuando el mismo entre en contacto con un SKphysics body, dentro de la vista StartScene
        
        if (touchedNode != nil){
            if (endGameRectangleButton.name == touchedNode?.node?.name){
                endGameRectangle.removeFromParent()
                self.addChild(resultadosButton)

            }
                
            else if (resultadosButton.name == touchedNode?.node?.name){
                resultadosButton.removeFromParent()
                self.addChild(endGameRectangle)

            }
            
            else if (endGameRectangleButtonTwo.name == touchedNode?.node?.name){
                playagain = true
            }
            
            else if(endGameRectangleButtonThree.name == touchedNode?.node?.name){
                exited = true
               
            }
            
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
    
    func setEndgameRectangleLabels(){
        
        
        if StartScene.completedGame == true || RandomGame.completedGame == true{
            /*Abajo se otorga la propiedad de nombre a los labels, propiedad que se utiliza en el proximo bloque , El unico propsito de esto es aislar cada label aprovechando cada iteracion del for loop para asignarles a cada uno propiedades en una misma y unica ejecucion de la funcion */
            labelOne.name = "labelOne"; labelTwo.name = "labelTwo"; labelThree.name = "labelThree"; labelFour.name = "labelFour"; labelFive.name = "labelFive"; labelSix.name = "labelSix"
            
            let arrayOflabelsChallenge = [labelOne, labelTwo, labelThree, labelFour, labelFive, labelSix]/*Poner los elementos a iterar en un for loop por medio de un array me permite reusar codigo, en vez de escribir un bloque por label donde por ejempl
              propiedades como fontName,fontSize y fontColor se escribirian 6 veces*/
            
            for label in arrayOflabelsChallenge {
                /*Ojo en el primer bloque estan las propiedades que quiero afecte a todos mis objetos o que son default por llamarlos de algua forma*/
                label.fontName = "AvenirNext-Bold"
                label.fontSize = 15
                label.fontColor = UIColor.white//init(red: 0.7922, green: 0.8353, blue: 0.8863, alpha: 1.0)/*init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)*/
                //label.zPosition = 3
                
                if label.name == "labelOne"{
                    label.position = CGPoint(x:-0, y:60)
                }
                if label.name == "labelTwo"{
                    label.position = CGPoint(x:-0, y:40)
                }
                if label.name == "labelThree"{
                    label.position = CGPoint(x:-0, y:10)
                }
                if label.name == "labelFour"{
                    label.position = CGPoint(x:-5, y:-10)
                }
                if label.name == "labelFive"{
                    label.position = CGPoint(x:65, y:50)
                }
                if label.name == "labelSix"{
                    label.position = CGPoint(x:65, y:0)
                }
                endGameRectangle/*Node*/.addChild(label)//se anaden los labels como hijos de endGameRectangle
           }
        }
        
        else if PracticeAlphabeticGame.completedGame == true || PracticeRandomGame.completedGame {
            labelSeven.name = "labelSeven"; labelEight.name = "labelEight"; labelNine.name = "labelNine"; labelTen.name = "labelTen"
            
            let arrayOflabelsPractice = [labelSeven, labelEight, labelNine, labelTen]
            
            for label in arrayOflabelsPractice {
                /*Ojo en el primer bloque estan las propiedades que quiero afecte a todos mis objetos o que son default por llamarlos de algua forma*/
                label.fontName = "AvenirNext-Bold"
                label.fontColor = UIColor.white//init(red: 0.7922, green: 0.8353, blue: 0.8863, alpha: 1.0)/*init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)*/

                if label.name == "labelSeven"{
                label.fontSize = 15
                label.text = "Tu Tiempo (Your Time):"
                label.position = CGPoint(x:0, y:90)
                }
                
                if label.name == "labelEight"{
                label.fontSize = 16
                label.fontColor = UIColor.init(red: 0/255, green: 134/255, blue: 252/255, alpha: 1.0)
                
                if PracticeAlphabeticGame.completedGame == true{
                    if PracticeAlphabeticGame.secondsGameOver < 10{
                    label.text = "\(PracticeAlphabeticGame.minutesGameOver) : 0\(PracticeAlphabeticGame.secondsGameOver)"
                    }
                    else{
                     label.text = "\(PracticeAlphabeticGame.minutesGameOver) : \(PracticeAlphabeticGame.secondsGameOver)"
                    }
                }
                    
                else if PracticeRandomGame.completedGame{
                    if PracticeRandomGame.secondsGameOver < 10{
                    label.text = "\(PracticeRandomGame.minutesGameOver) : 0\(PracticeRandomGame.secondsGameOver)"
                    }
                    else{
                     label.text = "\(PracticeRandomGame.minutesGameOver) : \(PracticeRandomGame.secondsGameOver)"
                    }
                }
                    
                label.position = CGPoint(x:0, y:55)

                }
                if label.name == "labelNine"{
                label.fontSize = 10
                label.fontColor = UIColor.init(red: 0.7922, green: 0.8353, blue: 0.8863, alpha: 1.0)
                label.numberOfLines = 2
                label.preferredMaxLayoutWidth = 220
                label.text = "Inténtalo en Modo de Reto para que tu mejor \n\t\ttiempo sea grabado"
                label.position = CGPoint(x:0, y:5)

                }
                if label.name == "labelTen"{
                label.fontSize = 10
                label.fontColor = UIColor.init(red: 0.7922, green: 0.8353, blue: 0.8863, alpha: 1.0)
                label.numberOfLines = 2
                label.preferredMaxLayoutWidth = 220
                label.text = "Try it in Challenge Mode so that your best \n\t\ttime can be recorded"
                label.position = CGPoint(x:0, y:-40)

                }
             
                endGameRectangle/*Node*/.addChild(label)//se anaden los labels como hijos de endGameRectangle
            }
            
            
        }
        
        //return endGameRectangleNode
    }
    
    func addChildSKNodeToParentSKSpriteNode(parent:SKSpriteNode, children:SKNode){
        if children.parent == nil{
        parent.addChild(children)
        }
    }
    
    func addChildSKSpriteNodeToParentself(children:SKSpriteNode){
        if children.parent == nil{
        self.addChild(children)
        }
    }
    
    func secondsAndMinutesBestTimesAssesmentAndRecordStatusAndTimesRenderingAlphabetic(second:Int, minute:Int){
         /*Este primer bloque if va a ejecutar siempre que un usuario instala el juego y juega por primera vez o si se borra la data para el juego en el telefono, tambien ejecuta cuando el usuario obtiene una mejor marca de tiempo que quedara registrada en memoria persistente*/
         if  UserDefaults.standard.integer(forKey: "minutesAlphabetic") == 0 && UserDefaults.standard.integer(forKey: "secondsAlphabetic") == 0 || minute < UserDefaults.standard.integer(forKey: "minutesAlphabetic") || minute == UserDefaults.standard.integer(forKey: "minutesAlphabetic") && StartScene.secondsGameOver < UserDefaults.standard.integer(forKey: "secondsAlphabetic") {
             /*Ojo el siguiente bloque es el unico donde se va a ejecutar el alamacenamiento en memoria persistente**/
             UserDefaults.standard.set(minute, forKey:"minutesAlphabetic")
             UserDefaults.standard.set(second, forKey:"secondsAlphabetic")
             
             labelOne.text = "¡NUEVO RECORD!"
             labelTwo.text = "(NEW RECORD!)"
             labelThree.fontColor = UIColor.init(red: 0/255, green: 134/255, blue: 252/255, alpha: 1.0)
             //format casting and rendering of new best record
             let secondsText = (second < 10) ?
             "0\(second)" : "\(second)"
             let minutesText = "\(minute)"
             
             if minute >= 1 {
                 labelThree.text = "\(minutesText):\(secondsText)"
             }
             else{
                 labelThree.text = "\(secondsText)"
                 //timerBackground.size = labelTimer.frame.size Aqui se utiliza el label de forma transparente por eso no se utiliza esta propiedad
                 
             }

             
             //labelFour.text = labelTimer.text esto lo use para probar q en efecto estaba obteniendo el tiempo correcto
         }
         
         else if minute > UserDefaults.standard.integer(forKey: "minutesAlphabetic") || minute == UserDefaults.standard.integer(forKey: "minutesAlphabetic") && second > UserDefaults.standard.integer(forKey: "secondsAlphabetic")||minute == UserDefaults.standard.integer(forKey: "minutesAlphabetic") && second == UserDefaults.standard.integer(forKey: "secondsAlphabetic"){
             //este bloque se va a encargar del rendering de la marca actual cuando no ocurre un nuevo record
             labelOne.text = "Tu Tiempo"
             labelTwo.text = "(Your Time)"
             labelThree.text = "Mejor Tiempo"
             labelFour.text = "(Best Time)"
             labelFive.fontColor = UIColor.init(red: 0/255, green: 134/255, blue: 252/255, alpha: 1.0)
             labelSix.fontColor = UIColor.init(red: 0/255, green: 134/255, blue: 252/255, alpha: 1.0)
             //labelFive.text = labelTimer.text
             let secondText = (second < 10) ?/*Ojo la variable aqui se llama secondText SIN "S", La razon para el cambio de nombre en la variable es pq ambas(secondText/secondsText) son constantes de modo que en el mismo bloque no podrian ejecutar como constantes(con el mismo nombre) y dado que ambas variables cumplen el mismo proposito no se queria cambiar demasiado el nombre. MAS ADELANTE SE VA A CREAR UNA FUNCION UNIVRSAL PARA LIDIAR SOLO CON EL CASTING Y EL RENDERING YA QUE ESTE CODIGO SE REPITE VARIAS VECES*/
             "0\(second)" : "\(second)"
             let minuteText = "\(minute)" //Ojo la variable aqui se llama minuteText SIN "S"
             
             if minute >= 1 {
                 labelFive.text = ":\(minuteText):\(secondText)"
             }
             else{
                 labelFive.text = ":\(secondText)"
                 //timerBackground.size = labelTimer.frame.size
                 
             }
             //este bloque se va a encargar de imprimir la mejor marca que en este caso seria la encontrada en memoria persistente
             let secondsText = (UserDefaults.standard.integer(forKey: "secondsAlphabetic") < 10) ?
             "0\(UserDefaults.standard.integer(forKey: "secondsAlphabetic"))" : "\(UserDefaults.standard.integer(forKey: "secondsAlphabetic"))"
             let minutesText = "\(UserDefaults.standard.integer(forKey: "minutesAlphabetic"))"
             
             if UserDefaults.standard.integer(forKey: "minutesAlphabetic") >= 1 {
                 labelSix.text = ":\(minutesText):\(secondsText)"
             }
             else{
                 labelSix.text = ":\(secondsText)"
                 //timerBackground.size = labelTimer.frame.size
                 
             }
             
         }
        
     }
    
    func secondsAndMinutesBestTimesAssesmentAndRecordStatusAndTimesRenderingRandom(second:Int, minute:Int){
         /*Este primer bloque if va a ejecutar siempre que un usuario instala el juego y juega por primera vez o si se borra la data para el juego en el telefono, tambien ejecuta cuando el usuario obtiene una mejor marca de tiempo que quedara registrada en memoria persistente*/
         if  UserDefaults.standard.integer(forKey: "minutesRandom") == 0 && UserDefaults.standard.integer(forKey: "secondsRandom") == 0 || minute < UserDefaults.standard.integer(forKey: "minutesRandom") || minute == UserDefaults.standard.integer(forKey: "minutesRandom") && RandomGame.secondsGameOver < UserDefaults.standard.integer(forKey: "secondsRandom") {
             /*Ojo el siguiente bloque es el unico donde se va a ejecutar el alamacenamiento en memoria persistente**/
             UserDefaults.standard.set(minute, forKey:"minutesRandom")
             UserDefaults.standard.set(second, forKey:"secondsRandom")
             
             labelOne.text = "¡NUEVO RECORD!"
             labelTwo.text = "(NEW RECORD!)"
             labelThree.fontColor = UIColor.init(red: 0/255, green: 134/255, blue: 252/255, alpha: 1.0)
             //format casting and rendering of new best record
             let secondsText = (second < 10) ?
             "0\(second)" : "\(second)"
             let minutesText = "\(minute)"
             
             if minute >= 1 {
                 labelThree.text = "\(minutesText):\(secondsText)"
             }
             else{
                 labelThree.text = "\(secondsText)"
                 //timerBackground.size = labelTimer.frame.size Aqui se utiliza el label de forma transparente por eso no se utiliza esta propiedad
                 
             }

             
             //labelFour.text = labelTimer.text esto lo use para probar q en efecto estaba obteniendo el tiempo correcto
         }
         
         else if minute > UserDefaults.standard.integer(forKey: "minutesRandom") || minute == UserDefaults.standard.integer(forKey: "minutesRandom") && second > UserDefaults.standard.integer(forKey: "secondsRandom")||minute == UserDefaults.standard.integer(forKey: "minutesRandom") && second == UserDefaults.standard.integer(forKey: "secondsRandom"){
             //este bloque se va a encargar del rendering de la marca actual cuando no ocurre un nuevo record
             labelOne.text = "Tu Tiempo"
             labelTwo.text = "(Your Time)"
             labelThree.text = "Mejor Tiempo"
             labelFour.text = "(Best Time)"
             labelFive.fontColor = UIColor.init(red: 0/255, green: 134/255, blue: 252/255, alpha: 1.0)
             labelSix.fontColor = UIColor.init(red: 0/255, green: 134/255, blue: 252/255, alpha: 1.0)
             //labelFive.text = labelTimer.text
             let secondText = (second < 10) ?/*Ojo la variable aqui se llama secondText SIN "S", La razon para el cambio de nombre en la variable es pq ambas(secondText/secondsText) son constantes de modo que en el mismo bloque no podrian ejecutar como constantes(con el mismo nombre) y dado que ambas variables cumplen el mismo proposito no se queria cambiar demasiado el nombre. MAS ADELANTE SE VA A CREAR UNA FUNCION UNIVRSAL PARA LIDIAR SOLO CON EL CASTING Y EL RENDERING YA QUE ESTE CODIGO SE REPITE VARIAS VECES*/
             "0\(second)" : "\(second)"
             let minuteText = "\(minute)" //Ojo la variable aqui se llama minuteText SIN "S"
             
             if minute >= 1 {
                 labelFive.text = ":\(minuteText):\(secondText)"
             }
             else{
                 labelFive.text = ":\(secondText)"
                 //timerBackground.size = labelTimer.frame.size
                 
             }
             //este bloque se va a encargar de imprimir la mejor marca que en este caso seria la encontrada en memoria persistente
             let secondsText = (UserDefaults.standard.integer(forKey: "secondsRandom") < 10) ?
             "0\(UserDefaults.standard.integer(forKey: "secondsRandom"))" : "\(UserDefaults.standard.integer(forKey: "secondsRandom"))"
             let minutesText = "\(UserDefaults.standard.integer(forKey: "minutesRandom"))"
             
             if UserDefaults.standard.integer(forKey: "minutesRandom") >= 1 {
                 labelSix.text = ":\(minutesText):\(secondsText)"
             }
             else{
                 labelSix.text = ":\(secondsText)"
                 //timerBackground.size = labelTimer.frame.size
                 
             }
             
         }
        
     }
    
}
