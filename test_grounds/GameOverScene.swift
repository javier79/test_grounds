//
//  GameOverScene.swift
//  test_grounds
//
//  Created by javier pizarro on 4/4/22.
//  Copyright © 2022 javierpizarro. All rights reserved.
//
import Foundation
import SpriteKit
import UIKit
import AVFoundation

class GameOverScene: SKScene{
    var arrayOfMapSpriteNodes = [SKSpriteNode()]
    var twoLineText: String = ""//se usa solo en las dos funciones splitTextIntoFields puedo declararla en ambas funciones de manera local
    var useLine2:Bool = false//se usa en mas de una funcion
    var containerNode = SKNode()
    var endGameRectangle = SKSpriteNode()
    var endGameRectangleButton = SKSpriteNode()
    var endGameRectangleButtonTwo = SKSpriteNode()
    var endGameRectangleButtonThree = SKSpriteNode()
    var resultadosButton = SKSpriteNode()
    var touchedNode: SKPhysicsBody!
    let labelOne = SKLabelNode(); let labelTwo = SKLabelNode(); let labelThree = SKLabelNode(); let labelFour = SKLabelNode();  let labelFive = SKLabelNode();  let labelSix = SKLabelNode()
    let labelSeven = SKLabelNode(); let labelEight = SKLabelNode(); let labelNine = SKLabelNode(); let labelTen = SKLabelNode()
    var playagain: Bool = false
    var exited:Bool = false
    let fanfair = SKAction.playSoundFileNamed("cartoon_success_fanfair 1", waitForCompletion: false)
    //let backgroundMusic = SKAudioNode(fileNamed: "predited.mp3")
    var musicPlayer = AVAudioPlayer()
    var musicURL:URL?
    
