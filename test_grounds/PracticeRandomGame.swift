//
//  PracticeRandomGame.swift
//  test_grounds
//
//  Created by javier pizarro on 6/7/22.
//  Copyright © 2022 javierpizarro. All rights reserved.
//

import Foundation
import SpriteKit
import UIKit
import AVFoundation

class PracticeRandomGame: SKScene{
    
    let goldBackgroundSKSpriteNode = TestClass().goldenBackground()
    let municipiosNameBackground = TestClass().labelMunicipiosNameBackground()//Background for most(shorter) municipio names. Used in more than one function
    let municipiosNameBackgroundTwo = TestClass().labelMunicipiosNameBackgroundTwo()//Background for longer municipio names. Used in more than one function
    let municipioNameLabel = TestClass().labelForMunicipioNames()//Label rendering municipio name to look up, Used in more than one function
    let skipButton = TestClass().skipBlueButton()//used in more than one function
    let exitRedButton = TestClass().redButton()//used in more than one function
    let labelScores = TestClass().labelForScores()//Scores label(in fluorocent text)
    let labelTimer = TestClass().labelForTimer()//used in more than one function
    let timerBackgroundTwo = TestClass().timerBackGroundTwo()/*Background for timer(At one time the timer used two different size backgrounds, but later i opted out of doing that for eficiency and kept
    the bigger background(timerBackgroundTwo) as timer's only background along its life cycle */
    var renderTime: TimeInterval = 0.0//marks the time being played to be compared with currentTime, only used on update(timer function)
    let changeTime: TimeInterval = 1//adds(update) to renderTime in order to keep renderTime running, only used on update(imer function)
    var seconds: Int = 0//seconds count, only used on update(imer function)
    var minutes: Int = 0//minutes count, only used on update(imer function)
    let skipButtonPenalty = 15//seconds added to timer when skip buttom is pressed
    let penalty = 3//seconds added to timer when wrong node is pressed
    var fail: Bool!//flow control var allow when true for penalty to be added at timer funtion. Used on more than one funtion

    var pressSKipButton:Bool = false//Flow control variables when true allows timer to add 15 penalty
    //var arrayOfMapSpriteNodes = [SKSpriteNode()]
    var twoLineText: String = ""//used on splitTextIntoFields, this is the text passed to splitTextIntoFields functions
    var useLine2:Bool = false//used on splitTextIntoFields functions and touch function.(intrinsic to function mechanism, dev should not be too concerned with it)
    let containerNode = TestClass().initSetcontainerNodeAndChildren()//Node container for map nodes and map frames. Used in more than one function
    //var touchedNode: SKPhysicsBody!
    
    var currentIndex: Int = 0 //refers to index currently diplayed on municipio name label declared at the top to be accesed by accesory functions
    
    /** Array includes Adjuntas although it' is written from the function that sets the label for municipios to look up, this is due  if adjuntas is skipped when the array reach the end to go back to index 0, then it gets Adjuntas.
     This array contain the text elements for the municipios to look up*/
    var municipios_names_array = ["Adjuntas", "Aguada", "Aguadilla", "Aguas Buenas", "Aibonito", "Arecibo", "Arroyo", "Añasco", "Barceloneta", "Barranquitas", "Bayamón", "Cabo Rojo", "Caguas", "Camuy", "Canóvanas", "Carolina", "Cataño", "Cayey", "Ceiba", "Ciales", "Cidra", "Coamo", "Comerío", "Corozal", "Culebra", "Dorado", "Fajardo", "Florida", "Guayama", "Guayanilla", "Guaynabo","Gurabo", "Guánica", "Hatillo", "Hormigueros", "Humacao", "Isabela", "Jayuya", "Juana Díaz", "Juncos", "Lajas", "Lares", "Las Marías", "Las Piedras", "Loíza", "Luquillo", "Manatí", "Maricao", "Maunabo", "Mayagüez", "Moca", "Morovis", "Naguabo", "Naranjito", "Orocovis", "Patillas", "Peñuelas", "Ponce", "Quebradillas", "Rincón", "Rio Grande", "Sabana Grande", "Salinas", "San Germán", "San Juan", "San Lorenzo", "San Sebastián", "Santa Isabel", "Toa Alta", "Toa Baja", "Trujillo Alto", "Utuado", "Vega Alta", "Vega Baja", "Vieques", "Villalba", "Yabucoa", "Yauco"]

