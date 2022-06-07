//
//  PracticeAlphabeticGame.swift
//  test_grounds
//
//  Created by javier pizarro on 5/31/22.
//  Copyright © 2022 javierpizarro. All rights reserved.
//

import Foundation
import SpriteKit
import UIKit

class PracticeAlphabeticGame: SKScene{
    var goldBackgroundSKSpriteNode = SKSpriteNode()
    var municipiosNameBackground = SKSpriteNode()
    var municipioNameLabel = SKLabelNode()
    var skipButton = SKSpriteNode()//la declare universalmente temporeramente
    var exitRedButton = SKSpriteNode()
    var labelScores = SKLabelNode()
    var labelTimer = SKLabelNode()//se usa en mas de una funcion
    var timerBackground = SKSpriteNode()//se usa en mas de una funcion
    var renderTime: TimeInterval = 0.0//esta solo se usa en la funcion del reloj
    let changeTime: TimeInterval = 1//esta solo se usa en la funcion del reloj
    var seconds: Int = 0//esta solo se usa en la funcion del reloj
    var minutes: Int = 0//esta solo se usa en la funcion del reloj
    var fail: Bool!
    var pressSKipButton:Bool = false
    var arrayOfMapSpriteNodes = [SKSpriteNode()]
    var twoLineText: String = ""//se usa solo en las dos funciones splitTextIntoFields puedo declararla en ambas funciones de manera local
    var useLine2:Bool = false//se usa en mas de una funcion
    var containerNode = SKNode()
    var touchedNode: SKPhysicsBody!
    let labelOne = SKLabelNode(); let labelTwo = SKLabelNode(); let labelThree = SKLabelNode(); let labelFour = SKLabelNode();  let labelFive = SKLabelNode();  let labelSix = SKLabelNode()
    
    var currentIndex: Int = 0 //se puede declarar en touchesBegan
    var municipios_names_array = ["Adjuntas", "Aguada", "Aguadilla", "Aguas Buenas", "Aibonito", "Arecibo", "Arroyo", "Añasco", "Barceloneta", "Barranquitas", "Bayamón", "Cabo Rojo", "Caguas", "Camuy", "Canóvanas", "Carolina", "Cataño", "Cayey", "Ceiba", "Ciales", "Cidra", "Coamo", "Comerío", "Corozal", "Culebra", "Dorado", "Fajardo", "Florida", "Guayama", "Guayanilla", "Guaynabo","Gurabo", "Guánica", "Hatillo", "Hormigueros", "Humacao", "Isabela", "Jayuya", "Juana Díaz", "Juncos", "Lajas", "Lares", "Las Marías", "Las Piedras", "Loíza", "Luquillo", "Manatí", "Maricao", "Maunabo", "Mayagüez", "Moca", "Morovis", "Naguabo", "Naranjito", "Orocovis", "Patillas", "Peñuelas", "Ponce", "Quebradillas", "Rincón", "Rio Grande", "Sabana Grande", "Salinas", "San Germán", "San Juan", "San Lorenzo", "San Sebastián", "Santa Isabel", "Toa Alta", "Toa Baja", "Trujillo Alto", "Utuado", "Vega Alta", "Vega Baja", "Vieques", "Villalba", "Yabucoa", "Yauco"]

    static var completedGame = false//se usa en mas de una funcion
    var scoreCount:Int = 0
    let totalScoreCount:String = "/78"
    var skipButtonPressed = false
    static var secondsGameOver:Int = 0
    static var minutesGameOver:Int = 0
    