    override func didMove(to view: SKView) {
        
        
        if StartMenu.gamePlaySoundOn == true{
            run(fanfair)
        }
        
        musicURL = Bundle.main.url(forResource:"predited", withExtension:"mp3")
        if StartMenu.backgroundMusicOn == true{
            //self.addChild(StartScene.backgroundMusic)
            initMusic()
        }
        //self.addChild(backgroundMusic)
        
        endGameRectangle = endgameRectangle()
        
        if RandomGame.completedGame == true{
            secondsAndMinutesBestTimesAssesmentAndRecordStatusAndTimesRenderingRandom(second:RandomGame.secondsGameOver,minute:RandomGame.minutesGameOver)
        }
        else if StartScene.completedGame{
            secondsAndMinutesBestTimesAssesmentAndRecordStatusAndTimesRenderingAlphabetic(second:StartScene.secondsGameOver,minute:StartScene.minutesGameOver)
        }
        
        //endGameRectangleButton.name = "buttonOne"//propiedad nombre, el buttonOne abajo es una referencia para usarse dentro de la funcion
        endGameRectangleButton = endgameRectangleButton()
        endGameRectangle.addChild(endGameRectangleButton)
        
        //endGameRectangleButtonTwo.name = "buttonTwo"
        endGameRectangleButtonTwo = endgameRectangleButtoTwo()
        endGameRectangle.addChild(endGameRectangleButtonTwo)
        
        //endGameRectangleButtonThree.name = "buttonThree"
        endGameRectangleButtonThree = endgameRectangleButtoThree()
        endGameRectangle.addChild(endGameRectangleButtonThree)
        
        containerNode = StartScene().nodesContainer()
        self.backgroundColor = UIColor.init(red: 0.5373, green: 0.8431, blue: 0.9294, alpha: 1.0)
        
        resultadosButton = StartMenuMethods().redButtonBpDrawToSKSpriteNode()
        resultadosButton = setResultadosButton(buttonResultadosSKSpriteNode:resultadosButton)
        
        let coverDesecheoIslandSKSpriteNode: SKSpriteNode = TestClass().desecheoIslandCover()//As desecheo island is not mean to be rendered this node hides it from view.
        containerNode.addChild(coverDesecheoIslandSKSpriteNode)
        
        let rectanglebp:UIBezierPath! = TestClass().createRectangle()
        let rectangularFrameSKSPriteNode: SKSpriteNode = TestClass().rectangleBezierPathToSKSpriteNode(bpRectangle: rectanglebp)
        containerNode.addChild(rectangularFrameSKSPriteNode)
        
        let rectangleViequesbp:UIBezierPath! = TestClass().createViequesRectangle()
        let rectangularViequesFrameSKSPriteNode: SKSpriteNode = TestClass().rectangleViequesBezierPathToSKSpriteNode(bpViequesRectangle: rectangleViequesbp)
        containerNode.addChild(rectangularViequesFrameSKSPriteNode)
        
        let rectangleCulebrabp:UIBezierPath! = TestClass().createCulebraRectangle()
        let rectangularCulebraFrameSKSPriteNode: SKSpriteNode = TestClass().rectangleCulebraBezierPathToSKSpriteNode(bpCulebraRectangle: rectangleCulebrabp)
        containerNode.addChild(rectangularCulebraFrameSKSPriteNode)
        
        let caboRojobp: UIBezierPath! = TestClass().caboRojoDrawBezierPath()
        let caboRojoSKSpriteNode: SKSpriteNode = TestClass().caboRojoBezierPathToSKSpriteNode(bpCaboRojo: caboRojobp)
        arrayOfMapSpriteNodes.append(caboRojoSKSpriteNode)
        
        let hormiguerosbp: UIBezierPath! = TestClass().hormiguerosDrawBezierPath()
        let hormiguerosSKSpriteNode:SKSpriteNode = TestClass().hormiguerosBezierPathToSKSpriteNode(bphormigueros: hormiguerosbp)
        arrayOfMapSpriteNodes.append(hormiguerosSKSpriteNode)
        
        let mayaguezbp: UIBezierPath! = TestClass().mayaguezDrawBezierPath()
        let mayaguezSKSpriteNode:SKSpriteNode = TestClass().mayaguezBezierPathToSKSpriteNode(bpMayaguez: mayaguezbp)
        arrayOfMapSpriteNodes.append(mayaguezSKSpriteNode)
        
        let anascobp: UIBezierPath! = TestClass().anascoDrawBezierPath()
        let anascoSKSpriteNode: SKSpriteNode = TestClass().anascoBezierPathToSKSpriteNode(bpAnasco: anascobp)
        arrayOfMapSpriteNodes.append(anascoSKSpriteNode)
        
        let rinconbp: UIBezierPath! = TestClass().rinconDrawBezierPath()
        let rinconSKSpriteNode: SKSpriteNode = TestClass().rinconBezierPathToSKSpriteNode(bpRincon: rinconbp)
        arrayOfMapSpriteNodes.append(rinconSKSpriteNode)
        
        let aguadabp: UIBezierPath! = TestClass().aguadaDrawBezierPath()
        let aguadaSKSpriteNode: SKSpriteNode = TestClass().aguadaBezierPathToSKSpriteNode(bpAguada: aguadabp)
        arrayOfMapSpriteNodes.append(aguadaSKSpriteNode)
        
        let aguadillabp: UIBezierPath! = TestClass().aguadillaDrawBezierPath()
        let aguadillaSKSpriteNode: SKSpriteNode = TestClass().aguadillaBezierPathToSKSpriteNode(bpAguadilla: aguadillabp)
        arrayOfMapSpriteNodes.append(aguadillaSKSpriteNode)
        
        let isabelabp: UIBezierPath! = TestClass().isabelaDrawBezierPath()
        let isabelaSKSpriteNode: SKSpriteNode = TestClass().isabelaBezierPathToSKSpriteNode(bpIsabela: isabelabp)
        arrayOfMapSpriteNodes.append(isabelaSKSpriteNode)
        
        let mocabp:UIBezierPath! = TestClass().mocaDrawBezierPath()
        let mocaSKSpriteNode: SKSpriteNode = TestClass().mocaBezierPathToSKSpriteNode(bpMoca: mocabp)
        arrayOfMapSpriteNodes.append(mocaSKSpriteNode)
        
        let lasMariasbp:UIBezierPath! = TestClass().lasMariasDrawBezierPath()
        let lasMariasSKSpriteNode: SKSpriteNode = TestClass().lasMariasBezierPathToSKSpriteNode(bpLasMarias: lasMariasbp)
        arrayOfMapSpriteNodes.append(lasMariasSKSpriteNode)
        
        let maricaobp:UIBezierPath! = TestClass().maricaoDrawBezierPath()
        let maricaoSKSpriteNode: SKSpriteNode = TestClass().maricaoBezierPathToSKSpriteNode(bpMaricao:maricaobp)
        arrayOfMapSpriteNodes.append(maricaoSKSpriteNode)
        
        let sanGermanbp:UIBezierPath! = TestClass().sanGermanDrawBezierPath()
        let sanGermanSKSpriteNode:SKSpriteNode = TestClass().sanGermanBezierPathToSKSpriteNode(bpSanGerman: sanGermanbp)
        arrayOfMapSpriteNodes.append(sanGermanSKSpriteNode)
        
        let yaucobp:UIBezierPath! = TestClass().yaucoDrawBezierPath()
        let yaucoSKSpriteNode: SKSpriteNode = TestClass().yaucoBezierPathToSKSpriteNode(bpYauco:yaucobp)
        arrayOfMapSpriteNodes.append(yaucoSKSpriteNode)
        
        let lajasbp:UIBezierPath! = TestClass().lajasDrawBezierPath()
        let lajasSKSpriteNode: SKSpriteNode = TestClass().lajasBezierPathToSKSpriteNode(bpLajas:lajasbp)
        arrayOfMapSpriteNodes.append(lajasSKSpriteNode)
        
        let guanicabp:UIBezierPath! = TestClass().guanicaDrawBezierPath()
        let guanicaSKSpriteNode: SKSpriteNode = TestClass().guanicaBezierPathToSKSpriteNode(bpGuanica:guanicabp)
        arrayOfMapSpriteNodes.append(guanicaSKSpriteNode)
        
        let guayanillabp:UIBezierPath! = TestClass().guayanillaDrawBezierPath()
        let guayanillaSKSpriteNode:SKSpriteNode = TestClass().guayanillaBezierPathToSKSpriteNode(bpGuayanilla:guayanillabp)
        arrayOfMapSpriteNodes.append(guayanillaSKSpriteNode)
        
        let sanSebastianbp:UIBezierPath! = TestClass().sanSebastianDrawBezierPath()
        let sanSebastianSKSpriteNode: SKSpriteNode = TestClass().sanSebastianBezierPathToSKSpriteNode(bpSanSebastian: sanSebastianbp)
        arrayOfMapSpriteNodes.append(sanSebastianSKSpriteNode)
        
        let sabanaGrandebp:UIBezierPath! = TestClass().sabanaGrandeDrawBezierPath()
        let sabanaGrandeSKSpriteNode: SKSpriteNode = TestClass().sabanaGrandeBezierPathToSKSpriteNode(bpSabanaGrande: sabanaGrandebp)
        arrayOfMapSpriteNodes.append(sabanaGrandeSKSpriteNode)
        
        let laresbp:UIBezierPath! = TestClass().laresDrawBezierPath()
        let laresSKSpriteNode:SKSpriteNode = TestClass().laresBezierPathToSKSpriteNode(bpLares: laresbp)
        arrayOfMapSpriteNodes.append(laresSKSpriteNode)
    
        let penuelasbp:UIBezierPath! = TestClass().penuelasDrawBezierPath()
        let penuelasSKSpriteNode:SKSpriteNode = TestClass().penuelasBezierPathToSKSpriteNode(bpPenuelas: penuelasbp)
        arrayOfMapSpriteNodes.append(penuelasSKSpriteNode)
        
        let poncebp:UIBezierPath! = TestClass().ponceDrawBezierPath()
        let ponceSKSpriteNode:SKSpriteNode = TestClass().ponceBezierPathToSKSpriteNode(bpPonce: poncebp)
        arrayOfMapSpriteNodes.append(ponceSKSpriteNode)
        
        let utuadobp:UIBezierPath! = TestClass().utuadoDrawBezierPath()
        let utuadoSKSpriteNode:SKSpriteNode = TestClass().utuadoBezierPathToSKSpriteNode(bpUtuado: utuadobp)
        arrayOfMapSpriteNodes.append(utuadoSKSpriteNode)
        
        let jayuyabp:UIBezierPath! = TestClass().jayuyaDrawBezierPath()
        let jayuyaSKSpriteNode:SKSpriteNode = TestClass().jayuyaBezierPathToSKSpriteNode(bpJayuya: jayuyabp)
        arrayOfMapSpriteNodes.append(jayuyaSKSpriteNode)
        
        let juanaDiazbp:UIBezierPath! = TestClass().juanaDiazDrawBezierPath()
        let juanaDiazSKSpriteNode:SKSpriteNode = TestClass().juanaDiazBezierPathToSKSpriteNode(bpJuanaDiaz: juanaDiazbp)
        arrayOfMapSpriteNodes.append(juanaDiazSKSpriteNode)
        
        let quebradillasbp:UIBezierPath! = TestClass().quebradillasDrawBezierPath()
        let quebradillasSKSpriteNode:SKSpriteNode = TestClass().quebradillasBezierPathToSKSpriteNode(bpQuebradillas:quebradillasbp)
        arrayOfMapSpriteNodes.append(quebradillasSKSpriteNode)
        
        let camuybp:UIBezierPath! = TestClass().camuyDrawBezierPath()
        let camuySKSpriteNode:SKSpriteNode = TestClass().camuyBezierPathToSKSpriteNode(bpCamuy:camuybp)
        arrayOfMapSpriteNodes.append(camuySKSpriteNode)
        
        let hatillobp:UIBezierPath! = TestClass().hatilloDrawBezierPath()
        let hatilloSKSpriteNode:SKSpriteNode = TestClass().hatilloBezierPathToSKSpriteNode(bpHatillo:hatillobp)
        arrayOfMapSpriteNodes.append(hatilloSKSpriteNode)
        
        let arecibobp:UIBezierPath! = TestClass().areciboDrawBezierPath()
        let areciboSKSpriteNode:SKSpriteNode = TestClass().areciboBezierPathToSKSpriteNode(bpArecibo:arecibobp)
        arrayOfMapSpriteNodes.append(areciboSKSpriteNode)
        
        let adjuntasbp:UIBezierPath! = TestClass().adjuntasDrawBezierPath()
        let adjuntasSKSpriteNode:SKSpriteNode = TestClass().adjuntasBezierPathToSKSpriteNode(bpAdjuntas: adjuntasbp)
        arrayOfMapSpriteNodes.append(adjuntasSKSpriteNode)
        
        let barcelonetabp:UIBezierPath! = TestClass().barcelonetaDrawBezierPath()
        let barcelonetaSKSpriteNode:SKSpriteNode = TestClass().barcelonetaBezierPathToSKSpriteNode(bpBarceloneta:barcelonetabp)
        arrayOfMapSpriteNodes.append(barcelonetaSKSpriteNode)
        
        let manatibp:UIBezierPath! = TestClass().manatiDrawBezierPath()
        let manatiSKSpriteNode:SKSpriteNode = TestClass().manatiBezierPathToSKSpriteNode(bpManati:manatibp)
        arrayOfMapSpriteNodes.append(manatiSKSpriteNode)
        
        let vegaBajabp:UIBezierPath! = TestClass().vegaBajaDrawBezierPath()
        let vegaBajaSKSpriteNode:SKSpriteNode = TestClass().vegaBajaBezierPathToSKSpriteNode(bpVegaBaja:vegaBajabp)
        arrayOfMapSpriteNodes.append(vegaBajaSKSpriteNode)
        
        let floridabp:UIBezierPath! = TestClass().floridaDrawBezierPath()
        let floridaSKSpriteNode:SKSpriteNode = TestClass().floridaBezierPathToSKSpriteNode(bpFlorida:floridabp)
        arrayOfMapSpriteNodes.append(floridaSKSpriteNode)
        
        let villalbabp:UIBezierPath! = TestClass().villalbaDrawBezierPath()
        let villalbaSKSpriteNode:SKSpriteNode = TestClass().villalbaBezierPathToSKSpriteNode(bpVillalba: villalbabp)
        arrayOfMapSpriteNodes.append(villalbaSKSpriteNode)
        
        let cialesbp:UIBezierPath! = TestClass().cialesDrawBezierPath()
        let cialesSKSpriteNode:SKSpriteNode = TestClass().cialesBezierPathToSKSpriteNode(bpCiales: cialesbp)
        arrayOfMapSpriteNodes.append(cialesSKSpriteNode)
        
        let orocovisbp:UIBezierPath! = TestClass().orocovisDrawBezierPath()
        let orocovisSKSpriteNode:SKSpriteNode = TestClass().orocovisBezierPathToSKSpriteNode(bpOrocovis: orocovisbp)
        arrayOfMapSpriteNodes.append(orocovisSKSpriteNode)
        
        let morovisbp:UIBezierPath! = TestClass().morovisDrawBezierPath()
        let morovisSKSpriteNode:SKSpriteNode = TestClass().morovisBezierPathToSKSpriteNode(bpMorovis: morovisbp)
        arrayOfMapSpriteNodes.append(morovisSKSpriteNode)
        
        let corozalbp:UIBezierPath! = TestClass().corozalDrawBezierPath()
        let corozalSKSpriteNode:SKSpriteNode = TestClass().corozalBezierPathToSKSpriteNode(bpCorozal: corozalbp)
        arrayOfMapSpriteNodes.append(corozalSKSpriteNode)
        
        let barranquitasbp:UIBezierPath! = TestClass().barranquitasDrawBezierPath()
        let barranquitasSKSpriteNode:SKSpriteNode = TestClass().barranquitasBezierPathToSKSpriteNode(bpBarranquitas: barranquitasbp)
        arrayOfMapSpriteNodes.append(barranquitasSKSpriteNode)
        
        let comeriobp:UIBezierPath! = TestClass().comerioDrawBezierPath()
        let comerioSKSpriteNode:SKSpriteNode = TestClass().comerioBezierPathToSKSpriteNode(bpComerio: comeriobp)
        arrayOfMapSpriteNodes.append(comerioSKSpriteNode)
        
        let coamobp:UIBezierPath! = TestClass().coamoDrawBezierPath()
        let coamoSKSpriteNode:SKSpriteNode = TestClass().coamoBezierPathToSKSpriteNode(bpCoamo: coamobp)
        arrayOfMapSpriteNodes.append(coamoSKSpriteNode)
        
        let naranjitobp:UIBezierPath! = TestClass().naranjitoDrawBezierPath()
        let naranjitoSKSpriteNode:SKSpriteNode = TestClass().naranjitoBezierPathToSKSpriteNode(bpNaranjito: naranjitobp)
        arrayOfMapSpriteNodes.append(naranjitoSKSpriteNode)
        
        let aibonitobp:UIBezierPath! = TestClass().aibonitoDrawBezierPath()
        let aibonitoSKSpriteNode:SKSpriteNode = TestClass().aibonitoBezierPathToSKSpriteNode(bpAibonito: aibonitobp)
        arrayOfMapSpriteNodes.append(aibonitoSKSpriteNode)
        
        let salinasbp:UIBezierPath! = TestClass().salinasDrawBezierPath()
        let salinasSKSpriteNode:SKSpriteNode = TestClass().salinasBezierPathToSKSpriteNode(bpSalinas: salinasbp)
        arrayOfMapSpriteNodes.append(salinasSKSpriteNode)
        
        let cayeybp:UIBezierPath! = TestClass().cayeyDrawBezierPath()
        let cayeySKSpriteNode:SKSpriteNode = TestClass().cayeyBezierPathToSKSpriteNode(bpCayey: cayeybp)
        arrayOfMapSpriteNodes.append(cayeySKSpriteNode)
        
        let cidrabp:UIBezierPath! = TestClass().cidraDrawBezierPath()
        let cidraSKSpriteNode:SKSpriteNode = TestClass().cidraBezierPathToSKSpriteNode(bpCidra: cidrabp)
        arrayOfMapSpriteNodes.append(cidraSKSpriteNode)
        
        let santaIsabelbp:UIBezierPath! = TestClass().santaIsabelDrawBezierPath()
        let santaIsabelSKSpriteNode:SKSpriteNode = TestClass().santaIsabelBezierPathToSKSpriteNode(bpSantaIsabel: santaIsabelbp)
        arrayOfMapSpriteNodes.append(santaIsabelSKSpriteNode)
        
        let vegaAltabp:UIBezierPath! = TestClass().vegaAltaDrawBezierPath()
        let vegaAltaSKSpriteNode:SKSpriteNode = TestClass().vegaAltaBezierPathToSKSpriteNode(bpVegaAlta: vegaAltabp)
        arrayOfMapSpriteNodes.append(vegaAltaSKSpriteNode)
        
        let doradobp:UIBezierPath! = TestClass().doradoDrawBezierPath()
        let doradoSKSpriteNode:SKSpriteNode = TestClass().doradoBezierPathToSKSpriteNode(bpDorado: doradobp)
        arrayOfMapSpriteNodes.append(doradoSKSpriteNode)
        
        let toaAltabp:UIBezierPath! = TestClass().toaAltaDrawBezierPath()
        let toaAltaSKSpriteNode:SKSpriteNode = TestClass().toaAltaBezierPathToSKSpriteNode(bpToaAlta: toaAltabp)
        arrayOfMapSpriteNodes.append(toaAltaSKSpriteNode)
        
        let toaBajabp:UIBezierPath! = TestClass().toaBajaDrawBezierPath()
        let toaBajaSKSpriteNode:SKSpriteNode = TestClass().toaBajaBezierPathToSKSpriteNode(bpToaBaja: toaBajabp)
        arrayOfMapSpriteNodes.append(toaBajaSKSpriteNode)
        
        let bayamonbp:UIBezierPath! = TestClass().bayamonDrawBezierPath()
        let bayamonSKSpriteNode:SKSpriteNode = TestClass().bayamonBezierPathToSKSpriteNode(bpBayamon: bayamonbp)
        arrayOfMapSpriteNodes.append(bayamonSKSpriteNode)
          
        let catanobp:UIBezierPath! = TestClass().catanoDrawBezierPath()
        let catanoSKSpriteNode:SKSpriteNode = TestClass().catanoBezierPathToSKSpriteNode(bpCatano: catanobp)
        arrayOfMapSpriteNodes.append(catanoSKSpriteNode)
        
        let guaynabobp:UIBezierPath! = TestClass().guaynaboDrawBezierPath()
        let guaynaboSKSpriteNode:SKSpriteNode = TestClass().guaynaboBezierPathToSKSpriteNode(bpGuaynabo:guaynabobp)
        arrayOfMapSpriteNodes.append(guaynaboSKSpriteNode)
        
        let sanJuanbp:UIBezierPath! = TestClass().sanJuanDrawBezierPath()
        let sanJuanSKSpriteNode:SKSpriteNode = TestClass().sanJuanBezierPathToSKSpriteNode(bpSanJuan: sanJuanbp)
        arrayOfMapSpriteNodes.append(sanJuanSKSpriteNode)
        
        let caguasbp:UIBezierPath! = TestClass().caguasDrawBezierPath()
        let caguasSKSpriteNode:SKSpriteNode = TestClass().caguasBezierPathToSKSpriteNode(bpCaguas: caguasbp)
        arrayOfMapSpriteNodes.append(caguasSKSpriteNode)
        
        let carolinabp:UIBezierPath! = TestClass().carolinaDrawBezierPath()
        let carolinaSKSpriteNode:SKSpriteNode = TestClass().carolinaBezierPathToSKSpriteNode(bpCarolina: carolinabp)
        arrayOfMapSpriteNodes.append(carolinaSKSpriteNode)
        
        let aguasBuenasbp:UIBezierPath! = TestClass().aguasBuenasDrawBezierPath()
        let aguasBuenasSKSpriteNode:SKSpriteNode = TestClass().aguasBuenasBezierPathToSKSpriteNode(bpAguasBuenas: aguasBuenasbp)
        arrayOfMapSpriteNodes.append(aguasBuenasSKSpriteNode)
        
        let trujilloAltobp:UIBezierPath! = TestClass().trujilloAltoDrawBezierPath()
        let trujilloAltoSKSpriteNode:SKSpriteNode = TestClass().trujilloAltoBezierPathToSKSpriteNode(bpTrujilloAlto: trujilloAltobp)
        arrayOfMapSpriteNodes.append(trujilloAltoSKSpriteNode)
        
        let loizabp:UIBezierPath! = TestClass().loizaDrawBezierPath()
        let loizaSKSpriteNode:SKSpriteNode = TestClass().loizaBezierPathToSKSpriteNode(bpLoiza: loizabp)
        arrayOfMapSpriteNodes.append(loizaSKSpriteNode)
        
        /*let loizaTwoSKSpriteNode:SKSpriteNode = TestClass().loizaTwoBezierPathToSKSpriteNode(bpLoizaTwo: loizaTwobp)
        containerNode.addChild(loizaTwoSKSpriteNode)*/
        
        let canovanasbp:UIBezierPath! = TestClass().canovanasDrawBezierPath()
        let canovanasSKSpriteNode:SKSpriteNode = TestClass().canovanasBezierPathToSKSpriteNode(bpCanovanas: canovanasbp)
        arrayOfMapSpriteNodes.append(canovanasSKSpriteNode)
        
        let rioGrandebp:UIBezierPath! = TestClass().rioGrandeDrawBezierPath()
        let rioGrandeSKSpriteNode:SKSpriteNode = TestClass().rioGrandeBezierPathToSKSpriteNode(bpRioGrande: rioGrandebp)
        arrayOfMapSpriteNodes.append(rioGrandeSKSpriteNode)
        
        let luquillobp:UIBezierPath! = TestClass().luquilloDrawBezierPath()
        let luquilloSKSpriteNode:SKSpriteNode = TestClass().luquilloBezierPathToSKSpriteNode(bpLuquillo: luquillobp)
        arrayOfMapSpriteNodes.append(luquilloSKSpriteNode)
        
        let fajardobp:UIBezierPath! = TestClass().fajardoDrawBezierPath()
        let fajardoSKSpriteNode:SKSpriteNode = TestClass().fajardoBezierPathToSKSpriteNode(bpFajardo: fajardobp)
        arrayOfMapSpriteNodes.append(fajardoSKSpriteNode)
        
        let ceibabp:UIBezierPath! = TestClass().ceibaDrawBezierPath()
        let ceibaSKSpriteNode:SKSpriteNode = TestClass().ceibaBezierPathToSKSpriteNode(bpCeiba: ceibabp)
        arrayOfMapSpriteNodes.append(ceibaSKSpriteNode)
        
        let gurabobp:UIBezierPath! = TestClass().guraboDrawBezierPath()
        let guraboSKSpriteNode:SKSpriteNode = TestClass().guraboBezierPathToSKSpriteNode(bpGurabo: gurabobp)
        arrayOfMapSpriteNodes.append(guraboSKSpriteNode)
        
        let juncosbp:UIBezierPath! = TestClass().juncosDrawBezierPath()
        let juncosSKSpriteNode:SKSpriteNode = TestClass().juncosBezierPathToSKSpriteNode(bpJuncos: juncosbp)
        arrayOfMapSpriteNodes.append(juncosSKSpriteNode)
        
        let sanLorenzobp:UIBezierPath! = TestClass().sanLorenzoDrawBezierPath()
        let sanLorenzoSKSpriteNode:SKSpriteNode = TestClass().sanLorenzoBezierPathToSKSpriteNode(bpSanLorenzo: sanLorenzobp)
        arrayOfMapSpriteNodes.append(sanLorenzoSKSpriteNode)
        
        let guayamabp:UIBezierPath! = TestClass().guayamaDrawBezierPath()
        let guayamaSKSpriteNode:SKSpriteNode = TestClass().guayamaBezierPathToSKSpriteNode(bpGuayama: guayamabp)
        arrayOfMapSpriteNodes.append(guayamaSKSpriteNode)
        
        let arroyobp:UIBezierPath! = TestClass().arroyoDrawBezierPath()
        let arroyoSKSpriteNode:SKSpriteNode = TestClass().arroyoBezierPathToSKSpriteNode(bpArroyo: arroyobp)
        arrayOfMapSpriteNodes.append(arroyoSKSpriteNode)
        
        let patillasbp:UIBezierPath! = TestClass().patillasDrawBezierPath()
        let patillasSKSpriteNode:SKSpriteNode = TestClass().patillasBezierPathToSKSpriteNode(bpPatillas: patillasbp)
        arrayOfMapSpriteNodes.append(patillasSKSpriteNode)
        
        let maunabobp:UIBezierPath! = TestClass().maunaboDrawBezierPath()
        let maunaboSKSpriteNode:SKSpriteNode = TestClass().maunaboBezierPathToSKSpriteNode(bpMaunabo: maunabobp)
        arrayOfMapSpriteNodes.append(maunaboSKSpriteNode)
        
        let yabucoabp:UIBezierPath! = TestClass().yabucoaDrawBezierPath()
        let yabucoaSKSpriteNode:SKSpriteNode = TestClass().yabucoaBezierPathToSKSpriteNode(bpYabucoa: yabucoabp)
        arrayOfMapSpriteNodes.append(yabucoaSKSpriteNode)
        
        let lasPiedrasbp:UIBezierPath! = TestClass().lasPiedrasDrawBezierPath()
        let lasPiedrasSKSpriteNode:SKSpriteNode = TestClass().lasPiedrasBezierPathToSKSpriteNode(bpLasPiedras: lasPiedrasbp)
        arrayOfMapSpriteNodes.append(lasPiedrasSKSpriteNode)
        
        let humacaobp:UIBezierPath! = TestClass().humacaoDrawBezierPath()
        let humacaoSKSpriteNode:SKSpriteNode = TestClass().humacaoBezierPathToSKSpriteNode(bpHumacao: humacaobp)
        arrayOfMapSpriteNodes.append(humacaoSKSpriteNode)
        
        let naguabobp:UIBezierPath! = TestClass().naguaboDrawBezierPath()
        let naguaboSKSpriteNode:SKSpriteNode = TestClass().naguaboBezierPathToSKSpriteNode(bpNaguabo: naguabobp)
        arrayOfMapSpriteNodes.append(naguaboSKSpriteNode)
        
        let viequesbp:UIBezierPath! = TestClass().viequesDrawBezierPath()
        let viequesSKSpriteNode:SKSpriteNode = TestClass().viequesBezierPathToSKSpriteNode(bpVieques: viequesbp)
        arrayOfMapSpriteNodes.append(viequesSKSpriteNode)
        
        let culebrabp:UIBezierPath! = TestClass().culebraDrawBezierPath()
        let culebraSKSpriteNode:SKSpriteNode = TestClass().culebraBezierPathToSKSpriteNode(bpCulebra: culebrabp)
        arrayOfMapSpriteNodes.append(culebraSKSpriteNode)
        
        for node in arrayOfMapSpriteNodes{
            
            let locationNameLabel = SKLabelNode()
            let firstLineLabel = SKLabelNode()//Primer label para municipios que utilizan mas de un label para acomodar su nombre
            let secondLineLabel = SKLabelNode()
    
            node.color = UIColor.init(red: 0.5686, green: 1, blue: 0.8745, alpha: 1.0)// Aplica color al municipio identificado correctamente. Color description: minty green(custom color no hex # available)
            node.colorBlendFactor = 1.0
            node.physicsBody = nil
            
            locationNameLabel.text = node.name
            locationNameLabel.fontName = "Helvetica"
            locationNameLabel.fontColor = UIColor.black
            locationNameLabel.xScale = -1.0
            locationNameLabel.zRotation = 9.44
            locationNameLabel.fontSize = 5.4
            firstLineLabel.fontName = "Helvetica"
            secondLineLabel.fontName = "Helvetica"
            firstLineLabel.fontSize = 5.4
            secondLineLabel.fontSize = 5.4
            firstLineLabel.fontColor = UIColor.black
            secondLineLabel.fontColor = UIColor.black
            firstLineLabel.xScale = -1.0
            secondLineLabel.xScale = -1.0
            firstLineLabel.zRotation = 9.44
            secondLineLabel.zRotation = 9.44
            
            switch node.name {
                    
                case "Adjuntas", "Aguada", "Añasco", "Lajas", "Maricao", "Las Marías", "Moca", "Yauco", "Guánica", "Lares", "Arecibo", "Utuado", "Ponce", "Jayuya",
                     "Manatí", "Coamo", "Orocovis", "Villalba", "Comerío", "Toa Alta", "Caguas", "Cidra", "Salinas", "Culebra", "Naguabo", "Yabucoa" :
                    locationNameLabel.horizontalAlignmentMode = .center
                    locationNameLabel.verticalAlignmentMode = .center
                    
                case "Camuy", "Aguadilla", "Juncos":
                    locationNameLabel.fontSize = 5.0
                    locationNameLabel.position = CGPoint(x: -2.0, y: 0.0)

                case "Cayey":
                    locationNameLabel.position = CGPoint(x: -6.5, y: 3.0)

                    
                case "Isabela", "Corozal", "Morovis", "Aibonito", "Gurabo", "Luquillo":
                    locationNameLabel.fontSize = 5.0
                    locationNameLabel.position = CGPoint(x: 0.5, y: 0.5)
                    //locationNameLabel.zPosition = 1 */

                    
                case "Hormigueros", "Maunabo" :
                    locationNameLabel.fontSize = 4.3
                    locationNameLabel.zRotation = 10.0
                    locationNameLabel.position = CGPoint(x: -0.5, y: 2.5)

                    
                case "Rincón", "Canóvanas", "Arroyo", "Patillas" :
                    locationNameLabel.fontSize = 5.0
                    locationNameLabel.zRotation = 10.5
                    locationNameLabel.position = CGPoint(x: -4.5, y: 1.0)

                    
                case "Mayagüez":
                    locationNameLabel.fontSize = 5.4
                    locationNameLabel.position = CGPoint(x: 42.0, y: 21.5)

                    
                case "Quebradillas", "Hatillo", "Peñuelas", "Carolina":
                    locationNameLabel.fontSize = 5.5
                    locationNameLabel.zRotation = 10.8
                    locationNameLabel.position = CGPoint(x: 1.5, y: -1.2)

                    
                case "Guayanilla" :
                    locationNameLabel.fontSize = 5.5
                    locationNameLabel.position = CGPoint(x: 2.5, y:12.5)
                    locationNameLabel.zRotation = 9.0

                    
                case  "Barceloneta", "Bayamón", "Dorado", "Guaynabo":
                    locationNameLabel.fontSize = 5.1
                    locationNameLabel.zRotation = 1.9
                    locationNameLabel.position = CGPoint(x: 0.5, y: -1.2)

                    
                case "Florida" :
                    locationNameLabel.fontSize = 4.5
                    locationNameLabel.position = CGPoint(x: 0.5, y: 0.5)

                    
                case  "Ciales", "Ceiba" :
                    locationNameLabel.position = CGPoint(x: 4.5, y: 0.5)

                    
                    
                case "Naranjito", "Barranquitas", "Las Piedras", "Humacao" :
                    locationNameLabel.fontSize = 4.9
                    locationNameLabel.zRotation = 2.3
                    locationNameLabel.position = CGPoint(x: 3.5, y: 1.0)

                    
                case "Cataño":
                    locationNameLabel.fontSize = 4.0
                    locationNameLabel.position = CGPoint(x: 0.5, y: 1.5)

                    
                case "Loíza" :
                    locationNameLabel.fontSize = 7.0
                    locationNameLabel.zRotation = 6.18
                    locationNameLabel.xScale = 1.0
                    locationNameLabel.position = CGPoint(x: 10.0, y: 0.5)

                    
                case "Fajardo":
                    locationNameLabel.position = CGPoint(x: -5.7, y: 8.5)

                    
                case "Guayama":
                    locationNameLabel.position = CGPoint(x: 0.5, y: 6.5)

                    
                case "Vieques":
                    locationNameLabel.position = CGPoint(x: -40.5, y: -8.5)

                       
                    
                case "Cabo Rojo", "San Germán", "San Sebastián", "Juana Díaz", "Vega Baja", "San Juan", "Santa Isabel", "Aguas Buenas", "Rio Grande" :
                    firstLineLabel.text = splitTextIntoFields(theText:locationNameLabel)
                    secondLineLabel.text = splitTextIntoFieldsTwo(theText:locationNameLabel)
                    secondLineLabel.verticalAlignmentMode = .top

                    
                case "Sabana Grande" :
                    firstLineLabel.text = splitTextIntoFields(theText:locationNameLabel)
                    secondLineLabel.text = splitTextIntoFieldsTwo(theText:locationNameLabel)
                    firstLineLabel.fontSize = 5.0
                    secondLineLabel.fontSize = 5.0
                    firstLineLabel.position = CGPoint(x:-4.0, y:5.5)
                    secondLineLabel.position = CGPoint(x:-3.5, y:13.0)

                    
                case "Vega Alta":
                    firstLineLabel.text = splitTextIntoFields(theText:locationNameLabel)
                    secondLineLabel.text = splitTextIntoFieldsTwo(theText:locationNameLabel)
                    firstLineLabel.position = CGPoint(x:2, y:0.5)
                    secondLineLabel.verticalAlignmentMode = .top

                    
                case "Toa Baja":
                    firstLineLabel.text = splitTextIntoFields(theText:locationNameLabel)
                    secondLineLabel.text = splitTextIntoFieldsTwo(theText:locationNameLabel)
                    firstLineLabel.horizontalAlignmentMode = .right
                    secondLineLabel.verticalAlignmentMode = .top
                    secondLineLabel.horizontalAlignmentMode = .right

                    
                case "Trujillo Alto" :
                    firstLineLabel.text = splitTextIntoFields(theText:locationNameLabel)
                    secondLineLabel.text = splitTextIntoFieldsTwo(theText:locationNameLabel)
                    firstLineLabel.fontSize = 5.5
                    secondLineLabel.fontSize = 5.5
                    firstLineLabel.position = CGPoint(x:-4.0, y:0.5)
                    secondLineLabel.position = CGPoint(x:-3.5, y:6.5)

                    
                case "San Lorenzo"  :
                    firstLineLabel.text = splitTextIntoFields(theText:locationNameLabel)
                    secondLineLabel.text = splitTextIntoFieldsTwo(theText:locationNameLabel)
                    secondLineLabel.position = CGPoint(x:4.5, y:6.0)

                
                    default:
                        break
            }
            
        if(useLine2 == true){
             print("ENtrar0 aquA")
            node.addChild(firstLineLabel)//anade el label al objeto skpritenode(parte del mapa politico que corresponde a un municipio)
            node.addChild(secondLineLabel)
            useLine2 = false
                
        }
        //La ejecucion entraria en este bloque para municipios cuyo nombre solo requieren un solo label
        else{
            print("ENtrare aqui")
            node.addChild(locationNameLabel)//anade el label al objeto skpritenode(parte del mapa politico que corresponde a un municipio)

        }
        
        
        containerNode.addChild(node)
      }
        self.addChild(containerNode)
        self.addChild(endGameRectangle)
    }
    