    static var completedGame = false/**flow control variable for timer once its value is true allows for timer to stop, and transition to gameOverScene*/
    var scoreCount:Int = 0//variable represent the number of municipios identified rendered in the control bar to the right
    let totalScoreCount:String = "/78"
    var skipButtonPressed = false//flow control var allows to apply alpha animation to skipbuttom on Touches end
    
    static var secondsGameOver:Int = 0 //gets number of seconds to render tracked time(renders on gameOverScene), static variables must be declared at the top
    static var minutesGameOver:Int = 0 //gets number of minutes to render tracked time(renders on gameOverScene), static variables must be declared at the top
    
    var musicPlayer = AVAudioPlayer()//audio player
    let musicURL:URL? = Bundle.main.url(forResource:"predited", withExtension:"mp3")//reference to PR Himn
    let correctSound = SKAction.playSoundFileNamed("351566__bertrof__game-sound-correct-organic-violin", waitForCompletion: false)
    let incorrectSound = SKAction.playSoundFileNamed("351565__bertrof__game-sound-incorrect-organic-violin", waitForCompletion: false)
    
    var randomIndex: Int = 0
    /*var skipButton = SKSpriteNode()//la declare universalmente temporeramente
    var exitRedButton = SKSpriteNode()
    
    var containerNode = SKNode()//se usa en mas de una funcion
    var labelTimer = SKLabelNode()//se usa en mas de una funcion
    var labelScores = SKLabelNode()
    var timerBackground = SKSpriteNode()//se usa en mas de una funcion
    var municipiosNameBackground = SKSpriteNode()//se usa en mas de una funcion
    
    var renderTime: TimeInterval = 0.0//esta solo se usa en la funcion del reloj
    let changeTime: TimeInterval = 1//esta solo se usa en la funcion del reloj
    var seconds: Int = 0//esta solo se usa en la funcion del reloj
    var minutes: Int = 0//esta solo se usa en la funcion del reloj
    static var secondsGameOver:Int = 0
    static var minutesGameOver:Int = 0
    var renderTimeBiggerCounter: Int! = 0
    
    static var completedGame = false//se usa en mas de una funcion
    
    var twoLineText: String = ""//se usa solo en las dos funciones splitTextIntoFields puedo declararla en ambas funciones de manera local
    var useLine2:Bool = false//se usa en mas de una funcion

    //Ojo el array arranca leyendo el indice 0, pero el primer municipio al azar se lee de la funcion que crea el label(donde se presentan los municipios a buscar)
    //El array se puede declarar dentro de la funcion touchesBegan
    var municipios_names_array = ["Adjuntas", "Aguada", "Aguadilla", "Aguas Buenas", "Aibonito", "Arecibo", "Arroyo", "Añasco", "Barceloneta", "Barranquitas", "Bayamón", "Cabo Rojo", "Caguas", "Camuy", "Canóvanas", "Carolina", "Cataño", "Cayey", "Ceiba", "Ciales", "Cidra", "Coamo", "Comerío", "Corozal", "Culebra", "Dorado", "Fajardo", "Florida", "Guayama", "Guayanilla", "Guaynabo","Gurabo", "Guánica", "Hatillo", "Hormigueros", "Humacao", "Isabela", "Jayuya", "Juana Díaz", "Juncos", "Lajas", "Lares", "Las Marías", "Las Piedras", "Loíza", "Luquillo", "Manatí", "Maricao", "Maunabo", "Mayagüez", "Moca", "Morovis", "Naguabo", "Naranjito", "Orocovis", "Patillas", "Peñuelas", "Ponce", "Quebradillas", "Rincón", "Rio Grande", "Sabana Grande", "Salinas", "San Germán", "San Juan", "San Lorenzo", "San Sebastián", "Santa Isabel", "Toa Alta", "Toa Baja", "Trujillo Alto", "Utuado", "Vega Alta", "Vega Baja", "Vieques", "Villalba", "Yabucoa", "Yauco"]
    
    var municipioNameLabel = SKLabelNode()//se usa en mas de una funcion

    var touchedNode: SKPhysicsBody!//se puede declarar dentro de la funcion touchesBegan
    var fail: Bool!//se usa en mas de una funcion
    var currentIndex: Int = 0 //se puede declarar en touchesBegan
    var pressSKipButton:Bool = false
    var scoreCount:Int = 0
    let totalScoreCount:String = "/78"
    
    var secondsandMinutesRetrieved: Bool = false
    
    var skipButtonPressed = false
    var exitButtonPressed = false
    
    var goldBackgroundSKSpriteNode = SKSpriteNode()
    var randomIndex: Int = 0
    
    var arrayOfMapSpriteNodes = [SKSpriteNode()]
    
    var musicPlayer = AVAudioPlayer()
    var musicURL:URL?*/
    
