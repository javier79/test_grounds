//
//  StartScene.swift
//  test_grounds
//
//  Created by javier pizarro on 1/8/21.
//  Copyright © 2021 javierpizarro. All rights reserved.
//

import SpriteKit
//import UIKit
import AVFoundation



class StartScene: SKScene{
    
    var skipButton = SKSpriteNode()//la declare universalmente temporeramente
    var exitRedButton = SKSpriteNode()
    
    var containerNode = SKNode()//se usa en mas de una funcion
    var labelTimer = SKLabelNode()//se usa en mas de una funcion
    var labelScores = SKLabelNode()
    var timerBackground = SKSpriteNode()//se usa en mas de una funcion
    let municipiosNameBackground = TestClass().labelMunicipiosNameBackground()//se usa en mas de una funcion
    let municipiosNameBackgroundTwo = TestClass().labelMunicipiosNameBackgroundTwo()
    
    var renderTime: TimeInterval = 0.0//esta solo se usa en la funcion del reloj
    let changeTime: TimeInterval = 1//esta solo se usa en la funcion del reloj
    var seconds: Int = 0//esta solo se usa en la funcion del reloj
    var minutes: Int = 0//esta solo se usa en la funcion del reloj
    static var secondsGameOver:Int = 0//static variables must be declared at the top
    static var minutesGameOver:Int = 0//static variables must be declared at the top
    //var renderTimeBiggerCounter: Int! = 0//For dev use on testing update function
    let skipButtonPenalty = 15
    let penalty = 3
    

    static var completedGame = false//se usa en mas de una funcion
    
    var useLine2:Bool = false//se usa en mas de una funcion
    var twoLineText: String = ""

    /*Ojo el array arranca leyendo el indice 0, pero el primer municipio Adjuntas se lee de la funcion que crea el label(donde se presentan los municipios a buscar) y se incluye en el array pq si el array llega al final del array al reiniciar el array entonces ahi si lee
    elelemento Adjuntas*/
    var municipios_names_array = ["Adjuntas", "Aguada", "Aguadilla", "Aguas Buenas", "Aibonito", "Arecibo", "Arroyo", "Añasco", "Barceloneta", "Barranquitas", "Bayamón", "Cabo Rojo", "Caguas", "Camuy", "Canóvanas", "Carolina", "Cataño", "Cayey", "Ceiba", "Ciales", "Cidra", "Coamo", "Comerío", "Corozal", "Culebra", "Dorado", "Fajardo", "Florida", "Guayama", "Guayanilla", "Guaynabo","Gurabo", "Guánica", "Hatillo", "Hormigueros", "Humacao", "Isabela", "Jayuya", "Juana Díaz", "Juncos", "Lajas", "Lares", "Las Marías", "Las Piedras", "Loíza", "Luquillo", "Manatí", "Maricao", "Maunabo", "Mayagüez", "Moca", "Morovis", "Naguabo", "Naranjito", "Orocovis", "Patillas", "Peñuelas", "Ponce", "Quebradillas", "Rincón", "Rio Grande", "Sabana Grande", "Salinas", "San Germán", "San Juan", "San Lorenzo", "San Sebastián", "Santa Isabel", "Toa Alta", "Toa Baja", "Trujillo Alto", "Utuado", "Vega Alta", "Vega Baja", "Vieques", "Villalba", "Yabucoa", "Yauco"]
    
    var municipioNameLabel = SKLabelNode()//se usa en mas de una funcion

    var touchedNode: SKPhysicsBody!//se puede declarar dentro de la funcion touchesBegan
    var fail: Bool!//se usa en mas de una funcion
    var currentIndex: Int = 0 //se puede declarar en touchesBegan
    //var locationNameLabel = SKLabelNode()
    var pressSKipButton:Bool = false
    var scoreCount:Int = 0
    let totalScoreCount:String = "/78"
    
    static var correctSound = SKAction.playSoundFileNamed("351566__bertrof__game-sound-correct-organic-violin", waitForCompletion: false)
    static var incorrectSound = SKAction.playSoundFileNamed("351565__bertrof__game-sound-incorrect-organic-violin", waitForCompletion: false)
    //static var backgroundMusic = SKAudioNode(fileNamed: "predited.mp3")
    var musicPlayer = AVAudioPlayer()
    var musicURL:URL? = Bundle.main.url(forResource:"predited", withExtension:"mp3")
    
    var skipButtonPressed = false
    var exitButtonPressed = false
    
    var goldBackgroundSKSpriteNode = SKSpriteNode()
    
    
    
    override func didMove(to view: SKView){
    
        
        self.backgroundColor = UIColor.init(red: 0.5373, green: 0.8431, blue: 0.9294, alpha: 1.0)
        goldBackgroundSKSpriteNode = goldenBackground()
        
        containerNode = nodesContainer()
        initAndaddChildrenTocontainerNode()
        
        //musicURL = Bundle.main.url(forResource:"predited", withExtension:"mp3")
        
        labelScores = labelForScores(ScoresLabel:labelScores)
        labelTimer = labelForTimer(TimerLabel: labelTimer)
        timerBackground = timerLabelBackground()
        
        municipioNameLabel = labelForMunicipioNames(NameMunicipioLabel: municipioNameLabel)
        //municipiosNameBackground = labelMunicipiosNameBackground()
        
        
        
        skipButton = skipBlueButton()
        exitRedButton = redButton()
    
        //Este grupo de objetos estan relacionados por goldBackgroundSKSpriteNode, dado que esta barra de controles se elimina cuando se acierta el ultimo municipios junto con los botones, labels y backgrounds adheridos a la barra de controles)
        addChildSKLabelNodeToParentSKSpriteNode(parent: goldBackgroundSKSpriteNode, children: labelScores)
        //goldBackgroundSKSpriteNode.addChild(labelScores)
        addChildSKLabelNodeToParentSKSpriteNode(parent: municipiosNameBackground, children: municipioNameLabel)
        //municipiosNameBackground.addChild(municipioNameLabel)//ojo puse el background como padre del label para facilitar el posicionamiento de ambos con respecto a goldBackgroundSKSpriteNode
        addChildSKSpriteNodeToParentSKSpriteNode(parent: goldBackgroundSKSpriteNode, children: municipiosNameBackground)
        //goldBackgroundSKSpriteNode.addChild(municipiosNameBackground)
        addChildSKSpriteNodeToParentSKSpriteNode(parent: goldBackgroundSKSpriteNode, children: skipButton)
        //goldBackgroundSKSpriteNode.addChild(skipButton)
        addChildSKSpriteNodeToParentSKSpriteNode(parent: goldBackgroundSKSpriteNode, children: exitRedButton)
        //goldBackgroundSKSpriteNode.addChild(exitRedButton)
        
        addChildSKSpriteNodeToParentself(children: goldBackgroundSKSpriteNode)
        //self.addChild(goldBackgroundSKSpriteNode)
        addChildSKSpriteNodeToParentself(children: timerBackground)
        //self.addChild(timerBackground)
        addChildSKLabelNodeToParentself(children: labelTimer)
        //self.addChild(labelTimer)
        addChildSKNodeToParentself(children: containerNode)
        //self.addChild(containerNode)
        
        if StartMenu.backgroundMusicOn == true{
            //self.addChild(StartScene.backgroundMusic)
            initMusic()
        }
        //sleep(1)//Este sleep statement es para retrasar un poco el rendering y que este todo desplegado cuando el reloj comienza a conta
    }
    
    //Barra de controles
    func goldenBackground() -> SKSpriteNode {
        let goldenBackground = SKSpriteNode(imageNamed: "old paper texture")
        goldenBackground.size = CGSize(width: 680, height:50)
        goldenBackground.position = CGPoint(x:335, y:25)
        //goldenBackground.zPosition = 1
        return goldenBackground
    }
    