     override public func update(_ currentTime: TimeInterval) {
        
        if playagain == true{
            if  StartScene.completedGame == true{
                self.removeAllChildren()
                self.removeAllActions()
                let startScene = StartScene(size: self.size)//definitio
                //let transition = SKTransition.fade(withDuration: 1.0)
                self.view?.presentScene(startScene/*, transition: transition*/)/*present scene and execut transitions*/
                StartScene.completedGame = false
                playagain = false
            }
            else if RandomGame.completedGame == true{
                self.removeAllChildren()
                self.removeAllActions()
                let randomGame = RandomGame(size: self.size)//definitio
                //let transition = SKTransition.fade(withDuration: 1.0)
                self.view?.presentScene(randomGame/*, transition: transition*/)/*present scene and execut transitions*/
                playagain = false
                RandomGame.completedGame = false
            }
            else if PracticeAlphabeticGame.completedGame == true{
                self.removeAllChildren()
                self.removeAllActions()
                let practiceAlphabeticGame = PracticeAlphabeticGame(size: self.size)//definitio
                //let transition = SKTransition.fade(withDuration: 1.0)
                self.view?.presentScene(practiceAlphabeticGame/*, transition: transition*/)/*present scene and execut transitions*/
                playagain = false
                PracticeAlphabeticGame.completedGame = false
            }
            else if PracticeRandomGame.completedGame == true{
                self.removeAllChildren()
                self.removeAllActions()
                let practiceRandomGame = PracticeRandomGame(size: self.size)//definitio
                //let transition = SKTransition.fade(withDuration: 1.0)
                self.view?.presentScene(practiceRandomGame/*, transition: transition*/)/*present scene and execut transitions*/
                playagain = false
                PracticeRandomGame.completedGame = false
            }
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
            
           self.removeAllActions()
           self.removeFromParent()

           let startMenu = StartMenu(size: self.size)//definitio
           //let transition = SKTransition.fade(withDuration: 1.0)
           self.view?.presentScene(startMenu/*, transition: transition*/)/*present scene and execut transitions*/
           exited = false
       }
    }
    