    override func didMove(to view: SKView) {
        
        self.backgroundColor = UIColor.init(red: 0.5373, green: 0.8431, blue: 0.9294, alpha: 1.0)//blue background that resembles the ocean
        /**The following  objects are the parent for all rendering objects, class positioning attributers are applied in order for objects to render the same independent of the screen size, In the case of containerNode it's positioning is set  based on its parent
         timerBackgroundTwo. The reason for not giving containerNode class positioning was due when class attributes were applied to containerNode it would render different in devices with smaller screen size(maybe something im not aware about, or a glitch of some kind).*/
        containerNode.position = CGPoint(x:self.size.width/2 - 285, y:self.size.height/2 - 175) /*CGPoint(x:-275 , y:-75 /*15*/)*//**Sknode containing(children) map sprites, desecheo cover(node whose only job is to hid desecheo island, rectangular frames)*/
        timerBackgroundTwo.position = CGPoint(x:self.size.width / 2/*333.5*/, y:87)/**parent to labelTimer */
        goldBackgroundSKSpriteNode.size = CGSize(width:self.size.width + 6, height: 50)
        goldBackgroundSKSpriteNode.position = CGPoint(x:self.size.width / 2, y:self.size.height / 16.5/*25*/)
        
        getFirstRandomMunicipioNameToLookUp()//Function gets first random municipio name and overwrites text attributes from TestClass().labelForMunicipioNames()(base attributes)
        //randomIndex = Int.random(in:0...77)//gets random index for first municipio name to look up
        //municipioNameLabel.text = municipios_names_array[randomIndex]//first municipio name to look up
        //municipioNameLabel = labelForMunicipioNamesRandomGame(NameMunicipioLabel: municipioNameLabel)
        
        /**Following objects are related to goldBackground SKSPriteNode*/
        //Attention the following two statements were commented due municipioNamesBackground and municipioNameLabel are added at getFirstRandomMunicipioNameToLookUp()
        //addChildSKLabelNodeToParentSKSpriteNode(parent: municipiosNameBackground, children: municipioNameLabel)
        //addChildSKSpriteNodeToParentSKSpriteNode(parent: goldBackgroundSKSpriteNode, children: municipiosNameBackground)
        addChildSKLabelNodeToParentSKSpriteNode(parent: goldBackgroundSKSpriteNode, children: labelScores)
        addChildSKSpriteNodeToParentSKSpriteNode(parent: goldBackgroundSKSpriteNode, children: skipButton)
        addChildSKSpriteNodeToParentSKSpriteNode(parent: goldBackgroundSKSpriteNode, children: exitRedButton)
        addChildSKSpriteNodeToParentself(children: goldBackgroundSKSpriteNode)
        addChildSKNodeToParentself(children: containerNode)
        //addChildSKNodeToParentSKSpriteNode(parent: timerBackgroundTwo, children: containerNode)
        addChildSKLabelNodeToParentSKSpriteNode(parent: timerBackgroundTwo, children: labelTimer)
        addChildSKSpriteNodeToParentself(children: timerBackgroundTwo)
        //addChildSKNodeToParentself(children: containerNode)
        