    //Contiene todos los SpriteNodes que tienen que ver con el mapa incluyendo covers(como el de desecheo)
    func nodesContainer() -> SKNode{
        let nodes_Container = SKNode()
        //nodes_Container.color = UIColor.white
        //nodes_Container.size = CGSize(width: self.size.width * 0.90, height:self.size.height * 0.90)
        //nodes_Container.anchorPoint = CGPoint.zero
        nodes_Container.position = CGPoint(x: 50, y: 15)
        return  nodes_Container
    }
    
    func initAndaddChildrenTocontainerNode(){
        let coverDesecheoIslandSKSpriteNode: SKSpriteNode = TestClass().desecheoIslandCover()
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: coverDesecheoIslandSKSpriteNode)
        let rectangularFrameSKSPriteNode: SKSpriteNode = TestClass().rectangleBezierPathToSKSpriteNode(bpRectangle: TestClass().createRectangle())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: rectangularFrameSKSPriteNode)
        let rectangularViequesFrameSKSPriteNode: SKSpriteNode = TestClass().rectangleViequesBezierPathToSKSpriteNode(bpViequesRectangle: TestClass().createViequesRectangle())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: rectangularViequesFrameSKSPriteNode)
        let rectangularCulebraFrameSKSPriteNode: SKSpriteNode = TestClass().rectangleCulebraBezierPathToSKSpriteNode(bpCulebraRectangle: TestClass().createCulebraRectangle())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: rectangularCulebraFrameSKSPriteNode)
        let caboRojoSKSpriteNode: SKSpriteNode = TestClass().caboRojoBezierPathToSKSpriteNode(bpCaboRojo: TestClass().caboRojoDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: caboRojoSKSpriteNode)
        let hormiguerosSKSpriteNode:SKSpriteNode = TestClass().hormiguerosBezierPathToSKSpriteNode(bphormigueros: TestClass().hormiguerosDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: hormiguerosSKSpriteNode)
        let mayaguezSKSpriteNode:SKSpriteNode = TestClass().mayaguezBezierPathToSKSpriteNode(bpMayaguez: TestClass().mayaguezDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: mayaguezSKSpriteNode)
        let anascoSKSpriteNode: SKSpriteNode = TestClass().anascoBezierPathToSKSpriteNode(bpAnasco: TestClass().anascoDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: anascoSKSpriteNode)
        let rinconSKSpriteNode: SKSpriteNode = TestClass().rinconBezierPathToSKSpriteNode(bpRincon: TestClass().rinconDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: rinconSKSpriteNode)
        let aguadaSKSpriteNode: SKSpriteNode = TestClass().aguadaBezierPathToSKSpriteNode(bpAguada: TestClass().aguadaDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: aguadaSKSpriteNode)
        let aguadillaSKSpriteNode: SKSpriteNode = TestClass().aguadillaBezierPathToSKSpriteNode(bpAguadilla: TestClass().aguadillaDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: aguadillaSKSpriteNode)
        let isabelaSKSpriteNode: SKSpriteNode = TestClass().isabelaBezierPathToSKSpriteNode(bpIsabela: TestClass().isabelaDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: isabelaSKSpriteNode)
        let mocaSKSpriteNode: SKSpriteNode = TestClass().mocaBezierPathToSKSpriteNode(bpMoca: TestClass().mocaDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: mocaSKSpriteNode)
        let lasMariasSKSpriteNode: SKSpriteNode = TestClass().lasMariasBezierPathToSKSpriteNode(bpLasMarias: TestClass().lasMariasDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: lasMariasSKSpriteNode)
        let maricaoSKSpriteNode: SKSpriteNode = TestClass().maricaoBezierPathToSKSpriteNode(bpMaricao:TestClass().maricaoDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: maricaoSKSpriteNode)
        let sanGermanSKSpriteNode:SKSpriteNode = TestClass().sanGermanBezierPathToSKSpriteNode(bpSanGerman: TestClass().sanGermanDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: sanGermanSKSpriteNode)
        let yaucoSKSpriteNode: SKSpriteNode = TestClass().yaucoBezierPathToSKSpriteNode(bpYauco:TestClass().yaucoDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: yaucoSKSpriteNode)
        let lajasSKSpriteNode: SKSpriteNode = TestClass().lajasBezierPathToSKSpriteNode(bpLajas:TestClass().lajasDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: lajasSKSpriteNode)
        let guanicaSKSpriteNode: SKSpriteNode = TestClass().guanicaBezierPathToSKSpriteNode(bpGuanica:TestClass().guanicaDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: guanicaSKSpriteNode)
        let guayanillaSKSpriteNode:SKSpriteNode = TestClass().guayanillaBezierPathToSKSpriteNode(bpGuayanilla:TestClass().guayanillaDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: guayanillaSKSpriteNode)
        let sanSebastianSKSpriteNode: SKSpriteNode = TestClass().sanSebastianBezierPathToSKSpriteNode(bpSanSebastian: TestClass().sanSebastianDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: sanSebastianSKSpriteNode)
        let sabanaGrandeSKSpriteNode: SKSpriteNode = TestClass().sabanaGrandeBezierPathToSKSpriteNode(bpSabanaGrande: TestClass().sabanaGrandeDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: sabanaGrandeSKSpriteNode)
        let laresSKSpriteNode:SKSpriteNode = TestClass().laresBezierPathToSKSpriteNode(bpLares:TestClass().laresDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: laresSKSpriteNode)
        let penuelasSKSpriteNode:SKSpriteNode = TestClass().penuelasBezierPathToSKSpriteNode(bpPenuelas:TestClass().penuelasDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: penuelasSKSpriteNode)
        let ponceSKSpriteNode:SKSpriteNode = TestClass().ponceBezierPathToSKSpriteNode(bpPonce: TestClass().ponceDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: ponceSKSpriteNode)
        let utuadoSKSpriteNode:SKSpriteNode = TestClass().utuadoBezierPathToSKSpriteNode(bpUtuado: TestClass().utuadoDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: utuadoSKSpriteNode)
        let jayuyaSKSpriteNode:SKSpriteNode = TestClass().jayuyaBezierPathToSKSpriteNode(bpJayuya: TestClass().jayuyaDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: jayuyaSKSpriteNode)
        let juanaDiazSKSpriteNode:SKSpriteNode = TestClass().juanaDiazBezierPathToSKSpriteNode(bpJuanaDiaz:TestClass().juanaDiazDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: juanaDiazSKSpriteNode)
        let quebradillasSKSpriteNode:SKSpriteNode = TestClass().quebradillasBezierPathToSKSpriteNode(bpQuebradillas:TestClass().quebradillasDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: quebradillasSKSpriteNode)
        let camuySKSpriteNode:SKSpriteNode = TestClass().camuyBezierPathToSKSpriteNode(bpCamuy:TestClass().camuyDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: camuySKSpriteNode)
        let hatilloSKSpriteNode:SKSpriteNode = TestClass().hatilloBezierPathToSKSpriteNode(bpHatillo:TestClass().hatilloDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: hatilloSKSpriteNode)
        let areciboSKSpriteNode:SKSpriteNode = TestClass().areciboBezierPathToSKSpriteNode(bpArecibo:TestClass().areciboDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: areciboSKSpriteNode)
        let adjuntasSKSpriteNode:SKSpriteNode = TestClass().adjuntasBezierPathToSKSpriteNode(bpAdjuntas: TestClass().adjuntasDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: adjuntasSKSpriteNode)
        let barcelonetaSKSpriteNode:SKSpriteNode = TestClass().barcelonetaBezierPathToSKSpriteNode(bpBarceloneta:TestClass().barcelonetaDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: barcelonetaSKSpriteNode)
        let manatiSKSpriteNode:SKSpriteNode = TestClass().manatiBezierPathToSKSpriteNode(bpManati:TestClass().manatiDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: manatiSKSpriteNode)
        let vegaBajaSKSpriteNode:SKSpriteNode = TestClass().vegaBajaBezierPathToSKSpriteNode(bpVegaBaja:TestClass().vegaBajaDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: vegaBajaSKSpriteNode)
        let floridaSKSpriteNode:SKSpriteNode = TestClass().floridaBezierPathToSKSpriteNode(bpFlorida:TestClass().floridaDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: floridaSKSpriteNode)
        let villalbaSKSpriteNode:SKSpriteNode = TestClass().villalbaBezierPathToSKSpriteNode(bpVillalba: TestClass().villalbaDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: villalbaSKSpriteNode)
        let cialesSKSpriteNode:SKSpriteNode = TestClass().cialesBezierPathToSKSpriteNode(bpCiales: TestClass().cialesDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: cialesSKSpriteNode)
        let orocovisSKSpriteNode:SKSpriteNode = TestClass().orocovisBezierPathToSKSpriteNode(bpOrocovis: TestClass().orocovisDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: orocovisSKSpriteNode)
        let morovisSKSpriteNode:SKSpriteNode = TestClass().morovisBezierPathToSKSpriteNode(bpMorovis:TestClass().morovisDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: morovisSKSpriteNode)
        let corozalSKSpriteNode:SKSpriteNode = TestClass().corozalBezierPathToSKSpriteNode(bpCorozal: TestClass().corozalDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: corozalSKSpriteNode)
        let barranquitasSKSpriteNode:SKSpriteNode = TestClass().barranquitasBezierPathToSKSpriteNode(bpBarranquitas: TestClass().barranquitasDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: barranquitasSKSpriteNode)
        let comerioSKSpriteNode:SKSpriteNode = TestClass().comerioBezierPathToSKSpriteNode(bpComerio: TestClass().comerioDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: comerioSKSpriteNode)
        let coamoSKSpriteNode:SKSpriteNode = TestClass().coamoBezierPathToSKSpriteNode(bpCoamo: TestClass().coamoDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: coamoSKSpriteNode)
        let naranjitoSKSpriteNode:SKSpriteNode = TestClass().naranjitoBezierPathToSKSpriteNode(bpNaranjito: TestClass().naranjitoDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: naranjitoSKSpriteNode)
        let aibonitoSKSpriteNode:SKSpriteNode = TestClass().aibonitoBezierPathToSKSpriteNode(bpAibonito: TestClass().aibonitoDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: aibonitoSKSpriteNode)
        let salinasSKSpriteNode:SKSpriteNode = TestClass().salinasBezierPathToSKSpriteNode(bpSalinas: TestClass().salinasDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: salinasSKSpriteNode)
        let cayeySKSpriteNode:SKSpriteNode = TestClass().cayeyBezierPathToSKSpriteNode(bpCayey: TestClass().cayeyDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: cayeySKSpriteNode)
        let cidraSKSpriteNode:SKSpriteNode = TestClass().cidraBezierPathToSKSpriteNode(bpCidra: TestClass().cidraDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: cidraSKSpriteNode)
        let santaIsabelSKSpriteNode:SKSpriteNode = TestClass().santaIsabelBezierPathToSKSpriteNode(bpSantaIsabel: TestClass().santaIsabelDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: santaIsabelSKSpriteNode)
        let vegaAltaSKSpriteNode:SKSpriteNode = TestClass().vegaAltaBezierPathToSKSpriteNode(bpVegaAlta: TestClass().vegaAltaDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: vegaAltaSKSpriteNode)
        let doradoSKSpriteNode:SKSpriteNode = TestClass().doradoBezierPathToSKSpriteNode(bpDorado: TestClass().doradoDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: doradoSKSpriteNode)
        let toaAltaSKSpriteNode:SKSpriteNode = TestClass().toaAltaBezierPathToSKSpriteNode(bpToaAlta: TestClass().toaAltaDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: toaAltaSKSpriteNode)
        let toaBajaSKSpriteNode:SKSpriteNode = TestClass().toaBajaBezierPathToSKSpriteNode(bpToaBaja: TestClass().toaBajaDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: toaBajaSKSpriteNode)
        let bayamonSKSpriteNode:SKSpriteNode = TestClass().bayamonBezierPathToSKSpriteNode(bpBayamon: TestClass().bayamonDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: bayamonSKSpriteNode)
        let catanoSKSpriteNode:SKSpriteNode = TestClass().catanoBezierPathToSKSpriteNode(bpCatano:TestClass().catanoDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: catanoSKSpriteNode)
        let guaynaboSKSpriteNode:SKSpriteNode = TestClass().guaynaboBezierPathToSKSpriteNode(bpGuaynabo:TestClass().guaynaboDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: guaynaboSKSpriteNode)
        let sanJuanSKSpriteNode:SKSpriteNode = TestClass().sanJuanBezierPathToSKSpriteNode(bpSanJuan: TestClass().sanJuanDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: sanJuanSKSpriteNode)
        let caguasSKSpriteNode:SKSpriteNode = TestClass().caguasBezierPathToSKSpriteNode(bpCaguas: TestClass().caguasDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: caguasSKSpriteNode)
        let carolinaSKSpriteNode:SKSpriteNode = TestClass().carolinaBezierPathToSKSpriteNode(bpCarolina: TestClass().carolinaDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: carolinaSKSpriteNode)
        let aguasBuenasSKSpriteNode:SKSpriteNode = TestClass().aguasBuenasBezierPathToSKSpriteNode(bpAguasBuenas: TestClass().aguasBuenasDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: aguasBuenasSKSpriteNode)
        let trujilloAltoSKSpriteNode:SKSpriteNode = TestClass().trujilloAltoBezierPathToSKSpriteNode(bpTrujilloAlto: TestClass().trujilloAltoDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: trujilloAltoSKSpriteNode)
        let loizaSKSpriteNode:SKSpriteNode = TestClass().loizaBezierPathToSKSpriteNode(bpLoiza: TestClass().loizaDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: loizaSKSpriteNode)
        /*let loizaTwoSKSpriteNode:SKSpriteNode = TestClass().loizaTwoBezierPathToSKSpriteNode(bpLoizaTwo: loizaTwobp)
        containerNode.addChild(loizaTwoSKSpriteNode)*/
        let canovanasSKSpriteNode:SKSpriteNode = TestClass().canovanasBezierPathToSKSpriteNode(bpCanovanas: TestClass().canovanasDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: canovanasSKSpriteNode)
        let rioGrandeSKSpriteNode:SKSpriteNode = TestClass().rioGrandeBezierPathToSKSpriteNode(bpRioGrande: TestClass().rioGrandeDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: rioGrandeSKSpriteNode)
        let luquilloSKSpriteNode:SKSpriteNode = TestClass().luquilloBezierPathToSKSpriteNode(bpLuquillo: TestClass().luquilloDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: luquilloSKSpriteNode)
        let fajardoSKSpriteNode:SKSpriteNode = TestClass().fajardoBezierPathToSKSpriteNode(bpFajardo: TestClass().fajardoDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: fajardoSKSpriteNode)
        let ceibaSKSpriteNode:SKSpriteNode = TestClass().ceibaBezierPathToSKSpriteNode(bpCeiba: TestClass().ceibaDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: ceibaSKSpriteNode)
        let guraboSKSpriteNode:SKSpriteNode = TestClass().guraboBezierPathToSKSpriteNode(bpGurabo: TestClass().guraboDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: guraboSKSpriteNode)
        let juncosSKSpriteNode:SKSpriteNode = TestClass().juncosBezierPathToSKSpriteNode(bpJuncos:TestClass().juncosDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: juncosSKSpriteNode)
        let sanLorenzoSKSpriteNode:SKSpriteNode = TestClass().sanLorenzoBezierPathToSKSpriteNode(bpSanLorenzo: TestClass().sanLorenzoDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: sanLorenzoSKSpriteNode)
        let guayamaSKSpriteNode:SKSpriteNode = TestClass().guayamaBezierPathToSKSpriteNode(bpGuayama: TestClass().guayamaDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: guayamaSKSpriteNode)
        let arroyoSKSpriteNode:SKSpriteNode = TestClass().arroyoBezierPathToSKSpriteNode(bpArroyo: TestClass().arroyoDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: arroyoSKSpriteNode)
        let patillasSKSpriteNode:SKSpriteNode = TestClass().patillasBezierPathToSKSpriteNode(bpPatillas: TestClass().patillasDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: patillasSKSpriteNode)
        let maunaboSKSpriteNode:SKSpriteNode = TestClass().maunaboBezierPathToSKSpriteNode(bpMaunabo: TestClass().maunaboDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: maunaboSKSpriteNode)
        let yabucoaSKSpriteNode:SKSpriteNode = TestClass().yabucoaBezierPathToSKSpriteNode(bpYabucoa:TestClass().yabucoaDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: yabucoaSKSpriteNode)
        let lasPiedrasSKSpriteNode:SKSpriteNode = TestClass().lasPiedrasBezierPathToSKSpriteNode(bpLasPiedras: TestClass().lasPiedrasDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: lasPiedrasSKSpriteNode)
        let humacaoSKSpriteNode:SKSpriteNode = TestClass().humacaoBezierPathToSKSpriteNode(bpHumacao: TestClass().humacaoDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: humacaoSKSpriteNode)
        let naguaboSKSpriteNode:SKSpriteNode = TestClass().naguaboBezierPathToSKSpriteNode(bpNaguabo: TestClass().naguaboDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: naguaboSKSpriteNode)
        let viequesSKSpriteNode:SKSpriteNode = TestClass().viequesBezierPathToSKSpriteNode(bpVieques: TestClass().viequesDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: viequesSKSpriteNode)
        let culebraSKSpriteNode:SKSpriteNode = TestClass().culebraBezierPathToSKSpriteNode(bpCulebra: TestClass().culebraDrawBezierPath())
        addChildSKSpriteNodeToParentSKNode(parent: containerNode, children: culebraSKSpriteNode)
        
    }
    
    func labelForScores(ScoresLabel: SKLabelNode) -> SKLabelNode {
        //let label:SKLabelNode = SKLabelNode()
        ScoresLabel.position = CGPoint(x:300, y:-0.5)
        ScoresLabel.fontName = "Arial"
        ScoresLabel.fontSize = 11
        ScoresLabel.text = "0/78"
        ScoresLabel.fontColor = UIColor.init(red: 0.1333, green: 0.8392, blue: 0.1333, alpha: 1.0)
        return ScoresLabel
    }
    
    func labelForTimer(TimerLabel: SKLabelNode) -> SKLabelNode {
        //let label:SKLabelNode = SKLabelNode()
        TimerLabel.position = CGPoint(x: 333.5, y:82.5)
        TimerLabel.zPosition = 2
        TimerLabel.fontName = "Arial"
        TimerLabel.fontSize = 18
        TimerLabel.fontColor = SKColor.red
        return TimerLabel
    }
    
    func timerLabelBackground() -> SKSpriteNode{
        let background = SKSpriteNode()
        background.color = UIColor.lightGray
        background.position = CGPoint(x:333.5, y:89.5)
        return background
    }
    
    //Parent labelMunicipioNamesBackground
    func labelForMunicipioNames(NameMunicipioLabel: SKLabelNode) -> SKLabelNode {//child of labelMunicipiosNameBackground()
        NameMunicipioLabel.position = CGPoint(x:0.5 /*self.size.width/2*/, y:-6.5 /*self.size.height/2 * 0.14*/)
        NameMunicipioLabel.fontName = "Helvetica"
        NameMunicipioLabel.fontSize = 18
        NameMunicipioLabel.fontColor = UIColor.init(red: 0.898, green: 0.9765, blue: 0, alpha: 1.0)
        NameMunicipioLabel.text = "Adjuntas"
        //municipiosNameBackground.size = NameMunicipioLabel.frame.size
        //NameMunicipioLabel.zPosition = 2
        return NameMunicipioLabel
    }
    
    
    
    
    
    //funcion crea skipButton
    func skipBlueButton()-> SKSpriteNode {
         
        //Drawing to Shapenode
        let shapeNode = SKShapeNode(path:blueButtonRedButtonBp().cgPath)//En esta linea se invoca la funcion blueButtonRedButtonBp() que retorna un BezierPath y que convertimos en SKShapenode
        shapeNode.strokeColor = UIColor.init(red: 0.098, green: 0.4863, blue: 1, alpha: 1.0)
        shapeNode.lineWidth = 0.5
        shapeNode.fillColor = UIColor.init(red: 0.098, green: 0.4863, blue: 1, alpha: 1.0)
        //Shapenode To SKSpriteNode
        let view = SKView(frame: UIScreen.main.bounds)
        let texture = view.texture(from: shapeNode)!
        let skipBlueButton = SKSpriteNode(texture: texture)
        skipBlueButton.position = CGPoint(x:195, y:-0.5)
        skipBlueButton.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:skipBlueButton.size.width, height:skipBlueButton.size.height), center: CGPoint(x:0.5, y: 0.5))
        skipBlueButton.physicsBody?.isDynamic = false
        skipBlueButton.name = "skipButton"//Sets name property that will be used inside TouchesBegun() in the skipButton block there
        
        let labelSkipButtonOne = redButtonBlueButtonLabelOne()
        //labelSkipButtonOne.fontName = "ChalkboardSE-Regular"
        //labelSkipButtonOne.fontSize = 10
        labelSkipButtonOne.text = "Saltar"
        //labelSkipButtonOne.position = CGPoint(x:0.5, y:0.5)
        skipBlueButton.addChild(labelSkipButtonOne)
        
        let labelSkipButtonTwo = redButtonBlueButtonLabelTwo()
        //labelSkipButtonTwo.fontName = "ChalkboardSE-Light"
        //labelSkipButtonTwo.fontSize = 8
        labelSkipButtonTwo.text = "(Skip)"
        //labelSkipButtonTwo.position = CGPoint(x:0.5, y:-8.5)
        skipBlueButton.addChild(labelSkipButtonTwo)
        
        
        return skipBlueButton
    }
    
    //Funcion crea boton rojo con sus respectivos labels
    func redButton()-> SKSpriteNode {
         
        //Drawing to Shapenode
        let shapeNode = SKShapeNode(path:blueButtonRedButtonBp().cgPath)
        shapeNode.strokeColor = UIColor.init(red: 0.9176, green: 0.2157, blue: 0.0902, alpha: 1.0)
        shapeNode.lineWidth = 0.5
        shapeNode.fillColor = UIColor.init(red: 0.9176, green: 0.2157, blue: 0.0902, alpha: 1.0)
        //Shapenode To SKSpriteNode
        let view = SKView(frame: UIScreen.main.bounds)
        let texture = view.texture(from: shapeNode)!
        let redButton = SKSpriteNode(texture: texture)
        redButton.position = CGPoint(x:-280, y:-0.5)
        redButton.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:redButton.size.width, height:redButton.size.height), center: CGPoint(x:0.5, y: 0.5))
        redButton.physicsBody?.isDynamic = false
        redButton.name = "redButton"
        
        let labelRedButtonOne = redButtonBlueButtonLabelOne()
        //labelSkipButtonOne.fontName = "ChalkboardSE-Regular"
        //labelSkipButtonOne.fontSize = 10
        labelRedButtonOne.text = "Salir"
        //labelSkipButtonOne.position = CGPoint(x:0.5, y:0.5)
        redButton.addChild(labelRedButtonOne)
        
        let labelRedButtonTwo = redButtonBlueButtonLabelTwo()
        //labelSkipButtonTwo.fontName = "ChalkboardSE-Light"
        //labelSkipButtonTwo.fontSize = 8
        labelRedButtonTwo.text = "(Exit)"
        //labelSkipButtonTwo.position = CGPoint(x:0.5, y:-8.5)
        redButton.addChild(labelRedButtonTwo)
        
        
        return redButton
    }
    
    //Esta funcion devuelve el bezier path utilizado para crear los botones de skipButton y exit
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
    
    //Label superior para los botones azul y rojo
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
    
    func addChildSKSpriteNodeToParentSKNode(parent:SKNode, children:SKSpriteNode){
        if children.parent == nil{
        parent.addChild(children)
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

    override public func update(_ currentTime: TimeInterval) {/*Esta funcion ejecuta cada segundo para la funcionalidad del reloj. Los print statements son para uso del programador(comentar/descomentar todos los print statements a la misma vez, para entender mejor como funciona esta funcion)*/

    
        if StartScene.completedGame == false{//Esta linea se utiliza para detener el reloj una vez completado el juego
            //print(renderTime, currentTime,"Arriba")//currentTime es una referencia al reloj de la pc y renderTime es una referencia al reloj(interno del juego perce) que va a comandar el movimiento de los segundos y minutos que van a ser desplegados
            if currentTime > renderTime{/*currentTime es mayor a renderTime solo cuando se anade un segundo, luego renderTime se actualiza a una medida de tiempo futura(pero que permanece estatica) mayor a currentTime, mientras currentTime como desde el inicio continua corriendo continuamente cuando este ultimo sobre pasa a renderTime, la ejecucion entra en el bloque siguiente para aumentar los segundos y minutos(y desplegarlos)*/
                
                //En este bloque es que ocurre el movimiento de segundos y minutos
                if renderTime > 0{//renderTime en su primera iteracion su valor es 0.0, de modo que pasaria al Else If que le sigue a este bloque. Luego de esta primera iteracion siempre su valor sera mayor a 0
                    seconds += 1
                
                    if seconds == 60 {
                        seconds = 0
                        minutes += 1
                        }
                    
                    //Este bloque solo se ejecuta cuando se presiona sobre el municipio incorrecto, anadiendo 3 segundos al reloj
                    if(fail == true){
                        //let penalty = 3
                        print("inside")
                        seconds = seconds + penalty
                        //El if statement abajo substituye(0 resume) los proximos if statements comentados,si los segundos al sumarle el penalty sobrepasan 59, dentro del if se convierte a la cantidad de segundos correspondientes osea 60 a 0, 61 a 1 etc....
                        
                        if seconds >= 60{
                            seconds = seconds - 60//me percate que restandole 60 a los segundos me da la cantidad correspondiente entendiendo que un nuevo segundero a reiniciado.
                            minutes += 1//se sobre entiendo que una vez los segundos(segundero)sobrepasa los 59 segundos se suma un mimnuto
                        }
                        fail = false
                    }
                    
                    if (pressSKipButton == true){
                        //let skipButtonPenalty = 15//Declared at the top so that it is not declared each time skip button is pressed
                        print("quince segundos mas")
                        seconds = seconds + skipButtonPenalty
                        
                        //El if statement abajo substituye(0 resume) los proximos if statements comentados,si los segundos al sumarle el penalty sobrepasan 59, dentro del if se convierte a la cantidad de segundos correspondientes osea 60 a 0, 61 a 1 etc....
                        if seconds >= 60{
                            seconds = seconds - 60//me percate que restandole 60 a los segundos me da la cantidad correspondiente entendiendo que un nuevo segundero a reiniciado.
                            minutes += 1//se sobre entiendo que una vez los segundos(segundero)sobrepasa los 59 segundos se suma un mimnuto
                        }
                        pressSKipButton = false
                    }
                    

                    let secondsText = (seconds < 10) ?
                    "0\(seconds)" : "\(seconds)"
                    let minutesText = "\(minutes)"
                    //"0\(minutes)" : "\(minutes)"//this line of code is to show a 0(01,02,03...minutes) on the minutes counter
                
                    if minutes >= 1 {
                        labelTimer.text = "\(minutesText):\(secondsText)"
                        //timerBackground.size = labelTimer.frame.size
                        if minutes == 1{//ajusta la apariencia del label/background cuando los minutos utilizan un solo lugar que solo ocurre de 1 al minuto 9
                            timerBackground.size = labelTimer.frame.size//size para el background del timer para acomodar 0:00
                        }
                    
                        else if minutes == 10{// ajusts la apariencia de el label/background para cuando los minutos usan dos lugares que ocurre de los 10 minutos en adelante obviamente.
                            timerBackground.size = labelTimer.frame.size//size para el background del timer para acomodar 00:00
                        }
                    
                        
                    }
                  
                    else{
                        labelTimer.text = "\(secondsText)"
                        
                    }
                    
                }
                    
                // Este bloque lo unico que hace es ejecutar para hacer formateo y el rendering del 00 cuando comienza el juego y no vuelve a ejecutar pq rendertime su valor no vuelve a 0 si no que siempre esta en ascenso
                else if renderTime == 0.0{
                    let secondsText = (seconds < 10) ?
                    "0\(seconds)" : "\(seconds)"
                    labelTimer.text = "\(secondsText)"
                    timerBackground.size = labelTimer.frame.size//size para el background del timer para acomodar 00
                    print("rendertime = 0")//Esta linea es solo para indicar al programador cuando se ejecuta este bloque
                    
                    //Solo para uso del programador no es parte del app perce
                    //UserDefaults.standard.removeObject(forKey: "secondsAlphabetic")/*OJO COMO ESTE BLOQUE EJECUTA EN EL SEGUNDO 0 Y NO VUELVE A EJECUTAR COLOQUE AQUI EL RESET DE LA MEMORIA PERSISTENTE DONDE ALMACENO LOS DATOS UTILIZADOS PARA DETERMINAR SI SE LOGRO UN NUEVO RECORD DE TIEMPO*/
                    //UserDefaults.standard.removeObject(forKey: "minutesAlphabetic")//OJO COMO ESTE BLOQUE EJECUTA EN EL SEGUNDO 0 Y NO VUELVE A EJECUTAR COLOQUE AQUI EL RESET DE LA MEMORIA PERSISTENTE DONDE ALMACENO LOS DATOS UTILIZADOS PARA DETERMINAR SI SE LOGRO UN NUEVO RECORD DE TIEMPO
            }
                //print(renderTime)
                renderTime = currentTime + changeTime//En esta linea se actualiza el valor de renderTime, cuando esto ocurre renderTime es mayor en valor que currentTime
                //print(renderTime, currentTime, "Abajo")
                
            }
            //Este bloque es para uso del programador y no tiene relacion alguna con el rendering o ningun aspecto del juego, mas bien se hizo para entender visualmente lo que hace esta funcion y como hace funcionar el reloj que creamos aqui
            //renderTimeBiggerCounter += 1/* En este contador cuento mas o menos la cantidad de oscilaciones como medida para conocer cuanto tiempo le toma a currentTime sobrepasar el valor de renderTime(mientras esta estatico es decir que no se ha actualizado) antes de volver a ser actualizado*/
            //print(renderTimeBiggerCounter!)
            //print("")
        }
        
        //Este bloque solo ejecuta si gameCompleted == true, la idea es tomar los ultimos segundos y minutos para que puedan ser evaluados para la mejor marca de tiempo en la siguiente funcion

        /*Aqui ocurre el paso a la escena de Game Over la razon por la que se encuentra aqui es pq cuando lo ejecutaba en Touchesbegan la transicion le quitaba "espacio" a la funcion
         Touches Began y para que esta pudiera tener su "espacio" y termine de ejecutar su metodo, se coloco aqui dado que esta funcion ejecuta cada segundo pero solo llega la ejecucion aqui si el juego ya se completo luego de que el reloj se detuviera.*/
        
        if StartScene.completedGame == true{
            StartScene.secondsGameOver = seconds
            StartScene.minutesGameOver = minutes
            self.removeAllActions()
            self.removeFromParent()
            let gameOverScene = GameOverScene(size: self.size)
            //let transition = SKTransition.fade(withDuration: 0.9)//withDuration: 1.5)
            self.view?.presentScene(gameOverScene/*, transition: transition*/)/*si anado una transicion con 1.0 segundos o hasta 0.5 permite que el ultimo mnicipio se cambie de color antes de cambiar la vista pero ocurre cierto laggin que de cierta forma interfiere con el ritmo que llevaba el juego y afecta un poco la experiencia pero puedo volver a tratar mas adelante ajustando esto hasta dar con la experiencia que busco*/
        }
        
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {//Funcion encargada del toque de pantalla
        
        let touch = touches.first!//Guarda toque de pantalla
        let touchLocation = touch.location(in: self)//Define el espacio en donde van a tomar efecto los toques de pantalla en este caso la vista StartScene
        touchedNode = self.physicsWorld.body(at:touchLocation)//Se define que el toque de pantalla tomara efecto cuando el mismo entre en contacto con un SKphysics body, dentro de la vista StartScene
        
        
        let locationNameLabel = SKLabelNode()//Label para municipios que utilizan un solo label para acomodar el nombre del mismo
        let firstLineLabel = SKLabelNode()//Primer label para municipios que utilizan mas de un label para acomodar su nombre
        let secondLineLabel = SKLabelNode()//Segundo label para municipios que utilizan mas de un label para acomodar su nombre
        var countOfIndexes:Int = -1//Dado que interesamos obtener una cuenta de los indices y no de los elementos inicializamos a -1 para que la cuenta incluya el lugar numero 0
        
        
        
        if (touchedNode != nil){//Esta linea permite que la ejecucion continue hacia el bloque abajo si se toco un SKphysics body o tambien se puede entender como si se tocara fuera de los skphysics bodys que en cuyo caso devolveria un valor nil(nulo)
            if (municipioNameLabel.text == touchedNode?.node?.name){//Si esta condicion no se cumple que es igual a no atinar el municipio a identificar, pasa al Else abajo donde la variable Fail es igual a true
                for child in containerNode.children {//Este for loop va a iterar(en memoria los elementos contenidos en containerNode(SKNode)) de forma continua cotejando la condicion if(touchedNode?.node?.name == spriteNode.name)
                    if let spriteNode = child as? SKSpriteNode {//Esto se leeria como Si child es Skspritenode(esto es porque podria ocurrir que containerNode tenga algun objeto que no un Skspritenode)
                        if(touchedNode?.node?.name == spriteNode.name){//Si esta condicion prueba falsa la ejecucion va a regresar al for loop continuamente hasta que esta pruebe cierta
                            spriteNode.color = UIColor.init(red: 0.5686, green: 1, blue: 0.8745, alpha: 1.0)// Aplica color al municipio identificado correctamente. Color description: minty green(custom color no hex # available)
                            spriteNode.colorBlendFactor = 1.0//Gradacion de la transparecia del color a aplicarse, que en este caso no queremos trasparencia si no que el color se exprese en el mayor grado posible
                            spriteNode.physicsBody = nil//Elimina el skphysicsBody
                            if StartMenu.gamePlaySoundOn == true{
                                run(StartScene.correctSound)//correctSound
                            }
                            
                            let currentMunicipioNameOnLabel = municipioNameLabel.text//Esta variable la cree como guia para mantener identificado el contenido del label(municipioNameLabel) antes de ser actualizado en el bloque donde se hace el rendering de los labels sobre los pueblos correspondientes
                            let municipioToBeRemovedFromArray = municipios_names_array[currentIndex]//Elemento a ser removido del array luego de ser identificado. Se guarda en esta variable que sera utilizada mas adelante en la funcion que remueve elementos del array
                            
                            //El for statement abajo va a generar la cuenta de los indices entendiendose que el cero es un lugar y esta incluido. En cada nueva iteracion el numero de indices es menor, por: let elementRemoved = municipios_names_array.remove(at:currentIndex)
                            for index in municipios_names_array {
                                if index != ""{
                                    countOfIndexes += 1//ojo esta variable se reinicia cuando el programa regresa al tope y pasa  por la declaracion de la variable
                                }
                            }
                            //let countOfIndexesTwo = countOfIndexes//USAR SOLO CUANDO SE ESTA HACIENDO TESTING(PRINT STATEMENTS DEL PROGRAMADOR)
                            
                            
                            //if currentIndex <= countOfIndexes /*indexedCount*/{/*Para los efectos del juego esta condicion siempre va a probar cierta, es decir que no es necesaria sin embargo la he dejado como un marker donde podrian en el futuro ser necesario probar alguna otra condicion
                                //es un lugar importante en flow de la ejecucion o lo puede ser en un futuro*/
                                /**PRINT STATEMENTS PARA USO DEL PROGRAMADOR.OJO CUANDO SE USAN LOS PRINT STATEMENTS USAR EN EL FLOW NORMAL LA VARIABLE: countOfIndexesTWO. Luego de comentados los print statements usar nuevamente la variable countOfIndexes donde se habia cambiado
                                print("")//uso del programador
                                print("CURRENT")//uso del programador
                                print(currentMunicipioNameOnLabel as Any)//municipio a buscar en el momento en el momento. uso del programador
                                print(countOfIndexes)//variable que lleva cuenta regresiva de los indices hayados en un momento dado en el array. uso del programador
                                print(currentIndex)//indice correspondiente al elemento(municipio a buscar) que se evalua en el momento. uso del programador
                                print(" ")//. uso del programador*/
                            print(currentIndex)
                            print(countOfIndexes)
                        
                            locationNameLabel.text = municipioNameLabel.text//Text atribute is pass to locationNameLabel to be used by one word municipios(except for Las Piedras and Las Marias) same
                            
                            
                            //El switch statement se encarga de algunos atributos mas especificos(de un grupo de municipios o de uno, referente)de los labels que identifican en texto x municipio luego de ser identificado correctamente
                            //La ejecuccion va a continuar en el case que corresponda o incluya el string con el mismo valor de municipioNameLabel.text
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

                                    
                                case "Hormigueros", "Maunabo" :
                                    setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
                                    locationNameLabel.fontSize = 4.3
                                    locationNameLabel.zRotation = 10.0
                                    locationNameLabel.position = CGPoint(x: -0.5, y: 2.5)

                                    
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

                                    
                                case  "Barceloneta", "Bayamón", "Dorado", "Guaynabo":
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
                                    locationNameLabel.position = CGPoint(x: 4.5, y: 0.5)

                                    
                                    
                                case "Naranjito", "Barranquitas", "Las Piedras", "Humacao" :
                                    setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
                                    locationNameLabel.fontSize = 4.9
                                    locationNameLabel.zRotation = 2.3
                                    locationNameLabel.position = CGPoint(x: 3.5, y: 1.0)

                                    
                                case "Cataño":
                                    setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
                                    locationNameLabel.fontSize = 4.0
                                    locationNameLabel.position = CGPoint(x: 0.5, y: 1.5)

                                    
                                case "Loíza" :
                                    setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
                                    locationNameLabel.fontSize = 7.0
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
                                    setTwoLineMunicipioNameLabels(firstLine:firstLineLabel, secondLine:secondLineLabel)//Attributes are set for label
                                    firstLineLabel.text = splitTextIntoFields(theText:locationNameLabel)
                                    secondLineLabel.text = splitTextIntoFieldsTwo(theText:locationNameLabel)
                                    secondLineLabel.verticalAlignmentMode = .top

                                    
                                case "Sabana Grande" :
                                    setTwoLineMunicipioNameLabels(firstLine:firstLineLabel, secondLine:secondLineLabel)
                                    firstLineLabel.text = splitTextIntoFields(theText:locationNameLabel)
                                    secondLineLabel.text = splitTextIntoFieldsTwo(theText:locationNameLabel)
                                    firstLineLabel.fontSize = 5.0
                                    secondLineLabel.fontSize = 5.0
                                    firstLineLabel.position = CGPoint(x:-4.0, y:5.5)
                                    secondLineLabel.position = CGPoint(x:-3.5, y:13.0)

                                    
                                case "Vega Alta":
                                    setTwoLineMunicipioNameLabels(firstLine:firstLineLabel, secondLine:secondLineLabel)
                                    firstLineLabel.text = splitTextIntoFields(theText:locationNameLabel)
                                    secondLineLabel.text = splitTextIntoFieldsTwo(theText:locationNameLabel)
                                    firstLineLabel.position = CGPoint(x:2, y:0.5)
                                    secondLineLabel.verticalAlignmentMode = .top

                                    
                                case "Toa Baja":
                                    setTwoLineMunicipioNameLabels(firstLine:firstLineLabel, secondLine:secondLineLabel)
                                    firstLineLabel.text = splitTextIntoFields(theText:locationNameLabel)
                                    secondLineLabel.text = splitTextIntoFieldsTwo(theText:locationNameLabel)
                                    firstLineLabel.horizontalAlignmentMode = .right
                                    secondLineLabel.verticalAlignmentMode = .top
                                    secondLineLabel.horizontalAlignmentMode = .right

                                    
                                case "Trujillo Alto" :
                                    setTwoLineMunicipioNameLabels(firstLine:firstLineLabel, secondLine:secondLineLabel)
                                    firstLineLabel.text = splitTextIntoFields(theText:locationNameLabel)
                                    secondLineLabel.text = splitTextIntoFieldsTwo(theText:locationNameLabel)
                                    firstLineLabel.fontSize = 5.5
                                    secondLineLabel.fontSize = 5.5
                                    firstLineLabel.position = CGPoint(x:-4.0, y:0.5)
                                    secondLineLabel.position = CGPoint(x:-3.5, y:6.5)

                                    
                                case "San Lorenzo"  :
                                    setTwoLineMunicipioNameLabels(firstLine:firstLineLabel, secondLine:secondLineLabel)
                                    firstLineLabel.text = splitTextIntoFields(theText:locationNameLabel)
                                    secondLineLabel.text = splitTextIntoFieldsTwo(theText:locationNameLabel)
                                    secondLineLabel.position = CGPoint(x:4.5, y:6.0)

                                
                                    default:
                                        break
                            }
                            

                            //Este if statement ejecuta siempre que currentIndex y countOfIndexes son distintos
                            if currentIndex != countOfIndexes{
                                if currentMunicipioNameOnLabel == municipioToBeRemovedFromArray{//Corrobora que el municipio a eliminarse del array
                                    /*let elementRemoved =*/ municipios_names_array.remove(at:currentIndex)//remueve elemento identificado en el indice al momento(que es el municipio a buscar)
                                    //countIndex = countIndex - 1// Remueve un indice de la cuenta indexada
                                    /**print("CHANGE")//. uso del programador
                                    countOfIndexes = -1//Reinicia la variable, de lo contrario el statement countOfIndexes += 1 mantendria el valor del conteo inicial y dando un valor erroneo no actualizado
                                    //scoreCount += 1
                                    //labelScores.text = "\(scoreCount)" + totalScoreCount
                                    
                                    //reconteo para uso del programador
                                    for index in municipios_names_array {
                                        if index != ""{
                                            countOfIndexes += 1
                                        }
                                    }
                                    print(countOfIndexes)//. uso del programador
                                    print(currentIndex)//. uso del programador
                                    print("")//. uso del programador
                                    print(elementRemoved)//. uso del programador
                                    print(municipios_names_array)//. uso del programador
                                    print("ACA")//. uso del programador*/
                                    
                                }
                            }
                            
                            /*Este else if ejecuta solo cuando currentIndex y countOfIndexes son iguales pero mayor o igual a 1. Esto solo va a ocurrir si se presiona el boton de skip lo que mueve el index adelante cuando en el transcurso del juego alcanzamos el ultimo elemento en orden natural vamos a observar que ambas variables van a tener el mismo valor (que equivale al numero de municipios saltados previamente), tambien esto nos indica que el currentIndex se movera proximamente al index 0.
                            */
                            else if currentIndex == countOfIndexes && currentIndex >= 1 && countOfIndexes >= 1{/*Esta condicion se cumple cuando alcanzamos el fin del array, pero quedan elementos en la posiciones anteriores a currentIndex, de mode
                                 que currentIndex vuelve a 0 para ir sobre el resto de los elementos que van quedando atras en el queue luego que oprimimos el skipButton*/
                                if currentMunicipioNameOnLabel == municipioToBeRemovedFromArray{
                                    /*let elementRemoved =*/ municipios_names_array.remove(at:currentIndex)
                                    currentIndex = 0/*Cuando la ejecucion entra en este bloque quiere decir que el programa llego al ultimo indice, de modo que vuelve al indice 0 para volver sobre los municipios que no pudieron ser identificados
                                    durante el recorrido anterior a lo largo del array */
                                    /**print("CHANGE")//. uso del programador
                                    countOfIndexes = -1//Reinicia la variable, de lo contrario el statement countOfIndexes += 1 mantendria el valor del conteo inicial y dando un valor erroneo no actualizado

                                    //reconteo para uso del programador
                                   for index in municipios_names_array {
                                        if index != ""{
                                            countOfIndexes += 1
                                        }
                                    }
                                    print(countOfIndexes)//. uso del programador
                                    print(currentIndex)//. uso del programador
                                    print("")//. uso del programador
                                    print(elementRemoved)//. uso del programador
                                    print(municipios_names_array)//. uso del programador
                                    print("AQUI")//. uso del programador*/
                                }
                               
                            }
                            
                                
                            //Este else statement va a ejecutar solo cuando currentIndex y countIndex == 0
                            else{
                                //run(fanfair)
                                goldBackgroundSKSpriteNode.removeFromParent()
                                timerBackground.removeFromParent()
                                labelTimer.removeFromParent()
                                //self.addChild(endGameRectangle)
                                StartScene.completedGame = true//Se actualiza la variable completedGame para detener el reloj
                                
                                //EL restante del bloque es para uso del pro\gramador
                                /***print("CHANGE")//. uso del programador
                                countOfIndexes = -1//Reinicia la variable, de lo contrario el statement countOfIndexes += 1 mantendria el valor del conteo inicial y dando un valor erroneo no actualizado
                                //scoreCount += 1
                                //labelScores.text = "\(scoreCount)" + totalScoreCount
                                //reconteo uso del programador
                                for index in municipios_names_array {
                                    if index != ""{
                                        countOfIndexes += 1
                                    }
                                }
                                print(countOfIndexes)//. uso del programador
                                print(currentIndex)//. uso del programador
                                print("")//. uso del programador
                                print(municipios_names_array)//. uso del programador
                                print("completed game")*/
                            }
                            
                             //Aqui van a entrar la ejecucion cuando el municipio identificado utiliza dos labels para acomodar el nombre(localidad del mapa)
                            if(useLine2 == true){
                                spriteNode.addChild(firstLineLabel)//anade el label al objeto skpritenode(parte del mapa politico que corresponde a un municipio)
                                spriteNode.addChild(secondLineLabel)
                                municipioNameLabel.text = municipios_names_array [currentIndex]//Se desplega el nuevo municipio a ser localizado por el jugador
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
                                /**print(municipioNameLabel.text as Any)//Para uso del programador*/
                                //municipiosNameBackground.size = municipioNameLabel.frame.size//Permite que el background del label reajuste su tamano de acuerdo al largo del label()
                                useLine2 = false
                                    
                            }
                            //La ejecucion entraria en este bloque para municipios cuyo nombre solo requieren un solo label
                            else{
                                spriteNode.addChild(locationNameLabel)//anade el label al objeto skpritenode(parte del mapa politico que corresponde a un municipio)
                                municipioNameLabel.text = municipios_names_array [currentIndex]//Se desplega el nuevo municipio a ser localizado por el jugador
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
                                /**print(municipioNameLabel.text as Any)//Para uso del programador*/
                                //municipiosNameBackground.size = municipioNameLabel.frame.size//Permite que el background del label reajuste su tamano de acuerdo al largo del label()

                            }
                            
                            /*Aqui se estaria ejecutando el label para los scores*/
                            scoreCount += 1
                            labelScores.text = "\(scoreCount)" + totalScoreCount//totalScoreCount es un constant string solo sirve al rendering del score
                            

                            /*La siguiente condicion es cierta cuando la variable countOfIndexes == 1(osea que restan dos indices el 0 y 1) y currentIndex se encuentra en 0 o primer indice que es donde se encuentra el penultimo indice(elemento) que a este punto ya fue removido en el bloque anterior. Pero dado que la variable countOfIndexes actualiza en la proxima iteracion para los efectos de(la presente iteracion) quedan dos elementos y es lo que permite crear esta condicion de modo que junto al penultimo elemento(removido en bloques anteriores) tambien removemos el boton de skip en este bloque. Lo importante es entender que cuando se cumple esta condicion(para eliminar el skip button) ya se ha removido el penultimo elemento y que tanto la remocion del penultimo elemento como la remocion del skip button ocurren en una misma iteracion */
                            /*OJO UTILIZO countofIndexesTwo solo y exclusivamente en esta funcion cuando estoy utilizando los print() statements del programador,
                            de lo contrario comento todos los statements del programador y utilizo la variable countOfIndexes*/
                            if  countOfIndexes == 1 && currentIndex == 0 && municipios_names_array.endIndex-1 == 0 {
                                print("skip button out")
                                skipButton.removeFromParent()
                                //print(countOfIndexes)
                                //print(countOfIndexesTwo)
                            }
                                
                            //}

                        }
                                
                    }
                            
                }
            }
            
            /*Se asigno us SKPhysics body para el skipButton y el toque de pantalla se captura en este bloque**/
            else if (skipButton.name == touchedNode?.node?.name){//Es lo mismo que preguntar si el physics body tocado se llama (name) como skipButton, la condicion quiere saber si tocamos skipButton basicamente
                currentIndex += 1//mueve el indice adelante en el array de municipios y por consiguiente va a cambiar el municipio a buscarse en orden alfabetico.
                skipButton.alpha = 0.9//efecto para skipButton al presionarlo, esta linea es solo una prueba y debo al menos sujetarlo a una condicion en el futuro como un if
                skipButtonPressed = true
                
                if currentIndex == municipios_names_array.endIndex-0{//Si el indice llega al ultimo elemento el index se devuelve al 0 para comenzar a iterar los municipios que no fueron identificados en la pasada anterior del juego
                    print("This")//para programador
                    currentIndex = 0//resetea el index al lugar 0 cuando presionando el skip button alcanzamos el ultimo indice
                }
                pressSKipButton = true
                municipioNameLabel.text = municipios_names_array[currentIndex]
                municipiosNameBackground.size = municipioNameLabel.frame.size
                print("Skip Button touched")
            }
            
            else if (exitRedButton.name == touchedNode?.node?.name){//Es lo mismo que preguntar si el physics body tocado se llama (name) como skipButton, la condicion quiere saber si tocamos skipButton basicamente
                //exitRedButton.alpha = 1.0 No se utilizo animacion en este boton pq no se ve la animacion
                //exitButtonPressed = true
                let startMenuScene = StartMenu(size: self.size)//definitio
                //let transition = SKTransition.doorsOpenVertical(withDuration: 1.5)
                self.view?.presentScene(startMenuScene)/*present scene and execut transitions*/
            }
            
                        
            //En este Else statement entra la ejecucion cuando se toca el skbody que no corresponde al municipio a localizar
            else{
                if StartMenu.gamePlaySoundOn == true{
                    run(StartScene.incorrectSound)
                }
                return fail = true//Esta variable se actualiza para entonces ejecutar la penalizacion de anadir 3 segundos al reloj del juego
                
            }
            
        }
        
    }
    
    func setOneLineMunicipioNameLabel(Oneline:SKLabelNode){
        //Oneline.text = municipioNameLabel.text
        Oneline.fontName = "Helvetica"
        Oneline.fontColor = UIColor.black
        Oneline.xScale = -1.0
        Oneline.zRotation = 9.44
        Oneline.fontSize = 5.4
    }
    
    func setTwoLineMunicipioNameLabels(firstLine:SKLabelNode, secondLine:SKLabelNode){
        
        firstLine.fontName = "Helvetica"
        secondLine.fontName = "Helvetica"
        firstLine.fontSize = 5.4
        secondLine.fontSize = 5.4
        firstLine.fontColor = UIColor.black
        secondLine.fontColor = UIColor.black
        firstLine.xScale = -1.0
        secondLine.xScale = -1.0
        firstLine.zRotation = 9.44
        secondLine.zRotation = 9.44
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //Efecto para el skipButton cuando se suelta el boton
        if skipButtonPressed == true{
            skipButton.alpha = 1.0//Ojo esto se veria mejor dentro de un if sin embargo  si utilizo una condicion como if skipButton.alpha == 1.0 causa un glitch, pero puedo hacer una condicion con una variable boolean
            skipButtonPressed = false
        }
       /* if exitButtonPressed == true{
            exitRedButton.alpha = 0.9//Ojo esto se veria mejor dentro de un if sin embargo  si utilizo una condicion como if skipButton.alpha == 1.0 causa un glitch, pero puedo hacer una condicion con una variable boolean
            exitButtonPressed = false
        }*/
        /*if have == true{
            skipButton.setScale(0.17)
                have = false
            }*/
        
    }
    
    //Las dos proximas funciones son identicas con la diferencia de que devuelven cada una por su parte una variable diferente
    func splitTextIntoFields(theText:SKLabelNode)->String{
        useLine2 = false//Esta linea resetea la variable que es necesario para no crear redundancia cuando se pasa el texto a label(ej:aguas aguas buenas)
        //var twoLineText: String = ""
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
        //var twoLineText: String = ""
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