     override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch = touches.first!//Guarda toque de pantalla
        let touchLocation = touch.location(in: self)//Define el espacio en donde van a tomar efecto los toques de pantalla en este caso la vista StartScene
        touchedNode = self.physicsWorld.body(at:touchLocation)//Se define que el toque de pantalla tomara efecto cuando el mismo entre en contacto con un SKphysics body, dentro de la vista StartScene
        
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
                //self.removeFromParent()
                //self.removeAllActions()
                //let startScene = StartScene(size: self.size)
                //self.view?.presentScene(startScene)
            }
            
            else if(endGameRectangleButtonThree.name == touchedNode?.node?.name){
                //let startMenu = StartMenu(size: self.size)
                //self.view?.presentScene(startMenu)
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
    
    func endgameRectangleButton()-> SKSpriteNode {
           /*La funcion comienza proveyendo los valores de las propiedades que comparten los tres botones**/
           let buttonNode:SKSpriteNode = buttonNodeDefaults()
           buttonNode.name = "buttonMap"
           /*buttonNode.color = UIColor.init(red: 1, green: 0.1686, blue: 0.1686, alpha: 1.0)//color is same in all three buttons
           buttonNode.size = CGSize(width:endGameRectangle.size.width/5 + 20, height:endGameRectangle.size.height/4)
           buttonNode.zPosition = 3*/
          

           buttonNode.position = CGPoint(x:-115.5, y:-78.4)
           buttonNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:buttonNode.size.width, height:buttonNode.size.height), center: CGPoint(x:0.5, y: 0.5))
           buttonNode.physicsBody?.isDynamic = false
           
           
           let buttonOneLabelOne = SKLabelNode()
           buttonOneLabelOne.fontName = "AvenirNext-Bold"
           buttonOneLabelOne.fontSize = 16
           buttonOneLabelOne.text = "Mapa"
           //buttonOneLabelOne.position = CGPoint(x:0, y:0)
           //buttonOneLabelOne.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
           buttonNode.addChild(buttonOneLabelOne)
           
           let buttonOneLabelTwo = SKLabelNode()
           buttonOneLabelTwo.fontName = "AvenirNext-Bold"
           buttonOneLabelTwo.fontSize = 13
           buttonOneLabelTwo.text = "(Map)"
           buttonOneLabelTwo.position = CGPoint(x:0, y:-13)
           //buttonOneLabelTwo.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
           buttonNode.addChild(buttonOneLabelTwo)

           return buttonNode

    }
    
    func buttonNodeDefaults()->SKSpriteNode{
        let buttonNode = SKSpriteNode()
        buttonNode.color = UIColor.init(red: 1, green: 0.1686, blue: 0.1686, alpha: 1.0)//color is same in all three buttons
        buttonNode.size = CGSize(width:endGameRectangle.size.width/5 + 20, height:endGameRectangle.size.height/4)
        buttonNode.zPosition = 3
        
        return buttonNode
    }
    
    func endgameRectangleButtoTwo()-> SKSpriteNode {
        /*La funcion comienza proveyendo los valores de las propiedades que comparten los tres botones**/
        let buttonNode:SKSpriteNode = buttonNodeDefaults()
        buttonNode.name = "buttonJugarOtraVez"
       /* buttonNode.color = UIColor.init(red: 1, green: 0.1686, blue: 0.1686, alpha: 1.0)//color is same in all three buttons
        buttonNode.size = CGSize(width:endGameRectangle.size.width/5 + 20, height:endGameRectangle.size.height/4)
        buttonNode.zPosition = 3*/
       
        buttonNode.size = CGSize(width:endGameRectangle.size.width/3, height:endGameRectangle.size.height/4)//Size is overriden pq es de los tres botones el unico que su tamano es diferente.
        buttonNode.position = CGPoint(x:0.5, y: -78.4)
        buttonNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:buttonNode.size.width, height:buttonNode.size.height), center: CGPoint(x:0.5, y: 0.5))
        buttonNode.physicsBody?.isDynamic = false
        
        let buttonTwoLabelOne = SKLabelNode()
        buttonTwoLabelOne.fontName = "AvenirNext-Bold"
        buttonTwoLabelOne.fontSize = 16
        buttonTwoLabelOne.text = "Jugar Otra Vez"
        //buttonOneLabelOne.position = CGPoint(x:0, y:0)
        //buttonTwoLabelOne.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
        buttonNode.addChild(buttonTwoLabelOne)
        
        let buttonTwoLabelTwo = SKLabelNode()
        buttonTwoLabelTwo.fontName = "AvenirNext-Bold"
        buttonTwoLabelTwo.fontSize = 13
        buttonTwoLabelTwo.text = "(Play Again)"
        buttonTwoLabelTwo.position = CGPoint(x:0, y:-13)
        //buttonTwoLabelTwo.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
        buttonNode.addChild(buttonTwoLabelTwo)
    

        return buttonNode

    }
    
    func endgameRectangleButtoThree()-> SKSpriteNode {
        /*La funcion comienza proveyendo los valores de las propiedades que comparten los tres botones**/
        let buttonNode:SKSpriteNode = buttonNodeDefaults()
        buttonNode.name = "buttonSalir"
       /* buttonNode.color = UIColor.init(red: 1, green: 0.1686, blue: 0.1686, alpha: 1.0)//color is same in all three buttons
        buttonNode.size = CGSize(width:endGameRectangle.size.width/5 + 20, height:endGameRectangle.size.height/4)
        buttonNode.zPosition = 3*/
       

        //buttonNode.size = CGSize(width:endGameRectangle.size.width/5 + 20, height:endGameRectangle.size.height/4)
        buttonNode.position = CGPoint(x:115.5, y:-78.4)
        buttonNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:buttonNode.size.width, height:buttonNode.size.height), center: CGPoint(x:0.5, y: 0.5))
        buttonNode.physicsBody?.isDynamic = false

        let buttonThreeLabelOne = SKLabelNode()
        buttonThreeLabelOne.fontName = "AvenirNext-Bold"
        buttonThreeLabelOne.fontSize = 16
        buttonThreeLabelOne.text = "Salir"
        //buttonOneLabelOne.position = CGPoint(x:0, y:0)
        //buttonThreeLabelOne.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
        buttonNode.addChild(buttonThreeLabelOne)
        
        let buttonThreeLabelTwo = SKLabelNode()
        buttonThreeLabelTwo.fontName = "AvenirNext-Bold"
        buttonThreeLabelTwo.fontSize = 13
        buttonThreeLabelTwo.text = "(Exit)"
        buttonThreeLabelTwo.position = CGPoint(x:0, y:-13)
        //buttonThreeLabelTwo.fontColor = UIColor.init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)
        buttonNode.addChild(buttonThreeLabelTwo)
        
    

        return buttonNode

    }
    
    

    
    func endgameRectangle() -> SKSpriteNode {
        let endGameRectangleNode = SKSpriteNode()
        endGameRectangleNode.color = UIColor.init(red: 0.00, green: 0.00, blue: 0.00, alpha: 1.00)//color hex #89d7ed
        endGameRectangleNode.size = CGSize(width:350, height:250)
        endGameRectangleNode.position = CGPoint(x: self.size.width/2 - 33, y: self.size.height/2 + 16)
        endGameRectangleNode.zPosition = 2
        
        if StartScene.completedGame == true || RandomGame.completedGame == true{
            /*Abajo se otorga la propiedad de nombre a los labels, propiedad que se utiliza en el proximo bloque , El unico propsito de esto es aislar cada label aprovechando cada iteracion del for loop para asignarles a cada uno propiedades en una misma y unica ejecucion de la funcion */
            labelOne.name = "labelOne"; labelTwo.name = "labelTwo"; labelThree.name = "labelThree"; labelFour.name = "labelFour"; labelFive.name = "labelFive"; labelSix.name = "labelSix"
            
            let arrayOflabelsChallenge = [labelOne, labelTwo, labelThree, labelFour, labelFive, labelSix]/*Poner los elementos a iterar en un for loop por medio de un array me permite reusar codigo, en vez de escribir un bloque por label donde por ejempl
              propiedades como fontName,fontSize y fontColor se escribirian 6 veces*/
            
            for label in arrayOflabelsChallenge {
                /*Ojo en el primer bloque estan las propiedades que quiero afecte a todos mis objetos o que son default por llamarlos de algua forma*/
                label.fontName = "AvenirNext-Bold"
                label.fontSize = 15
                label.fontColor = UIColor.white/*init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)*/
                //label.zPosition = 3
                
                if label.name == "labelOne"{
                    print("Voy subiendo")
                    //label.text = label.name
                    label.position = CGPoint(x:-0, y:60)

                }
                if label.name == "labelTwo"{
                    //label.text = label.name
                    label.position = CGPoint(x:-0, y:40)

                }
                if label.name == "labelThree"{
                    //label.text = label.name
                    label.position = CGPoint(x:-0, y:10)
                    
                }
                if label.name == "labelFour"{
                    //label.text = label.name
                    label.position = CGPoint(x:-5, y:-10)
                
                }
                
                if label.name == "labelFive"{
                    //label.text = label.name
                    label.position = CGPoint(x:65, y:50)
                    //endGameRectangleNode.addChild(label)
                }
                if label.name == "labelSix"{
                    //label.text = label.name
                    label.position = CGPoint(x:65, y:0)
                    //endGameRectangleNode.addChild(label)
                }
                
                endGameRectangleNode.addChild(label)//se anaden los labels como hijos de endGameRectangle
           }
        }
        
        else if PracticeAlphabeticGame.completedGame == true || PracticeRandomGame.completedGame {
            labelSeven.name = "labelSeven"; labelEight.name = "labelEight"; labelNine.name = "labelNine"; labelTen.name = "labelTen"
            
            let arrayOflabelsPractice = [labelSeven, labelEight, labelNine, labelTen]
            
            for label in arrayOflabelsPractice {
                /*Ojo en el primer bloque estan las propiedades que quiero afecte a todos mis objetos o que son default por llamarlos de algua forma*/
                label.fontName = "AvenirNext-Bold"
                //label.fontSize = 15
                label.fontColor = UIColor.white/*init(red: 0.88, green: 0.90, blue: 1.00, alpha: 1.00)*/
                //label.zPosition = 3

                if label.name == "labelSeven"{
                //print("Voy subiendo")
                label.fontSize = 15
                label.text = "Tu Tiempo (Your Time):"
                label.position = CGPoint(x:0, y:90)

                }
               //"\(UserDefaults.standard.integer(forKey: "minutes"))"
                
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
                label.numberOfLines = 2
                label.preferredMaxLayoutWidth = 220
                label.text = "Inténtalo en Modo de Reto para que tu mejor \n\t\ttiempo sea grabado"
                label.position = CGPoint(x:0, y:5)

                }
                if label.name == "labelTen"{
                label.fontSize = 10
                label.numberOfLines = 2
                label.preferredMaxLayoutWidth = 220
                label.text = "Try it in Challenge Mode so that your best \n\t\ttime can be recorded"
                label.position = CGPoint(x:0, y:-40)

                }
             
                endGameRectangleNode.addChild(label)//se anaden los labels como hijos de endGameRectangle
            }
            
            
        }
        
        return endGameRectangleNode
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
    
    func secondsAndMinutesBestTimesAssesmentAndRecordStatusAndTimesRenderingAlphabetic(second:Int, minute:Int){
         /*Este primer bloque if va a ejecutar siempre que un usuario instala el juego y juega por primera vez o si se borra la data para el juego en el telefono, tambien ejecuta cuando el usuario obtiene una mejor marca de tiempo que quedara registrada en memoria persistente*/
         if  UserDefaults.standard.integer(forKey: "minutesAlphabetic") == 0 && UserDefaults.standard.integer(forKey: "secondsAlphabetic") == 0 || minute < UserDefaults.standard.integer(forKey: "minutesAlphabetic") || minute == UserDefaults.standard.integer(forKey: "minutesAlphabetic") && StartScene.secondsGameOver < UserDefaults.standard.integer(forKey: "secondsAlphabetic") {
             /*Ojo el siguiente bloque es el unico donde se va a ejecutar el alamacenamiento en memoria persistente**/
             UserDefaults.standard.set(minute, forKey:"minutesAlphabetic")
             UserDefaults.standard.set(second, forKey:"secondsAlphabetic")
             
             labelOne.text = "¡NUEVO RECORD!"
             labelTwo.text = "(NEW RECORD!)"
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
    
    func setResultadosButton(buttonResultadosSKSpriteNode:SKSpriteNode)->SKSpriteNode{
        let label = setLabelDefaults()
        label.fontName = "AvenirNext-Bold"
        label.text = "Resultados (Results)"
        label.position = CGPoint(x:0.5, y:-5.5)
        buttonResultadosSKSpriteNode.addChild(label)
        buttonResultadosSKSpriteNode.position = CGPoint(x: self.size.width/2, y: self.size.height/2 * 0.475)
        buttonResultadosSKSpriteNode.size = label.frame.size
        buttonResultadosSKSpriteNode.name = "resultadosButton"
        buttonResultadosSKSpriteNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:buttonResultadosSKSpriteNode.size.width, height:buttonResultadosSKSpriteNode.size.height), center: CGPoint(x:0.5, y: 0.5))
        buttonResultadosSKSpriteNode.physicsBody?.isDynamic = false
        
        return buttonResultadosSKSpriteNode
    }
    func setLabelDefaults()-> SKLabelNode{
        let label = SKLabelNode()
        label.fontName = "AvenirNext-Bold"
        label.fontSize = 14
        label.position = CGPoint(x:0.5,y:-5.5)
        //.zPosition = 1
        return label
    }

}