    override func didMove(to view: SKView) {
        
        containerNode = StartScene().nodesContainer()
        self.backgroundColor = UIColor.init(red: 0.5373, green: 0.8431, blue: 0.9294, alpha: 1.0)
        //let backgroundSKSpriteNode: SKSpriteNode = prBackground()
        goldBackgroundSKSpriteNode = StartScene().goldenBackground()
        //let coverDesecheoIslandSKSpriteNode: SKSpriteNode = desecheoIslandCover()//As desecheo island is not mean to be rendered this node hides it from view.
        //containerNode.addChild(coverDesecheoIslandSKSpriteNode)
        
        skipButton = StartScene().skipBlueButton()
        
        labelScores = StartScene().labelForScores(ScoresLabel:labelScores)
        
        labelTimer = StartScene().labelForTimer(TimerLabel: labelTimer)
        
        timerBackground = StartScene().timerLabelBackground()
        
        municipioNameLabel = labelForMunicipioNames(NameMunicipioLabel: municipioNameLabel)
        
        municipiosNameBackground = labelMunicipiosNameBackground()
        
        //endGameRectangle = endgameRectangle()
        
        exitRedButton = StartScene().redButton()
        
        
        let coverDesecheoIslandSKSpriteNode: SKSpriteNode = StartScene().desecheoIslandCover()//As desecheo island is not mean to be rendered this node hides it from view.
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
    
            //node.color = UIColor.init(red: 0.5686, green: 1, blue: 0.8745, alpha: 1.0)// Aplica color al municipio identificado correctamente. Color description: minty green(custom color no hex # available)
            //node.colorBlendFactor = 1.0
            //node.physicsBody = nil
            
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
                 //print("ENtrar0 aquA")
                node.addChild(firstLineLabel)//anade el label al objeto skpritenode(parte del mapa politico que corresponde a un municipio)
                node.addChild(secondLineLabel)
                useLine2 = false
                    
            }
            //La ejecucion entraria en este bloque para municipios cuyo nombre solo requieren un solo label
            else{
                //print("ENtrare aqui")
                node.addChild(locationNameLabel)//anade el label al objeto skpritenode(parte del mapa politico que corresponde a un municipio)

            }
            
            
            containerNode.addChild(node)
          }
            goldBackgroundSKSpriteNode.addChild(labelScores)
            municipiosNameBackground.addChild(municipioNameLabel)//ojo puse el background como padre del label para facilitar el posicionamiento de ambos con respecto a goldBackgroundSKSpriteNode
            goldBackgroundSKSpriteNode.addChild(municipiosNameBackground)
            goldBackgroundSKSpriteNode.addChild(skipButton)
            goldBackgroundSKSpriteNode.addChild(exitRedButton)
            
            //self.addChild(backgroundSKSpriteNode)
            self.addChild(goldBackgroundSKSpriteNode)
            self.addChild(timerBackground)
            self.addChild(labelTimer)
            //self.addChild(labelScores)
            
            //self.addChild(municipioNameLabel)
            //self.addChild(skipButton)
            self.addChild(containerNode)
            //self.addChild(endGameRectangle)
            

        }
    
        override public func update(_ currentTime: TimeInterval) {/*Esta funcion ejecuta cada segundo para la funcionalidad del reloj. Los print statements son para uso del programador(comentar/descomentar todos los print statements a la misma vez, para entender mejor como funciona esta funcion)*/

            //skipButtonPenalty = 15
            //penalty = 3//numero de segundos que se anaden a los segundos
                
            if PracticeAlphabeticGame.completedGame == false{//Esta linea se utiliza para detener el reloj una vez completado el juego
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
                            let penalty = 3
                            print("inside")
                            seconds = seconds + penalty
                            //El if statement abajo substituye(0 resume) los proximos if statements comentados,si los segundos al sumarle el penalty sobrepasan 59, dentro del if se convierte a la cantidad de segundos correspondientes osea 60 a 0, 61 a 1 etc....
                            
                            if seconds >= 60{
                                seconds = seconds - 60//me percate que restandole 60 a los segundos me da la cantidad correspondiente entendiendo que un nuevo segundero a reiniciado.
                                minutes += 1//se sobre entiendo que una vez los segundos(segundero)sobrepasa los 59 segundos se suma un mimnuto
                            }
                        }
                        
                        if (pressSKipButton == true){
                            let skipButtonPenalty = 15
                            print("quince segundos mas")
                            seconds = seconds + skipButtonPenalty
                            
                            //El if statement abajo substituye(0 resume) los proximos if statements comentados,si los segundos al sumarle el penalty sobrepasan 59, dentro del if se convierte a la cantidad de segundos correspondientes osea 60 a 0, 61 a 1 etc....
                            if seconds >= 60{
                                seconds = seconds - 60//me percate que restandole 60 a los segundos me da la cantidad correspondiente entendiendo que un nuevo segundero a reiniciado.
                                minutes += 1//se sobre entiendo que una vez los segundos(segundero)sobrepasa los 59 segundos se suma un mimnuto
                            }
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
                        
                            if minutes == 10{// ajusts la apariencia de el label/background para cuando los minutos usan dos lugares que ocurre de los 10 minutos en adelante obviamente.
                                timerBackground.size = labelTimer.frame.size//size para el background del timer para acomodar 00:00
                            }
                        
                            if fail == true{
                                fail = false
                            }
                            if pressSKipButton == true{
                                pressSKipButton = false
                            }
                        }
                      
                        else{
                            labelTimer.text = "\(secondsText)"
                            //timerBackground.size = labelTimer.frame.size//As this is declared on the else if("else if renderTime == 0.0{") below which execute first,  statement commented for duplicity
                        
                            if fail == true{
                                fail = false
                            }
                        
                            if pressSKipButton == true{
                                pressSKipButton = false
                            }
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
                        //UserDefaults.standard.removeObject(forKey: "seconds")/*OJO COMO ESTE BLOQUE EJECUTA EN EL SEGUNDO 0 Y NO VUELVE A EJECUTAR COLOQUE AQUI EL RESET DE LA MEMORIA PERSISTENTE DONDE ALMACENO LOS DATOS UTILIZADOS PARA DETERMINAR SI SE LOGRO UN NUEVO RECORD DE TIEMPO*/
                        //UserDefaults.standard.removeObject(forKey: "minutes")//OJO COMO ESTE BLOQUE EJECUTA EN EL SEGUNDO 0 Y NO VUELVE A EJECUTAR COLOQUE AQUI EL RESET DE LA MEMORIA PERSISTENTE DONDE ALMACENO LOS DATOS UTILIZADOS PARA DETERMINAR SI SE LOGRO UN NUEVO RECORD DE TIEMPO
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
            //StartScene.secondsGameOver = seconds
            //StartScene.minutesGameOver = minutes
            /*Aqui ocurre el paso a la escena de Game Over la razon por la que se encuentra aqui es pq cuando lo ejecutaba en Touchesbegan la transicion le quitaba "espacio" a la funcion
             Touches Began y para que esta pudiera tener su "espacio" y termine de ejecutar su metodo, se coloco aqui dado que esta funcion ejecuta cada segundo pero solo llega la ejecucion aqui si el juego ya se completo luego de que el reloj se detuviera.*/
            else{
                PracticeAlphabeticGame.secondsGameOver = seconds
                PracticeAlphabeticGame.minutesGameOver = minutes
                let gameOverScene = GameOverScene(size: self.size)
                //let transition = SKTransition.fade(withDuration: 0.9)//withDuration: 1.5)
                self.view?.presentScene(gameOverScene/*, transition: transition*/)/*si anado una transicion con 1.0 segundos o hasta 0.5 permite que el ultimo mnicipio se cambie de color antes de cambiar la vista pero ocurre cierto laggin que de cierta forma interfiere con el ritmo que llevaba el juego y afecta un poco la experiencia pero puedo volver a tratar mas adelante ajustando esto hasta dar con la experiencia que busco*/
            }
            
        }
    
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {//Funcion encargada del toque de pantalla
            
            let touch = touches.first!//Guarda toque de pantalla
            let touchLocation = touch.location(in: self)//Define el espacio en donde van a tomar efecto los toques de pantalla en este caso la vista StartScene
            touchedNode = self.physicsWorld.body(at:touchLocation)//Se define que el toque de pantalla tomara efecto cuando el mismo entre en contacto con un SKphysics body, dentro de la vista StartScene
            
            
            //let locationNameLabel = SKLabelNode()//Label para municipios que utilizan un solo label para acomodar el nombre del mismo
            //let firstLineLabel = SKLabelNode()//Primer label para municipios que utilizan mas de un label para acomodar su nombre
            //let secondLineLabel = SKLabelNode()//Segundo label para municipios que utilizan mas de un label para acomodar su nombre
            var countOfIndexes:Int = -1//Dado que interesamos obtener una cuenta de los indices y no de los elementos inicializamos a -1 para que la cuenta incluya el lugar numero 0
            
            
            
            if (touchedNode != nil){//Esta linea permite que la ejecucion continue hacia el bloque abajo si se toco un SKphysics body o tambien se puede entender como si se tocara fuera de los skphysics bodys que en cuyo caso devolveria un valor nil(nulo)
                if (municipioNameLabel.text == touchedNode?.node?.name){//Si esta condicion no se cumple que es igual a no atinar el municipio a identificar, pasa al Else abajo donde la variable Fail es igual a true
                    for child in containerNode.children {//Este for loop va a iterar(en memoria los elementos contenidos en containerNode(SKNode)) de forma continua cotejando la condicion if(touchedNode?.node?.name == spriteNode.name)
                        if let spriteNode = child as? SKSpriteNode {//Esto se leeria como Si child es Skspritenode(esto es porque podria ocurrir que containerNode tenga algun objeto que no un Skspritenode)
                            if(touchedNode?.node?.name == spriteNode.name){//Si esta condicion prueba falsa la ejecucion va a regresar al for loop continuamente hasta que esta pruebe cierta
                                spriteNode.color = UIColor.init(red: 0.5686, green: 1, blue: 0.8745, alpha: 1.0)// Aplica color al municipio identificado correctamente. Color description: minty green(custom color no hex # available)
                                spriteNode.colorBlendFactor = 1.0//Gradacion de la transparecia del color a aplicarse, que en este caso no queremos trasparencia si no que el color se exprese en el mayor grado posible
                                spriteNode.physicsBody = nil//Elimina el skphysicsBody
                                
                                let currentMunicipioNameOnLabel = municipioNameLabel.text//Esta variable la cree como guia para mantener identificado el contenido del label(municipioNameLabel) antes de ser actualizado en el bloque donde se hace el rendering de los labels sobre los pueblos correspondientes
                                let municipioToBeRemovedFromArray = municipios_names_array[currentIndex]//Elemento a ser removido del array luego de ser identificado. Se guarda en esta variable que sera utilizada mas adelante en la funcion que remueve elementos del array
                                
                                //El for statement abajo va a generar la cuenta de los indices entendiendose que el cero es un lugar y esta incluido. En cada nueva iteracion el numero de indices es menor, por: let elementRemoved = municipios_names_array.remove(at:currentIndex)
                                for index in municipios_names_array {
                                    if index != ""{
                                        countOfIndexes += 1//ojo esta variable se reinicia cuando el programa regresa al tope y pasa  por la declaracion de la variable
                                    }
                                }
                                let countOfIndexesTwo = countOfIndexes//USAR SOLO CUANDO SE ESTA HACIENDO TESTING(PRINT STATEMENTS DEL PROGRAMADOR)
                                //Este bloque lo retire pq no entendi que tuviera sentido contar para convertir a String cuando es un valor constante asi que mejor declaro el String como constante y me ahorro hacer esto
                               /* if inTheFirstSecondOfExecution == true{
                                    for elements in municipios_names_array {
                                        if elements != ""{
                                            countOfElements += 1
                                            totalScoreCount = countOfElements
                                            inTheFirstSecondOfExecution = false
                                        }
                                    }
                                }*/
                                
                                if currentIndex <= countOfIndexes/*indexedCount*/{/*Para los efectos del juego esta condicion siempre va a probar cierta, es decir que no es necesaria sin embargo la he dejado como un marker donde podrian en el futuro ser necesario probar alguna otra condicion
                                    es un lugar importante en flow de la ejecucion o lo puede ser en un futuro*/
                                    /*PRINT STATEMENTS PARA USO DEL PROGRAMADOR.OJO CUANDO SE USAN LOS PRINT STATEMENTS USAR EN EL FLOW NORMAL LA VARIABLE: countOfIndexesTWO. Luego de comentados los print statements usar nuevamente la variable countOfIndexes donde se habia cambiado*/
                                    print("")//uso del programador
                                    print("CURRENT")//uso del programador
                                    print(currentMunicipioNameOnLabel as Any)//municipio a buscar en el momento en el momento. uso del programador
                                    print(countOfIndexes)//variable que lleva cuenta regresiva de los indices hayados en un momento dado en el array. uso del programador
                                    print(currentIndex)//indice correspondiente al elemento(municipio a buscar) que se evalua en el momento. uso del programador
                                    print(" ")//. uso del programador
                                    
                                    
                                    //Este if statement ejecuta siempre que currentIndex y countOfIndexes son distintos
                                    if currentIndex != countOfIndexes{
                                        if currentMunicipioNameOnLabel == municipioToBeRemovedFromArray{//Corrobora que el municipio a eliminarse del array
                                            let elementRemoved = municipios_names_array.remove(at:currentIndex)//remueve elemento identificado en el indice al momento(que es el municipio a buscar)
                                            //countIndex = countIndex - 1// Remueve un indice de la cuenta indexada
                                            print("CHANGE")//. uso del programador
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
                                            print("ACA")//. uso del programador
                                            
                                        }
                                    }
                                    
                                    /*Este else if ejecuta solo cuando currentIndex y countOfIndexes son iguales pero mayor o igual a 1. Esto solo va a ocurrir si se presiona el boton de skip lo que mueve el index adelante cuando en el transcurso del juego alcanzamos el ultimo elemento en orden natural vamos a observar que ambas variables van a tener el mismo valor (que equivale al numero de municipios saltados previamente), tambien esto nos indica que el currentIndex se movera proximamente al index 0.
                                    */
                                    else if currentIndex == countOfIndexes && currentIndex >= 1 && countOfIndexes >= 1{/*Esta condicion se cumple cuando alcanzamos el fin del array, pero quedan elementos en la posiciones anteriores a currentIndex, de mode
                                         que currentIndex vuelve a 0 para ir sobre el resto de los elementos que van quedando atras en el queue luego que oprimimos el skipButton*/
                                        if currentMunicipioNameOnLabel == municipioToBeRemovedFromArray{
                                            let elementRemoved = municipios_names_array.remove(at:currentIndex)
                                            currentIndex = 0/*Cuando la ejecucion entra en este bloque quiere decir que el programa llego al ultimo indice, de modo que vuelve al indice 0 para volver sobre los municipios que no pudieron ser identificados
                                            durante el recorrido anterior a lo largo del array */
                                            print("CHANGE")//. uso del programador
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
                                            print("AQUI")//. uso del programador
                                        }
                                       
                                    }
                                    
                                        
                                    //Este else statement va a ejecutar solo cuando currentIndex y countIndex == 0
                                    else{
                                        goldBackgroundSKSpriteNode.removeFromParent()
                                        timerBackground.removeFromParent()
                                        labelTimer.removeFromParent()
                                        
                                        //self.addChild(endGameRectangle)
                                        PracticeAlphabeticGame.completedGame = true//Se actualiza la variable completedGame para detener el reloj
                                        /*self.removeFromParent()
                                        self.removeAllActions()
                                        let gameOverScene = GameOverScene(size: self.size)
                                        //let transition = SKTransition.fade(withDuration: 0.9)//withDuration: 1.5)
                                        self.view?.presentScene(gameOverScene/*, transition: transition*/)*/
                                        //secondsandMinutesRetrieved = true
                                        //EL restante del bloque es para uso del pro\gramador
                                        print("CHANGE")//. uso del programador
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
                                        print("completed game")
                                    }
                                    
                                     //Aqui van a entrar la ejecucion cuando el municipio identificado utiliza dos labels para acomodar el nombre(localidad del mapa)
                                    //if(useLine2 == true){
                                        //spriteNode.addChild(firstLineLabel)//anade el label al objeto skpritenode(parte del mapa politico que corresponde a un municipio)
                                        //spriteNode.addChild(secondLineLabel)
                                        municipioNameLabel.text = municipios_names_array [currentIndex]//Se desplega el nuevo municipio a ser localizado por el jugador
                                        print(municipioNameLabel.text as Any)//Para uso del programador
                                        municipiosNameBackground.size = municipioNameLabel.frame.size//Permite que el background del label reajuste su tamano de acuerdo al largo del label()
                                        //useLine2 = false
                                            
                                    //}
                                    //La ejecucion entraria en este bloque para municipios cuyo nombre solo requieren un solo label
                                    /*else{
                                        spriteNode.addChild(locationNameLabel)//anade el label al objeto skpritenode(parte del mapa politico que corresponde a un municipio)
                                        municipioNameLabel.text = municipios_names_array [currentIndex]//Se desplega el nuevo municipio a ser localizado por el jugador
                                        print(municipioNameLabel.text as Any)//Para uso del programador
                                        municipiosNameBackground.size = municipioNameLabel.frame.size//Permite que el background del label reajuste su tamano de acuerdo al largo del label()

                                    }*/
                                    
                                    /*if completedGame == true{
                                        let gameOverScene = GameOverScene(size: self.size)
                                        let transition = SKTransition.fade(withDuration: 0.1)//withDuration: 1.5)
                                        self.view?.presentScene(gameOverScene, transition: transition)
                                    }*/
                                    
                                    /*Aqui se estaria ejecutando el label para los scores*/
                                    scoreCount += 1
                                    labelScores.text = "\(scoreCount)" + totalScoreCount//totalScoreCount es un constant string solo sirve al rendering del score
                                    

                                    /*La siguiente condicion es cierta cuando la variable countOfIndexes == 1(osea que restan dos indices el 0 y 1) y currentIndex se encuentra en 0 o primer indice que es donde se encuentra el penultimo indice(elemento) que a este punto ya fue removido en el bloque anterior. Pero dado que la variable countOfIndexes actualiza en la proxima iteracion para los efectos de(la presente iteracion) quedan dos elementos y es lo que permite crear esta condicion de modo que junto al penultimo elemento(removido en bloques anteriores) tambien removemos el boton de skip en este bloque. Lo importante es entender que cuando se cumple esta condicion(para eliminar el skip button) ya se ha removido el penultimo elemento y que tanto la remocion del penultimo elemento como la remocion del skip button ocurren en una misma iteracion */
                                    /*OJO UTILIZO countofIndexesTwo solo y exclusivamente en esta funcion cuando estoy utilizando los print() statements del programador,
                                    de lo contrario comento todos los statements del programador y utilizo la variable countOfIndexes*/
                                    if countOfIndexesTwo == 1 && currentIndex == 0 && municipios_names_array.endIndex-1 == 0 {
                                        print("skip button out")
                                        skipButton.removeFromParent()
                                    }
                                    /*if completedGame == true{
                                        let gameOverScene = GameOverScene(size: self.size)
                                        let transition = SKTransition.fade(withDuration: 1.0)//withDuration: 1.5)
                                        self.view?.presentScene(gameOverScene, transition: transition)
                                    }*/
                                }

                            }
                                    
                        }
                                
                    }
                }
                /*Se asigno us SKPhysics body para el skipButton y el toque de pantalla se captura en este bloque**/
                else if (skipButton.name == touchedNode?.node?.name){//Es lo mismo que preguntar si el physics body tocado se llama (name) como skipButton, la condicion quiere saber si tocamos skipButton basicamente
                    currentIndex += 1//mueve el indice adelante en el array de municipios y por consiguiente va a cambiar el municipio a buscarse en orden alfabetico.
                    skipButton.alpha = 0.9//efecto para skipButton al presionarlo, esta linea es solo una prueba y debo al menos sujetarlo a una condicion en el futuro como un if
                    skipButtonPressed = true
                    /*if have == false{
                        skipButton.alpha = 0.5
                        //let scale = SKAction.scale(to: 0.174, duration: 0)
                        //skipButton.run(scale)
                        have = true
                    }*/
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
                
                /*else if (endGameRectangleButton.name == touchedNode?.node?.name){
                    endGameRectangle.removeFromParent()
                    self.addChild(resultadosButton)

                }
                    
                else if (resultadosButton.name == touchedNode?.node?.name){
                    resultadosButton.removeFromParent()
                    self.addChild(endGameRectangle)

                }*/

                            
                //En este Else statement entra la ejecucion cuando se toca el skbody que no corresponde al municipio a localizar
                else{
                    return fail = true//Esta variable se actualiza para entonces ejecutar la penalizacion de anadir 3 segundos al reloj del juego
                }
                
            }
            /*Este bloque maneja el toque de pantalla para el skip button si utilizamos una imagen dado que no funciona como SpriteNode dado que el toque de pantalla es atrapado por los labels
             y la unica manera que encontre para manejar el toque de pantalla fue asignandole al SKSpriteNode un SKPhysics body, por ende el que se haya movido el bloque arriba dentro del scope
             que maneja el toque de pantalla para SKPhysics bodies*/
            /*else if atPoint(touchLocation) == skipButton {
                currentIndex += 1//mueve el indice adelante en el array de municipios y por consiguiente va a cambiar el municipio a buscarse en orden alfabetico.
                skipButton.alpha = 1.0//efecto para skipButton al presionarlo, esta linea es solo una prueba y debo al menos sujetarlo a una condicion en el futuro como un if
                /*if have == false{
                    skipButton.alpha = 0.5
                    //let scale = SKAction.scale(to: 0.174, duration: 0)
                    //skipButton.run(scale)
                    have = true
                }*/
                if currentIndex == municipios_names_array.endIndex-0{//Si el indice llega al ultimo elemento el index se devuelve al 0 para comenzar a iterar los municipios que no fueron identificados en la pasada anterior del juego
                    print("This")//para programador
                    currentIndex = 0//resetea el index al lugar 0 cuando presionando el skip button alcanzamos el ultimo indice
                }
                pressSKipButton = true
                municipioNameLabel.text = municipios_names_array[currentIndex]
                municipiosNameBackground.size = municipioNameLabel.frame.size
                print("Skip Button touched")
            }*/
            
            
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
    
        func labelForMunicipioNames(NameMunicipioLabel: SKLabelNode) -> SKLabelNode {//child of labelMunicipiosNameBackground()
            NameMunicipioLabel.position = CGPoint(x:0.5 /*self.size.width/2*/, y:-6.5 /*self.size.height/2 * 0.14*/)
            NameMunicipioLabel.fontName = "Helvetica"
            NameMunicipioLabel.fontSize = 18
            NameMunicipioLabel.fontColor = UIColor.init(red: 0.898, green: 0.9765, blue: 0, alpha: 1.0)
            NameMunicipioLabel.text = "Adjuntas"
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

}