        /**Play background music*/
        if StartMenu.backgroundMusicOn == true{
            //self.addChild(StartScene.backgroundMusic)
            initMusic()
        }
    }
    
    func getFirstRandomMunicipioNameToLookUp(){
        setNewMunicipioNameToLookUp()
        //randomIndex = Int.random(in:0...77)//gets random index for first municipio name to look up
        //municipioNameLabel.text = municipios_names_array[randomIndex]//first municipio name to look up
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
        
        
       if PracticeRandomGame.completedGame == false{//Control variable to keep the timer running, once condition is true the timer is stopped
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
                    //UserDefaults.standard.removeObject(forKey: "secondsRandom")
                    //UserDefaults.standard.removeObject(forKey: "minutesRandom")
                }
                
                renderTime = currentTime + changeTime//updates renderTime value, when this happens renderTime value is bigger than currentTime
            }
            
        }
        /** This block  will execute when completedGame equals true(meaning all nodes were correctly identified), the function below will get gameOverScene. The reason to place here the game transition to gameOverScene is due Touch function needs "space" in order to perform without much lagging as scene transitioning and
         Touch function both require a lot of resouces that can compromise the flow of the game(so basically thats why the scene transition is not placed on Touch function)*/
        
        if PracticeRandomGame.completedGame == true{
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
        //let transition = SKTransition.fade(withDuration: 1.0)//withDuration: 1.5)
    
        self.view?.presentScene(gameOverScene/*, transition: transition*/)/*si anado una transicion con 1.0 segundos o hasta 0.5 permite que el ultimo mnicipio se cambie de color antes de cambiar la vista pero ocurre cierto laggin que de cierta forma interfiere con el ritmo que llevaba el juego y afecta un poco la experiencia pero puedo volver a tratar mas adelante ajustando esto hasta dar con la experiencia que busco*/
    }
    
    func getSecondsAndMinutes(){
        PracticeRandomGame.secondsGameOver = seconds
        PracticeRandomGame.minutesGameOver = minutes
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {//Touch function
         
        let touch = touches.first!//store touch
        let touchLocation = touch.location(in: self)//Defines the space where touch is taking effect, in this case StartScene
        let touchedNode = self.physicsWorld.body(at:touchLocation)//Defines that touch will take effect when it gets in contact with an SKphysics body
        
        
        if (touchedNode != nil){//This line controls the flow by evaluating if a SKphysics body was touch or not, touchNode will return nil when the screen is touched but no SKphysics body was touched
            if (municipioNameLabel.text == touchedNode?.node?.name){//Evaluates touch by matching the label text attribute with node's name attributes
                let spritenode = touchedNode?.node as! SKSpriteNode//pass touchedNode node attribute to spritenode, to apply changes
                paintNode(spriteNode: spritenode)//color SKSpriteNode green
                playCorrectSound()
                
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
    
    func paintNode(spriteNode:SKSpriteNode){
        spriteNode.color = UIColor.init(red: 0.5686, green: 1, blue: 0.8745, alpha: 1.0)
        spriteNode.colorBlendFactor = 1.0
        spriteNode.physicsBody = nil
    }
    
    func playCorrectSound(){
        if StartMenu.gamePlaySoundOn == true{
            run(/*StartScene.*/correctSound)//correctSound
        }
    }
    
    func removeIdentifiedElementEvaluateCompleteGameAndSkipButtonRemoval(){
        let countOfIndexes = municipios_names_array.count - 1//Gets the number of indexes in array
        
        //If condition is true means that two elemens are left in array, it removes skipButton due second to last(penultimo elemento) element is about to be removed next
        if countOfIndexes == 1  {
            print("skip button out")
            skipButton.removeFromParent()
        }

        //removes element while more than 1 element are left in array
        if countOfIndexes > 0 {
            municipios_names_array.remove(at:randomIndex)//removes element identified that is at index(remember taht this variable updates in the following block))
            
        }
            
        //Este else statement va a ejecutar solo cuando currentIndex y countIndex == 0
        else{
            self.removeAllActions()//It catches the last correctSound in order for transition to gameOverScene to flow smoother with less laggin
            getSecondsAndMinutes()
            PracticeRandomGame.completedGame = true//Se actualiza la variable completedGame para detener el reloj
            

        }
    }
    
    func setNewMunicipioNameToLookUp(){
        let countOfIndexes = municipios_names_array.count - 1
        randomIndex = Int.random(in:0...countOfIndexes)
        municipioNameLabel.text = municipios_names_array[randomIndex]//Se desplega el nuevo municipio a ser localizado por el jugador
        if municipioNameLabel.text == "Aguas Buenas" || municipioNameLabel.text == "Barceloneta" || municipioNameLabel.text == "Barranquitas" || municipioNameLabel.text == "Cabo Rojo"
        || municipioNameLabel.text == "Canóvanas" || municipioNameLabel.text == "Guayanilla" || municipioNameLabel.text == "Guaynabo" || municipioNameLabel.text == "Hormigueros"
        || municipioNameLabel.text == "Juana Díaz" || municipioNameLabel.text == "Las Marías" || municipioNameLabel.text == "Las Piedras" || municipioNameLabel.text == "Mayagüez"
        || municipioNameLabel.text == "Quebradillas" || municipioNameLabel.text == "Rio Grande" || municipioNameLabel.text == "Sabana Grande" || municipioNameLabel.text == "San Germán"
        || municipioNameLabel.text == "San Lorenzo" || municipioNameLabel.text == "San Sebastián" || municipioNameLabel.text == "Santa Isabel" || municipioNameLabel.text == "Trujillo Alto"{
            if municipiosNameBackgroundTwo.parent == nil{
            municipioNameLabel.removeFromParent()
            municipiosNameBackground.removeFromParent()
            addChildSKLabelNodeToParentSKSpriteNode(parent: municipiosNameBackgroundTwo, children: municipioNameLabel)
            addChildSKSpriteNodeToParentSKSpriteNode(parent: goldBackgroundSKSpriteNode, children: municipiosNameBackgroundTwo)
            }
            //if else municipiosNameBackgroundTwo.parent
        }
        else {
            if municipiosNameBackground.parent == nil{
            municipioNameLabel.removeFromParent()
            municipiosNameBackgroundTwo.removeFromParent()
            addChildSKLabelNodeToParentSKSpriteNode(parent: municipiosNameBackground, children: municipioNameLabel)
            addChildSKSpriteNodeToParentSKSpriteNode(parent: goldBackgroundSKSpriteNode, children: municipiosNameBackground)
            }
        }
    }
    
    //function updates the label rendering the number of municipios identified already at the bottom right of screen
       func addToScoreCountWriteToLabel(){
           scoreCount += 1
           labelScores.text = "\(scoreCount)" + totalScoreCount//totalScoreCount es un constant string solo sirve al rendering del score
       }
       
       func addOneTocurrentIndexSetNameToLookUp(){
           skipButton.alpha = 0.9//efecto para skipButton al presionarlo, esta linea es solo una prueba y debo al menos sujetarlo a una condicion en el futuro como un if
           skipButtonPressed = true
           pressSKipButton = true
           setNewMunicipioNameToLookUp()
           print("Skip Button touched")
       }
       
       func goToStartMenu(){
           let startMenuScene = StartMenu(size: self.size)//definitio
           //let transition = SKTransition.doorsOpenVertical(withDuration: 1.5)
           self.view?.presentScene(startMenuScene)/*present scene and execut transitions*/
       }
    
       func playIncorrectSound(){
           if StartMenu.gamePlaySoundOn == true{
               run(/*StartScene.*/incorrectSound)
           }
       }
       
    //function detects when the touch on screen have ended in order to complete alpha effect that started at addOneTocurrentIndexSetNameToLookUp()
      override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
          //Efecto para el skipButton cuando se suelta el boton
          if skipButtonPressed == true{
              skipButton.alpha = 1.0//Ojo esto se veria mejor dentro de un if sin embargo  si utilizo una condicion como if skipButton.alpha == 1.0 causa un glitch, pero puedo hacer una condicion con una variable boolean
              skipButtonPressed = false
          }
          //Exit button does not have alpha effect as it goes out of view when pressed
      }
    
    func labelForMunicipioNames(NameMunicipioLabel: SKLabelNode) -> SKLabelNode {//child of labelMunicipiosNameBackground()
         NameMunicipioLabel.position = CGPoint(x:0.5 /*self.size.width/2*/, y:-6.5 /*self.size.height/2 * 0.14*/)
         NameMunicipioLabel.fontName = "Helvetica"
         NameMunicipioLabel.fontSize = 18
         NameMunicipioLabel.fontColor = UIColor.init(red: 0.898, green: 0.9765, blue: 0, alpha: 1.0)
         randomIndex = Int.random(in:0...77)
         NameMunicipioLabel.text = municipios_names_array[randomIndex]
         municipiosNameBackground.size = NameMunicipioLabel.frame.size
         //NameMunicipioLabel.zPosition = 2
         return NameMunicipioLabel
     }
    
    func labelMunicipiosNameBackground() -> SKSpriteNode{
        let background = SKSpriteNode()
        background.color = UIColor.init(red: 0.8078, green: 0.6039, blue: 0, alpha: 1.0)//#ce9a00
        background.size = CGSize(width:CGFloat(75), height:CGFloat(17))
        background.position = CGPoint(x:0.5/*goldenBackground().size.width/200*/, y:-0.5/*goldenBackground().size.height/2 * 0.18*/)
        background.size = municipioNameLabel.frame.size
        //background.addChild(labelForMunicipioNames(NameMunicipioLabel: municipioNameLabel))
        //background.zPosition = 5
        return background
    }
    
    func splitTextIntoFields(theText:SKLabelNode)->String{
        useLine2 = false//Esta linea resetea la variable que es necesario para no crear redundancia cuando se pasa el texto a label(ej:aguas aguas buenas)
        twoLineText = theText.text!//texto que necesitamos dividir en dos lineas
        //var i: Int = 0
        var line1:String = ""//declaracion de las variables que se van a devolver
        var line2:String = ""
            
            
        for letter in twoLineText{//Cada letra contenida en el String es desglosada por el for loop
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

    func splitTextIntoFieldsTwo(theText:SKLabelNode)->String{
        useLine2 = false
        twoLineText = theText.text!
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
    
    
    
}
