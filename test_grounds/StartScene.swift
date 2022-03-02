//
//  StartScene.swift
//  test_grounds
//
//  Created by javier pizarro on 1/8/21.
//  Copyright © 2021 javierpizarro. All rights reserved.
//

import SpriteKit
import UIKit




class StartScene: SKScene{
    //Estas variables UIBezierPath se pueden declarar en didMove
    /*let caboRojobp: UIBezierPath! = TestClass().caboRojoDrawBezierPath()
    let hormiguerosbp: UIBezierPath! = TestClass().hormiguerosDrawBezierPath()
    let mayaguezbp: UIBezierPath! = TestClass().mayaguezDrawBezierPath()
    let anascobp: UIBezierPath! = TestClass().anascoDrawBezierPath()
    let rinconbp: UIBezierPath! = TestClass().rinconDrawBezierPath()
    let aguadabp: UIBezierPath! = TestClass().aguadaDrawBezierPath()
    let aguadillabp: UIBezierPath! = TestClass().aguadillaDrawBezierPath()
    let isabelabp: UIBezierPath! = TestClass().isabelaDrawBezierPath()
    let mocabp:UIBezierPath! = TestClass().mocaDrawBezierPath()
    let lasMariasbp:UIBezierPath! = TestClass().lasMariasDrawBezierPath()
    let maricaobp:UIBezierPath! = TestClass().maricaoDrawBezierPath()
    let sanGermanbp:UIBezierPath! = TestClass().sanGermanDrawBezierPath()
    let lajasbp:UIBezierPath! = TestClass().lajasDrawBezierPath()
    let yaucobp:UIBezierPath! = TestClass().yaucoDrawBezierPath()
    
    
    let sabanaGrandebp:UIBezierPath! = TestClass().sabanaGrandeDrawBezierPath()
    let sanSebastianbp:UIBezierPath! = TestClass().sanSebastianDrawBezierPath()
    let guanicabp:UIBezierPath! = TestClass().guanicaDrawBezierPath()
    let guayanillabp:UIBezierPath! = TestClass().guayanillaDrawBezierPath()
    let laresbp:UIBezierPath! = TestClass().laresDrawBezierPath()
    let penuelasbp:UIBezierPath! = TestClass().penuelasDrawBezierPath()
    let poncebp:UIBezierPath! = TestClass().ponceDrawBezierPath()
    let utuadobp:UIBezierPath! = TestClass().utuadoDrawBezierPath()
    let jayuyabp:UIBezierPath! = TestClass().jayuyaDrawBezierPath()
    let juanaDiazbp:UIBezierPath! = TestClass().juanaDiazDrawBezierPath()
    let quebradillasbp:UIBezierPath! = TestClass().quebradillasDrawBezierPath()
    let camuybp:UIBezierPath! = TestClass().camuyDrawBezierPath()
    let hatillobp:UIBezierPath! = TestClass().hatilloDrawBezierPath()
    let arecibobp:UIBezierPath! = TestClass().areciboDrawBezierPath()
    //let mayaguezTwobp: UIBezierPath! = TestClass().mayaguezTwoDrawBezierPath()
    let adjuntasbp:UIBezierPath! = TestClass().adjuntasDrawBezierPath()
    
    
    let floridabp:UIBezierPath! = TestClass().floridaDrawBezierPath()
    let barcelonetabp:UIBezierPath! = TestClass().barcelonetaDrawBezierPath()
    let manatibp:UIBezierPath! = TestClass().manatiDrawBezierPath()
    let vegaBajabp:UIBezierPath! = TestClass().vegaBajaDrawBezierPath()
    let villalbabp:UIBezierPath! = TestClass().villalbaDrawBezierPath()
    let cialesbp:UIBezierPath! = TestClass().cialesDrawBezierPath()
    let orocovisbp:UIBezierPath! = TestClass().orocovisDrawBezierPath()
    let morovisbp:UIBezierPath! = TestClass().morovisDrawBezierPath()
    let corozalbp:UIBezierPath! = TestClass().corozalDrawBezierPath()
    let barranquitasbp:UIBezierPath! = TestClass().barranquitasDrawBezierPath()
    let comeriobp:UIBezierPath! = TestClass().comerioDrawBezierPath()
    let coamobp:UIBezierPath! = TestClass().coamoDrawBezierPath()
    let naranjitobp:UIBezierPath! = TestClass().naranjitoDrawBezierPath()
    let aibonitobp:UIBezierPath! = TestClass().aibonitoDrawBezierPath()
    
    
    let salinasbp:UIBezierPath! = TestClass().salinasDrawBezierPath()
    let cayeybp:UIBezierPath! = TestClass().cayeyDrawBezierPath()
    let cidrabp:UIBezierPath! = TestClass().cidraDrawBezierPath()
    let santaIsabelbp:UIBezierPath! = TestClass().santaIsabelDrawBezierPath()
    let vegaAltabp:UIBezierPath! = TestClass().vegaAltaDrawBezierPath()
    let doradobp:UIBezierPath! = TestClass().doradoDrawBezierPath()
    let toaAltabp:UIBezierPath! = TestClass().toaAltaDrawBezierPath()
    let toaBajabp:UIBezierPath! = TestClass().toaBajaDrawBezierPath()
    let bayamonbp:UIBezierPath! = TestClass().bayamonDrawBezierPath()
    let catanobp:UIBezierPath! = TestClass().catanoDrawBezierPath()
    let guaynabobp:UIBezierPath! = TestClass().guaynaboDrawBezierPath()
    let sanJuanbp:UIBezierPath! = TestClass().sanJuanDrawBezierPath()
    let caguasbp:UIBezierPath! = TestClass().caguasDrawBezierPath()
    let carolinabp:UIBezierPath! = TestClass().carolinaDrawBezierPath()
    
    let aguasBuenasbp:UIBezierPath! = TestClass().aguasBuenasDrawBezierPath()
    let trujilloAltobp:UIBezierPath! = TestClass().trujilloAltoDrawBezierPath()
    let loizabp:UIBezierPath! = TestClass().loizaDrawBezierPath()
    //let loizaTwobp:UIBezierPath! = TestClass().loizaTwoDrawBezierPath()
    let canovanasbp:UIBezierPath! = TestClass().canovanasDrawBezierPath()
    let rioGrandebp:UIBezierPath! = TestClass().rioGrandeDrawBezierPath()
    let luquillobp:UIBezierPath! = TestClass().luquilloDrawBezierPath()
    let fajardobp:UIBezierPath! = TestClass().fajardoDrawBezierPath()
    let ceibabp:UIBezierPath! = TestClass().ceibaDrawBezierPath()
    let gurabobp:UIBezierPath! = TestClass().guraboDrawBezierPath()
    let juncosbp:UIBezierPath! = TestClass().juncosDrawBezierPath()
    
    
    let sanLorenzobp:UIBezierPath! = TestClass().sanLorenzoDrawBezierPath()
    let guayamabp:UIBezierPath! = TestClass().guayamaDrawBezierPath()
    let arroyobp:UIBezierPath! = TestClass().arroyoDrawBezierPath()
    let patillasbp:UIBezierPath! = TestClass().patillasDrawBezierPath()
    let maunabobp:UIBezierPath! = TestClass().maunaboDrawBezierPath()
    let yabucoabp:UIBezierPath! = TestClass().yabucoaDrawBezierPath()
    let lasPiedrasbp:UIBezierPath! = TestClass().lasPiedrasDrawBezierPath()
    let humacaobp:UIBezierPath! = TestClass().humacaoDrawBezierPath()
    let naguabobp:UIBezierPath! = TestClass().naguaboDrawBezierPath()
    let viequesbp:UIBezierPath! = TestClass().viequesDrawBezierPath()
    let culebrabp:UIBezierPath! = TestClass().culebraDrawBezierPath()
    
    let rectanglebp:UIBezierPath! = TestClass().createRectangle()
    let rectangleViequesbp:UIBezierPath! = TestClass().createViequesRectangle()
    let rectangleCulebrabp:UIBezierPath! = TestClass().createCulebraRectangle()
    */
    var skipButton = SKSpriteNode()//la declare universalmente temporeramente
    
    var containerNode = SKNode()//se usa en mas de una funcion
    var labelTimer = SKLabelNode()//se usa en mas de una funcion
    var timerBackground = SKSpriteNode()//se usa en mas de una funcion
    var municipiosNameBackground = SKSpriteNode()//se usa en mas de una funcion
    
    var renderTime: TimeInterval = 0.0//esta solo se usa en la funcion del reloj
    let changeTime: TimeInterval = 1//esta solo se usa en la funcion del reloj
    var seconds: Int = 0//esta solo se usa en la funcion del reloj
    var minutes: Int = 0//esta solo se usa en la funcion del reloj
    var renderTimeBiggerCounter: Int! = 0
    
    var completedGame = false//se usa en mas de una funcion
    
    var twoLineText: String = ""//se usa solo en las dos funciones splitTextIntoFields puedo declararla en ambas funciones de manera local
    var useLine2:Bool = false//se usa en mas de una funcion
    //let locationNameLabel = SKLabelNode()/*Esta declaracion estaba originalmente en override func**/
    

    
    //El array se puede declarar dentro de la funcion touchesBegan
    var municipios_names_array = ["Adjuntas", "Aguada", "Aguadilla", "Aguas Buenas", "Aibonito", "Arecibo", "Arroyo", "Añasco", "Barceloneta", "Barranquitas", "Bayamón", "Cabo Rojo", "Caguas", "Camuy", "Canóvanas", "Carolina", "Cataño", "Cayey", "Ceiba", "Ciales", "Cidra", "Coamo", "Comerío", "Corozal", "Culebra", "Dorado", "Fajardo", "Florida", "Guayama", "Guayanilla", "Guaynabo","Gurabo", "Guánica", "Hatillo", "Hormigueros", "Humacao", "Isabela", "Jayuya", "Juana Díaz", "Juncos", "Lajas", "Lares", "Las Marías", "Las Piedras", "Loíza", "Luquillo", "Manatí", "Maricao", "Maunabo", "Mayagüez", "Moca", "Morovis", "Naguabo", "Naranjito", "Orocovis", "Patillas", "Peñuelas", "Ponce", "Quebradillas", "Rincón", "Rio Grande", "Sabana Grande", "Salinas", "San Germán", "San Juan", "San Lorenzo", "San Sebastián", "Santa Isabel", "Toa Alta", "Toa Baja", "Trujillo Alto", "Utuado", "Vega Alta", "Vega Baja", "Vieques", "Villalba", "Yabucoa", "Yauco"]
    
    var municipioNameLabel = SKLabelNode()//se usa en mas de una funcion

    var touchedNode: SKPhysicsBody!//se puede declarar dentro de la funcion touchesBegan
    //var success: String!//variable que no se uso
    var fail: Bool!//se usa en mas de una funcion
    var penalty: Int!//Se usa solo en la funcion del reloj
    var skipButtonPenalty: Int!//Se usa solo en la funcion del reloj
    var currentIndex: Int = 0 //se puede declarar en touchesBegan
    //var locationNameLabel = SKLabelNode()
    var pressSKipButton:Bool = false
    
    
    override func didMove(to view: SKView){
        
        
        containerNode = nodesContainer()
        let backgroundSKSpriteNode: SKSpriteNode = prBackground()
        let goldBackgroundSKSpriteNode: SKSpriteNode = goldenBackground()
        let coverDesecheoIslandSKSpriteNode: SKSpriteNode = desecheoIslandCover()//As desecheo island is not mean to be rendered this node hides it from view.
        containerNode.addChild(coverDesecheoIslandSKSpriteNode)
        
        skipButton = skipBlueButton()
        
        labelTimer = labelForTimer(TimerLabel: labelTimer)
        
        timerBackground = timerLabelBackground()
        
        municipioNameLabel = labelForMunicipioNames(NameMunicipioLabel: municipioNameLabel)
        
        municipiosNameBackground = labelMunicipiosNameBackground()
        
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
        containerNode.addChild(caboRojoSKSpriteNode)
        
        let hormiguerosbp: UIBezierPath! = TestClass().hormiguerosDrawBezierPath()
        let hormiguerosSKSpriteNode:SKSpriteNode = TestClass().hormiguerosBezierPathToSKSpriteNode(bphormigueros: hormiguerosbp)
        containerNode.addChild(hormiguerosSKSpriteNode)
        
        let mayaguezbp: UIBezierPath! = TestClass().mayaguezDrawBezierPath()
        let mayaguezSKSpriteNode:SKSpriteNode = TestClass().mayaguezBezierPathToSKSpriteNode(bpMayaguez: mayaguezbp)
        containerNode.addChild(mayaguezSKSpriteNode)
        
        //let mayaguezTwoSKSpriteNode:SKSpriteNode = TestClass().mayaguezTwoBezierPathToSKSpriteNode(bpMayaguezTwo: mayaguezTwobp)
         //containerNode.addChild(mayaguezTwoSKSpriteNode)
        let anascobp: UIBezierPath! = TestClass().anascoDrawBezierPath()
        let anascoSKSpriteNode: SKSpriteNode = TestClass().anascoBezierPathToSKSpriteNode(bpAnasco: anascobp)
        containerNode.addChild(anascoSKSpriteNode)
        
        let rinconbp: UIBezierPath! = TestClass().rinconDrawBezierPath()
        let rinconSKSpriteNode: SKSpriteNode = TestClass().rinconBezierPathToSKSpriteNode(bpRincon: rinconbp)
        containerNode.addChild(rinconSKSpriteNode)
        
        let aguadabp: UIBezierPath! = TestClass().aguadaDrawBezierPath()
        let aguadaSKSpriteNode: SKSpriteNode = TestClass().aguadaBezierPathToSKSpriteNode(bpAguada: aguadabp)
        containerNode.addChild(aguadaSKSpriteNode)
        
        let aguadillabp: UIBezierPath! = TestClass().aguadillaDrawBezierPath()
        let aguadillaSKSpriteNode: SKSpriteNode = TestClass().aguadillaBezierPathToSKSpriteNode(bpAguadilla: aguadillabp)
        containerNode.addChild(aguadillaSKSpriteNode)
        
        let isabelabp: UIBezierPath! = TestClass().isabelaDrawBezierPath()
        let isabelaSKSpriteNode: SKSpriteNode = TestClass().isabelaBezierPathToSKSpriteNode(bpIsabela: isabelabp)
        containerNode.addChild(isabelaSKSpriteNode)
        
        let mocabp:UIBezierPath! = TestClass().mocaDrawBezierPath()
        let mocaSKSpriteNode: SKSpriteNode = TestClass().mocaBezierPathToSKSpriteNode(bpMoca: mocabp)
        containerNode.addChild(mocaSKSpriteNode)
        
        let lasMariasbp:UIBezierPath! = TestClass().lasMariasDrawBezierPath()
        let lasMariasSKSpriteNode: SKSpriteNode = TestClass().lasMariasBezierPathToSKSpriteNode(bpLasMarias: lasMariasbp)
        containerNode.addChild(lasMariasSKSpriteNode)
        
        let maricaobp:UIBezierPath! = TestClass().maricaoDrawBezierPath()
        let maricaoSKSpriteNode: SKSpriteNode = TestClass().maricaoBezierPathToSKSpriteNode(bpMaricao:maricaobp)
        containerNode.addChild(maricaoSKSpriteNode)
        
        let sanGermanbp:UIBezierPath! = TestClass().sanGermanDrawBezierPath()
        let sanGermanSKSpriteNode:SKSpriteNode = TestClass().sanGermanBezierPathToSKSpriteNode(bpSanGerman: sanGermanbp)
        containerNode.addChild(sanGermanSKSpriteNode)
        
        let yaucobp:UIBezierPath! = TestClass().yaucoDrawBezierPath()
        let yaucoSKSpriteNode: SKSpriteNode = TestClass().yaucoBezierPathToSKSpriteNode(bpYauco:yaucobp)
        containerNode.addChild(yaucoSKSpriteNode)
        
        let lajasbp:UIBezierPath! = TestClass().lajasDrawBezierPath()
        let lajasSKSpriteNode: SKSpriteNode = TestClass().lajasBezierPathToSKSpriteNode(bpLajas:lajasbp)
        containerNode.addChild(lajasSKSpriteNode)
        
        let guanicabp:UIBezierPath! = TestClass().guanicaDrawBezierPath()
        let guanicaSKSpriteNode: SKSpriteNode = TestClass().guanicaBezierPathToSKSpriteNode(bpGuanica:guanicabp)
        containerNode.addChild(guanicaSKSpriteNode)
        
        let guayanillabp:UIBezierPath! = TestClass().guayanillaDrawBezierPath()
        let guayanillaSKSpriteNode:SKSpriteNode = TestClass().guayanillaBezierPathToSKSpriteNode(bpGuayanilla:guayanillabp)
        containerNode.addChild(guayanillaSKSpriteNode)
        
        let sanSebastianbp:UIBezierPath! = TestClass().sanSebastianDrawBezierPath()
        let sanSebastianSKSpriteNode: SKSpriteNode = TestClass().sanSebastianBezierPathToSKSpriteNode(bpSanSebastian: sanSebastianbp)
        containerNode.addChild(sanSebastianSKSpriteNode)
        
        let sabanaGrandebp:UIBezierPath! = TestClass().sabanaGrandeDrawBezierPath()
        let sabanaGrandeSKSpriteNode: SKSpriteNode = TestClass().sabanaGrandeBezierPathToSKSpriteNode(bpSabanaGrande: sabanaGrandebp)
        containerNode.addChild(sabanaGrandeSKSpriteNode)
        
        let laresbp:UIBezierPath! = TestClass().laresDrawBezierPath()
        let laresSKSpriteNode:SKSpriteNode = TestClass().laresBezierPathToSKSpriteNode(bpLares: laresbp)
        containerNode.addChild(laresSKSpriteNode)
    
        let penuelasbp:UIBezierPath! = TestClass().penuelasDrawBezierPath()
        let penuelasSKSpriteNode:SKSpriteNode = TestClass().penuelasBezierPathToSKSpriteNode(bpPenuelas: penuelasbp)
        containerNode.addChild(penuelasSKSpriteNode)
        
        let poncebp:UIBezierPath! = TestClass().ponceDrawBezierPath()
        let ponceSKSpriteNode:SKSpriteNode = TestClass().ponceBezierPathToSKSpriteNode(bpPonce: poncebp)
        containerNode.addChild(ponceSKSpriteNode)
        
        let utuadobp:UIBezierPath! = TestClass().utuadoDrawBezierPath()
        let utuadoSKSpriteNode:SKSpriteNode = TestClass().utuadoBezierPathToSKSpriteNode(bpUtuado: utuadobp)
        containerNode.addChild(utuadoSKSpriteNode)
        
        let jayuyabp:UIBezierPath! = TestClass().jayuyaDrawBezierPath()
        let jayuyaSKSpriteNode:SKSpriteNode = TestClass().jayuyaBezierPathToSKSpriteNode(bpJayuya: jayuyabp)
        containerNode.addChild(jayuyaSKSpriteNode)
        
        let juanaDiazbp:UIBezierPath! = TestClass().juanaDiazDrawBezierPath()
        let juanaDiazSKSpriteNode:SKSpriteNode = TestClass().juanaDiazBezierPathToSKSpriteNode(bpJuanaDiaz: juanaDiazbp)
        containerNode.addChild(juanaDiazSKSpriteNode)
        
        let quebradillasbp:UIBezierPath! = TestClass().quebradillasDrawBezierPath()
        let quebradillasSKSpriteNode:SKSpriteNode = TestClass().quebradillasBezierPathToSKSpriteNode(bpQuebradillas:quebradillasbp)
        containerNode.addChild(quebradillasSKSpriteNode)
        
        let camuybp:UIBezierPath! = TestClass().camuyDrawBezierPath()
        let camuySKSpriteNode:SKSpriteNode = TestClass().camuyBezierPathToSKSpriteNode(bpCamuy:camuybp)
        containerNode.addChild(camuySKSpriteNode)
        
        let hatillobp:UIBezierPath! = TestClass().hatilloDrawBezierPath()
        let hatilloSKSpriteNode:SKSpriteNode = TestClass().hatilloBezierPathToSKSpriteNode(bpHatillo:hatillobp)
        containerNode.addChild(hatilloSKSpriteNode)
        
        let arecibobp:UIBezierPath! = TestClass().areciboDrawBezierPath()
        let areciboSKSpriteNode:SKSpriteNode = TestClass().areciboBezierPathToSKSpriteNode(bpArecibo:arecibobp)
        containerNode.addChild(areciboSKSpriteNode)
        
        let adjuntasbp:UIBezierPath! = TestClass().adjuntasDrawBezierPath()
        let adjuntasSKSpriteNode:SKSpriteNode = TestClass().adjuntasBezierPathToSKSpriteNode(bpAdjuntas: adjuntasbp)
        containerNode.addChild(adjuntasSKSpriteNode)
        
        let barcelonetabp:UIBezierPath! = TestClass().barcelonetaDrawBezierPath()
        let barcelonetaSKSpriteNode:SKSpriteNode = TestClass().barcelonetaBezierPathToSKSpriteNode(bpBarceloneta:barcelonetabp)
        containerNode.addChild(barcelonetaSKSpriteNode)
        
        let manatibp:UIBezierPath! = TestClass().manatiDrawBezierPath()
        let manatiSKSpriteNode:SKSpriteNode = TestClass().manatiBezierPathToSKSpriteNode(bpManati:manatibp)
        containerNode.addChild(manatiSKSpriteNode)
        
        let vegaBajabp:UIBezierPath! = TestClass().vegaBajaDrawBezierPath()
        let vegaBajaSKSpriteNode:SKSpriteNode = TestClass().vegaBajaBezierPathToSKSpriteNode(bpVegaBaja:vegaBajabp)
        containerNode.addChild(vegaBajaSKSpriteNode)
        
        let floridabp:UIBezierPath! = TestClass().floridaDrawBezierPath()
        let floridaSKSpriteNode:SKSpriteNode = TestClass().floridaBezierPathToSKSpriteNode(bpFlorida:floridabp)
        containerNode.addChild(floridaSKSpriteNode)
        
        let villalbabp:UIBezierPath! = TestClass().villalbaDrawBezierPath()
        let villalbaSKSpriteNode:SKSpriteNode = TestClass().villalbaBezierPathToSKSpriteNode(bpVillalba: villalbabp)
        containerNode.addChild(villalbaSKSpriteNode)
        
        let cialesbp:UIBezierPath! = TestClass().cialesDrawBezierPath()
        let cialesSKSpriteNode:SKSpriteNode = TestClass().cialesBezierPathToSKSpriteNode(bpCiales: cialesbp)
        containerNode.addChild(cialesSKSpriteNode)
        
        let orocovisbp:UIBezierPath! = TestClass().orocovisDrawBezierPath()
        let orocovisSKSpriteNode:SKSpriteNode = TestClass().orocovisBezierPathToSKSpriteNode(bpOrocovis: orocovisbp)
        containerNode.addChild(orocovisSKSpriteNode)
        
        let morovisbp:UIBezierPath! = TestClass().morovisDrawBezierPath()
        let morovisSKSpriteNode:SKSpriteNode = TestClass().morovisBezierPathToSKSpriteNode(bpMorovis: morovisbp)
        containerNode.addChild(morovisSKSpriteNode)
        
        let corozalbp:UIBezierPath! = TestClass().corozalDrawBezierPath()
        let corozalSKSpriteNode:SKSpriteNode = TestClass().corozalBezierPathToSKSpriteNode(bpCorozal: corozalbp)
        containerNode.addChild(corozalSKSpriteNode)
        
        let barranquitasbp:UIBezierPath! = TestClass().barranquitasDrawBezierPath()
        let barranquitasSKSpriteNode:SKSpriteNode = TestClass().barranquitasBezierPathToSKSpriteNode(bpBarranquitas: barranquitasbp)
        containerNode.addChild(barranquitasSKSpriteNode)
        
        let comeriobp:UIBezierPath! = TestClass().comerioDrawBezierPath()
        let comerioSKSpriteNode:SKSpriteNode = TestClass().comerioBezierPathToSKSpriteNode(bpComerio: comeriobp)
        containerNode.addChild(comerioSKSpriteNode)
        
        let coamobp:UIBezierPath! = TestClass().coamoDrawBezierPath()
        let coamoSKSpriteNode:SKSpriteNode = TestClass().coamoBezierPathToSKSpriteNode(bpCoamo: coamobp)
        containerNode.addChild(coamoSKSpriteNode)
        
        let naranjitobp:UIBezierPath! = TestClass().naranjitoDrawBezierPath()
        let naranjitoSKSpriteNode:SKSpriteNode = TestClass().naranjitoBezierPathToSKSpriteNode(bpNaranjito: naranjitobp)
        containerNode.addChild(naranjitoSKSpriteNode)
        
        let aibonitobp:UIBezierPath! = TestClass().aibonitoDrawBezierPath()
        let aibonitoSKSpriteNode:SKSpriteNode = TestClass().aibonitoBezierPathToSKSpriteNode(bpAibonito: aibonitobp)
        containerNode.addChild(aibonitoSKSpriteNode)
        
        let salinasbp:UIBezierPath! = TestClass().salinasDrawBezierPath()
        let salinasSKSpriteNode:SKSpriteNode = TestClass().salinasBezierPathToSKSpriteNode(bpSalinas: salinasbp)
        containerNode.addChild(salinasSKSpriteNode)
        
        let cayeybp:UIBezierPath! = TestClass().cayeyDrawBezierPath()
        let cayeySKSpriteNode:SKSpriteNode = TestClass().cayeyBezierPathToSKSpriteNode(bpCayey: cayeybp)
        containerNode.addChild(cayeySKSpriteNode)
        
        let cidrabp:UIBezierPath! = TestClass().cidraDrawBezierPath()
        let cidraSKSpriteNode:SKSpriteNode = TestClass().cidraBezierPathToSKSpriteNode(bpCidra: cidrabp)
        containerNode.addChild(cidraSKSpriteNode)
        
        let santaIsabelbp:UIBezierPath! = TestClass().santaIsabelDrawBezierPath()
        let santaIsabelSKSpriteNode:SKSpriteNode = TestClass().santaIsabelBezierPathToSKSpriteNode(bpSantaIsabel: santaIsabelbp)
        containerNode.addChild(santaIsabelSKSpriteNode)
        
        let vegaAltabp:UIBezierPath! = TestClass().vegaAltaDrawBezierPath()
        let vegaAltaSKSpriteNode:SKSpriteNode = TestClass().vegaAltaBezierPathToSKSpriteNode(bpVegaAlta: vegaAltabp)
        containerNode.addChild(vegaAltaSKSpriteNode)
        
        let doradobp:UIBezierPath! = TestClass().doradoDrawBezierPath()
        let doradoSKSpriteNode:SKSpriteNode = TestClass().doradoBezierPathToSKSpriteNode(bpDorado: doradobp)
        containerNode.addChild(doradoSKSpriteNode)
        
        let toaAltabp:UIBezierPath! = TestClass().toaAltaDrawBezierPath()
        let toaAltaSKSpriteNode:SKSpriteNode = TestClass().toaAltaBezierPathToSKSpriteNode(bpToaAlta: toaAltabp)
        containerNode.addChild(toaAltaSKSpriteNode)
        
        let toaBajabp:UIBezierPath! = TestClass().toaBajaDrawBezierPath()
        let toaBajaSKSpriteNode:SKSpriteNode = TestClass().toaBajaBezierPathToSKSpriteNode(bpToaBaja: toaBajabp)
        containerNode.addChild(toaBajaSKSpriteNode)
        
        let bayamonbp:UIBezierPath! = TestClass().bayamonDrawBezierPath()
        let bayamonSKSpriteNode:SKSpriteNode = TestClass().bayamonBezierPathToSKSpriteNode(bpBayamon: bayamonbp)
        containerNode.addChild(bayamonSKSpriteNode)
          
        let catanobp:UIBezierPath! = TestClass().catanoDrawBezierPath()
        let catanoSKSpriteNode:SKSpriteNode = TestClass().catanoBezierPathToSKSpriteNode(bpCatano: catanobp)
        containerNode.addChild(catanoSKSpriteNode)
        
        let guaynabobp:UIBezierPath! = TestClass().guaynaboDrawBezierPath()
        let guaynaboSKSpriteNode:SKSpriteNode = TestClass().guaynaboBezierPathToSKSpriteNode(bpGuaynabo:guaynabobp)
        containerNode.addChild(guaynaboSKSpriteNode)
        
        let sanJuanbp:UIBezierPath! = TestClass().sanJuanDrawBezierPath()
        let sanJuanSKSpriteNode:SKSpriteNode = TestClass().sanJuanBezierPathToSKSpriteNode(bpSanJuan: sanJuanbp)
        containerNode.addChild(sanJuanSKSpriteNode)
        
        let caguasbp:UIBezierPath! = TestClass().caguasDrawBezierPath()
        let caguasSKSpriteNode:SKSpriteNode = TestClass().caguasBezierPathToSKSpriteNode(bpCaguas: caguasbp)
        containerNode.addChild(caguasSKSpriteNode)
        
        let carolinabp:UIBezierPath! = TestClass().carolinaDrawBezierPath()
        let carolinaSKSpriteNode:SKSpriteNode = TestClass().carolinaBezierPathToSKSpriteNode(bpCarolina: carolinabp)
        containerNode.addChild(carolinaSKSpriteNode)
        
        let aguasBuenasbp:UIBezierPath! = TestClass().aguasBuenasDrawBezierPath()
        let aguasBuenasSKSpriteNode:SKSpriteNode = TestClass().aguasBuenasBezierPathToSKSpriteNode(bpAguasBuenas: aguasBuenasbp)
        containerNode.addChild(aguasBuenasSKSpriteNode)
        
        let trujilloAltobp:UIBezierPath! = TestClass().trujilloAltoDrawBezierPath()
        let trujilloAltoSKSpriteNode:SKSpriteNode = TestClass().trujilloAltoBezierPathToSKSpriteNode(bpTrujilloAlto: trujilloAltobp)
        containerNode.addChild(trujilloAltoSKSpriteNode)
        
        let loizabp:UIBezierPath! = TestClass().loizaDrawBezierPath()
        let loizaSKSpriteNode:SKSpriteNode = TestClass().loizaBezierPathToSKSpriteNode(bpLoiza: loizabp)
        containerNode.addChild(loizaSKSpriteNode)
        
        /*let loizaTwoSKSpriteNode:SKSpriteNode = TestClass().loizaTwoBezierPathToSKSpriteNode(bpLoizaTwo: loizaTwobp)
        containerNode.addChild(loizaTwoSKSpriteNode)*/
        
        let canovanasbp:UIBezierPath! = TestClass().canovanasDrawBezierPath()
        let canovanasSKSpriteNode:SKSpriteNode = TestClass().canovanasBezierPathToSKSpriteNode(bpCanovanas: canovanasbp)
        containerNode.addChild(canovanasSKSpriteNode)
        
        let rioGrandebp:UIBezierPath! = TestClass().rioGrandeDrawBezierPath()
        let rioGrandeSKSpriteNode:SKSpriteNode = TestClass().rioGrandeBezierPathToSKSpriteNode(bpRioGrande: rioGrandebp)
        containerNode.addChild(rioGrandeSKSpriteNode)
        
        let luquillobp:UIBezierPath! = TestClass().luquilloDrawBezierPath()
        let luquilloSKSpriteNode:SKSpriteNode = TestClass().luquilloBezierPathToSKSpriteNode(bpLuquillo: luquillobp)
        containerNode.addChild(luquilloSKSpriteNode)
        
        let fajardobp:UIBezierPath! = TestClass().fajardoDrawBezierPath()
        let fajardoSKSpriteNode:SKSpriteNode = TestClass().fajardoBezierPathToSKSpriteNode(bpFajardo: fajardobp)
        containerNode.addChild(fajardoSKSpriteNode)
        
        let ceibabp:UIBezierPath! = TestClass().ceibaDrawBezierPath()
        let ceibaSKSpriteNode:SKSpriteNode = TestClass().ceibaBezierPathToSKSpriteNode(bpCeiba: ceibabp)
        containerNode.addChild(ceibaSKSpriteNode)
        
        let gurabobp:UIBezierPath! = TestClass().guraboDrawBezierPath()
        let guraboSKSpriteNode:SKSpriteNode = TestClass().guraboBezierPathToSKSpriteNode(bpGurabo: gurabobp)
        containerNode.addChild(guraboSKSpriteNode)
        
        let juncosbp:UIBezierPath! = TestClass().juncosDrawBezierPath()
        let juncosSKSpriteNode:SKSpriteNode = TestClass().juncosBezierPathToSKSpriteNode(bpJuncos: juncosbp)
        containerNode.addChild(juncosSKSpriteNode)
        
        
        let sanLorenzobp:UIBezierPath! = TestClass().sanLorenzoDrawBezierPath()
        let sanLorenzoSKSpriteNode:SKSpriteNode = TestClass().sanLorenzoBezierPathToSKSpriteNode(bpSanLorenzo: sanLorenzobp)
        containerNode.addChild(sanLorenzoSKSpriteNode)
        
        let guayamabp:UIBezierPath! = TestClass().guayamaDrawBezierPath()
        let guayamaSKSpriteNode:SKSpriteNode = TestClass().guayamaBezierPathToSKSpriteNode(bpGuayama: guayamabp)
        containerNode.addChild(guayamaSKSpriteNode)
        
        let arroyobp:UIBezierPath! = TestClass().arroyoDrawBezierPath()
        let arroyoSKSpriteNode:SKSpriteNode = TestClass().arroyoBezierPathToSKSpriteNode(bpArroyo: arroyobp)
        containerNode.addChild(arroyoSKSpriteNode)
        
        let patillasbp:UIBezierPath! = TestClass().patillasDrawBezierPath()
        let patillasSKSpriteNode:SKSpriteNode = TestClass().patillasBezierPathToSKSpriteNode(bpPatillas: patillasbp)
        containerNode.addChild(patillasSKSpriteNode)
        
        let maunabobp:UIBezierPath! = TestClass().maunaboDrawBezierPath()
        let maunaboSKSpriteNode:SKSpriteNode = TestClass().maunaboBezierPathToSKSpriteNode(bpMaunabo: maunabobp)
        containerNode.addChild(maunaboSKSpriteNode)
        
        let yabucoabp:UIBezierPath! = TestClass().yabucoaDrawBezierPath()
        let yabucoaSKSpriteNode:SKSpriteNode = TestClass().yabucoaBezierPathToSKSpriteNode(bpYabucoa: yabucoabp)
        containerNode.addChild(yabucoaSKSpriteNode)
        
        let lasPiedrasbp:UIBezierPath! = TestClass().lasPiedrasDrawBezierPath()
        let lasPiedrasSKSpriteNode:SKSpriteNode = TestClass().lasPiedrasBezierPathToSKSpriteNode(bpLasPiedras: lasPiedrasbp)
        containerNode.addChild(lasPiedrasSKSpriteNode)
        
        let humacaobp:UIBezierPath! = TestClass().humacaoDrawBezierPath()
        let humacaoSKSpriteNode:SKSpriteNode = TestClass().humacaoBezierPathToSKSpriteNode(bpHumacao: humacaobp)
        containerNode.addChild(humacaoSKSpriteNode)
        
        let naguabobp:UIBezierPath! = TestClass().naguaboDrawBezierPath()
        let naguaboSKSpriteNode:SKSpriteNode = TestClass().naguaboBezierPathToSKSpriteNode(bpNaguabo: naguabobp)
        containerNode.addChild(naguaboSKSpriteNode)
        
        let viequesbp:UIBezierPath! = TestClass().viequesDrawBezierPath()
        let viequesSKSpriteNode:SKSpriteNode = TestClass().viequesBezierPathToSKSpriteNode(bpVieques: viequesbp)
        containerNode.addChild(viequesSKSpriteNode)
        
        let culebrabp:UIBezierPath! = TestClass().culebraDrawBezierPath()
        let culebraSKSpriteNode:SKSpriteNode = TestClass().culebraBezierPathToSKSpriteNode(bpCulebra: culebrabp)
        containerNode.addChild(culebraSKSpriteNode)
        
        self.addChild(goldBackgroundSKSpriteNode)
        self.addChild(backgroundSKSpriteNode)
        self.addChild(timerBackground)
        self.addChild(labelTimer)
        self.addChild(municipiosNameBackground)
        self.addChild(municipioNameLabel)
        self.addChild(skipButton)
        self.addChild(containerNode)
        
        
        sleep(2)//Este sleep statement es para retrasar un poco el rendering y que este todo desplegado cuando el reloj comienza a contar
        
        
    }

    func nodesContainer() -> SKNode{
        let nodes_Container = SKNode()
        //nodes_Container.color = UIColor.white
        //nodes_Container.size = CGSize(width: self.size.width * 0.90, height:self.size.height * 0.90)
        //nodes_Container.anchorPoint = CGPoint.zero
        nodes_Container.position = CGPoint(x: 50, y: 15)
        return  nodes_Container
    }
    
    func skipBlueButton()-> SKSpriteNode {
        let skipBlueButton = SKSpriteNode(imageNamed: "skipBlueButton")
        skipBlueButton.setScale(0.20)
        skipBlueButton.position = CGPoint(x:540, y:self.size.height/2 * 0.16)
        return skipBlueButton
    }

    func goldenBackground() -> SKSpriteNode {
        let goldenBackground = SKSpriteNode(imageNamed: "old paper texture")
        goldenBackground.size = CGSize(width: self.size.width + 6, height:self.size.height + 6)
        goldenBackground.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        return goldenBackground
    }

    
    func prBackground() -> SKSpriteNode {
        let backgroundNode = SKSpriteNode()
        backgroundNode.color = UIColor.init(red: 0.5373, green: 0.8431, blue: 0.9294, alpha: 1.0)//color hex #89d7ed
        backgroundNode.size = CGSize(width: self.size.width, height:self.size.height * 0.86)
        //nodes_Container.anchorPoint = CGPoint.zero
        backgroundNode.position = CGPoint(x: self.size.width/2, y: self.size.height/1.75)
        return backgroundNode
    }
    
    
    func desecheoIslandCover()-> SKSpriteNode {//properties for Desecheo island cover
        let desecheoCover = SKSpriteNode()
        desecheoCover.color = UIColor.init(red: 0.5373, green: 0.8431, blue: 0.9294, alpha: 1.0)//color hex #89d7ed
        desecheoCover.size = CGSize(width: 10, height:10)
        desecheoCover.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        desecheoCover.position = CGPoint(x: -8, y: 239)
        desecheoCover.zPosition = 1
        return desecheoCover
    }
    
    func labelForTimer(TimerLabel: SKLabelNode) -> SKLabelNode {
        //let label:SKLabelNode = SKLabelNode()
        TimerLabel.position = CGPoint(x: self.size.width/2, y: self.size.height/2 * 0.438)
        TimerLabel.fontName = "Arial"
        TimerLabel.fontSize = 18
        TimerLabel.fontColor = SKColor.red
        return TimerLabel
    }
    
    func timerLabelBackground() -> SKSpriteNode{
        let background = SKSpriteNode()
        background.color = UIColor.lightGray
        //background.size = CGSize(width:CGFloat(60), height:CGFloat(20))
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2 * 0.480)
        //background.zPosition = -2
        return background
    }
    
    func labelForMunicipioNames(NameMunicipioLabel: SKLabelNode) -> SKLabelNode {
        NameMunicipioLabel.position = CGPoint(x: self.size.width/2, y: self.size.height/2 * 0.14)
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
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2 * 0.18)
        background.size = municipioNameLabel.frame.size
        //background.zPosition = -1
        return background
    }

    override public func update(_ currentTime: TimeInterval) {/*Esta funcion ejecuta cada segundo para la funcionalidad del reloj. Los print statements son para uso del programador(comentar/descomentar todos los print statements a la misma vez, para entender mejor como funciona esta funcion)*/

        skipButtonPenalty = 15
        penalty = 3//numero de segundos que se anaden a los segundos
            
        if completedGame == false{//Esta linea se utiliza para detener el reloj una vez completado el juego
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
                    print("inside")
                    seconds = seconds + penalty
                    //El if statement abajo substituye(0 resume) los proximos if statements comentados,si los segundos al sumarle el penalty sobrepasan 59, dentro del if se convierte a la cantidad de segundos correspondientes osea 60 a 0, 61 a 1 etc....
                    if seconds >= 60{
                        seconds = seconds - 60//me percate que restandole 60 a los segundos me da la cantidad correspondiente entendiendo que un nuevo segundero a reiniciado.
                        minutes += 1//se sobre entiendo que una vez los segundos(segundero)sobrepasa los 59 segundos se suma un mimnuto
                    }
                }
                    
                if (pressSKipButton == true){
                    print("quince segundos mas")
                    seconds = seconds + skipButtonPenalty
                    //El if statement abajo substituye(0 resume) los proximos if statements comentados,si los segundos al sumarle el penalty sobrepasan 59, dentro del if se convierte a la cantidad de segundos correspondientes osea 60 a 0, 61 a 1 etc....
                    if seconds >= 60{
                        seconds = seconds - 60//me percate que restandole 60 a los segundos me da la cantidad correspondiente entendiendo que un nuevo segundero a reiniciado.
                        minutes += 1//se sobre entiendo que una vez los segundos(segundero)sobrepasa los 59 segundos se suma un mimnuto
                    }
                }
                    
                    /*if seconds == 60 {
                       seconds = 0
                       minutes += 1
                       }
                    if seconds == 61{
                       seconds = 1
                       minutes += 1
                       }
                    if seconds == 62 {
                       seconds = 2
                       minutes += 1
                       }
                    if seconds == 63 {
                       seconds = 3
                       minutes += 1
                       }*/
                    //Formateo en que se van a desplegar los segundos y minutos(En este bloque solo se hace el rendering de los segundos y minutos cuando el programa ejecuta el penalty)
                    /*let secondsText = (seconds < 10) ?
                     "0\(seconds)" : "\(seconds)"
                    let minutesText = "\(minutes)"
                     //"0\(minutes)" : "\(minutes)"//this line of code is to show a 0(01,02,03...minutes) on the minutes counter
                     //aca va a ejecutar cuando reloj del juego lleva mas de 59 segundos de juego
                    if minutes >= 1 {
                        labelTimer.text = "\(minutesText):\(secondsText)"
                        timerBackground.size = labelTimer.frame.size
                        fail = false//reinicia bool variable, para poder volver a reutilizarse
                        }
                    //else va a ejecutar cuando los segundos son menor a un minuto
                    else{
                        labelTimer.text = "\(secondsText)"
                        timerBackground.size = labelTimer.frame.size
                        fail = false//reinicia bool variable, para poder volver a reutilizarse
                        }*/
                
                //}
                /*else{*/ //ESTE ELSE ERA PARTE DEL BLOQUE IF ANTERIOR(Y EL CONTENIDO DE ESTE ELSE ERA EL MISMO CODIGO QUE SE LEE ABAJO), DADO QUE EL CODIGO SE REPETIA PARA FORMATO Y RENDERING ELIMINE EL ELSE STATEMENT. AHORA TANTO LO QUE ENTRA AL IF ANTERIOR(FAIL == TRUE) CONT=>
                //CONT=>ASI COMO EL MOVIMIENTO DE SEGUNDOS Y MINUTOS SE FORMATEA Y DESPLIEGA EN UN SOLO BLOQUE DE CODIGO. OJO SI REACTIVA ELSE EL BLOQUE DE ABAJO HABRIA QUE INDENTARLO A LA DERECHA
                //Formateo en que se van a desplegar los segundos y minutos(En este bloque solo se hace el rendering de los segundos y minutos cuando el programa ejecuta el penalty)
                let secondsText = (seconds < 10) ?
                "0\(seconds)" : "\(seconds)"
                let minutesText = "\(minutes)"
                //"0\(minutes)" : "\(minutes)"//this line of code is to show a 0(01,02,03...minutes) on the minutes counter
                
                if minutes >= 1 {
                    labelTimer.text = "\(minutesText):\(secondsText)"
                    //timerBackground.size = labelTimer.frame.size
                    if minutes == 1{
                        timerBackground.size = labelTimer.frame.size//size para el background del timer para acomodar 0:00
                    }
                    
                    if minutes == 10{
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
                    //timerBackground.size = labelTimer.frame.size
                    
                    if fail == true{
                        fail = false
                    }
                    
                    if pressSKipButton == true{
                        pressSKipButton = false
                    }
                }
                
            //}
                    
                }
                // Este bloque lo unico que hace es ejecutar para hacer formateo y el rendering del 00 cuando comienza el juego y no vuelve a ejecutar pq rendertime su valor no vuelve a 0 si no que siempre esta en ascenso
                else if renderTime == 0.0{
                    let secondsText = (seconds < 10) ?
                    "0\(seconds)" : "\(seconds)"
                    labelTimer.text = "\(secondsText)"
                    timerBackground.size = labelTimer.frame.size//size para el background del timer para acomodar 00
                    print("rendertime = 0")//Esta linea es solo para indicar al programador cuando se ejecuta este bloque
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
                    if let spriteNode = child as? SKSpriteNode {//Esto se leeria como Si child puede ser casted as Skspritenode(esto es porque podria ocurrir que containerNode tenga algun objeto que no pueda ser casteado a Skspritenode)
                        if(touchedNode?.node?.name == spriteNode.name){//Si esta condicion prueba falsa la ejecucion va a regresar al for loop continuamente hasta que esta pruebe cierta
                            spriteNode.color = UIColor.init(red: 0.5686, green: 1, blue: 0.8745, alpha: 1.0)// Aplica color al municipio identificado correctamente. Color description: minty green(custom color no hex # available)
                            spriteNode.colorBlendFactor = 1.0//Gradacion de la transparecia del color a aplicarse, que en este caso no queremos trasparencia si no que el color se exprese en el mayor grado posible
                            
                            let currentMunicipioNameOnLabel = municipioNameLabel.text//Esta variable la cree como guia para mantener identificado el contenido del label(municipioNameLabel) antes de ser actualizado en el bloque donde se hace el rendering de los labels sobre los pueblos correspondientes
                            let municipioToBeRemovedFromArray = municipios_names_array[currentIndex]//Elemento a ser removido del array luego de ser identificado. Se guarda en esta variable que sera utilizada mas adelante en la funcion que remueve elementos del array
                            
                            //El for statement abajo va a generar la cuenta de los indices entendiendose que el cero es un lugar y esta incluido. En cada nueva iteracion el numero de indices es menor, por: let elementRemoved = municipios_names_array.remove(at:currentIndex)
                            for index in municipios_names_array {
                                if index != ""{
                                    countOfIndexes += 1//ojo esta variable se reinicia cuando el programa regresa al tope y pasa  por la declaracion de la variable
                                }
                            }
                        
                            if currentIndex <= countOfIndexes/*indexedCount*/{/*Para los efectos del juego esta condicion siempre va a probar cierta, es decir que no es necesaria sin embargo la he dejado como un marker donde podrian en el futuro ser necesario probar alguna otra condicion
                                es un lugar importante en flow de la ejecucion o lo puede ser en un futuro*/
                                print("")//uso del programador
                                print("CURRENT")//uso del programador
                                print(currentMunicipioNameOnLabel as Any)//municipio a buscar en el momento en el momento. uso del programador
                                print(countOfIndexes)//variable que lleva cuenta regresiva de los indices hayados en un momento dado en el array. uso del programador
                                print(currentIndex)//indice correspondiente al elemento(municipio a buscar) que se evalua en el momento. uso del programador
                                print(" ")//. uso del programador
                                
                                //El siguiente bloque se encarga de los atributos generales que van a compartir todos labels que se desplegan sobre los skspritenodes correspondientes a los municipios en el mapa del juego
                                locationNameLabel.text = municipioNameLabel.text
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
                                
                                //El switch statement se encarga de algunos atributos mas especificos(de un grupo de municipios o de uno, referente)de los labels que identifican en texto x municipio luego de ser identificado correctamente
                                //La ejecuccion va a continuar en el case que corresponda o incluya el string con el mismo valor de municipioNameLabel.text
                                switch municipioNameLabel.text {
                                        
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
                                        //locationNameLabel.zPosition = 1

                                        
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

                                //Este if statement ejecuta siempre que currentIndex y countOfIndexes son distintos
                                if currentIndex != countOfIndexes{
                                    if currentMunicipioNameOnLabel == municipioToBeRemovedFromArray{//Corrobora que el municipio a eliminarse del array
                                        let elementRemoved = municipios_names_array.remove(at:currentIndex)//remueve elemento identificado en el indice al momento(que es el municipio a buscar)
                                        //countIndex = countIndex - 1// Remueve un indice de la cuenta indexada
                                        print("CHANGE")//. uso del programador
                                        //reconteo para uso del programador
                                        countOfIndexes = -1//Reinicia la variable, de lo contrario el statement countOfIndexes += 1 mantendria el valor del conteo inicial y dando un valor erroneo no actualizado
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
                                else if currentIndex == countOfIndexes && currentIndex >= 1 && countOfIndexes >= 1{/*la razon de porque utilice >=1 es para capturar la ejecucion donde se identifica el ultimo elemento aparte, en dicha ocurrencia ambas varables son tambien iguales
                                    pero iguales a 0*/
                                    if currentMunicipioNameOnLabel == municipioToBeRemovedFromArray{
                                        let elementRemoved = municipios_names_array.remove(at:currentIndex)
                                        //countIndex = countIndex - 1// Remueve un indice de la cuenta
                                        currentIndex = 0/*Cuando la ejecucion entra en este bloque quiere decir que el programa llego al ultimo indice, aunque se ha utilizado el skip button de modo que vuelve al indice 0 para volver sobre los municipios que no pudieron ser identificados
                                        durante elrecorrido anterior a lo largo del array */
                                        print("CHANGE")//. uso del programador
                                        countOfIndexes = -1//Reinicia la variable, de lo contrario el statement countOfIndexes += 1 mantendria el valor del conteo inicial y dando un valor erroneo no actualizado
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
                                    completedGame = true//Se actualiza la variable completedGame para detener el reloj
                                    print("CHANGE")//. uso del programador
                                    countOfIndexes = -1//Reinicia la variable, de lo contrario el statement countOfIndexes += 1 mantendria el valor del conteo inicial y dando un valor erroneo no actualizado
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
                                if(useLine2 == true){
                                    spriteNode.addChild(firstLineLabel)//anade el label al objeto skpritenode(parte del mapa politico que corresponde a un municipio)
                                    spriteNode.addChild(secondLineLabel)
                                    municipioNameLabel.text = municipios_names_array [currentIndex]//Se desplega el nuevo municipio a ser localizado por el jugador
                                    print(municipioNameLabel.text as Any)//Para uso del programador
                                    municipiosNameBackground.size = municipioNameLabel.frame.size//Permite que el background del label reajuste su tamano de acuerdo al largo del label()
                                    useLine2 = false
                                }
                                //La ejecucion entraria en este bloque para municipios cuyo nombre solo requieren un solo label
                                else{
                                    spriteNode.addChild(locationNameLabel)//anade el label al objeto skpritenode(parte del mapa politico que corresponde a un municipio)
                                    municipioNameLabel.text = municipios_names_array [currentIndex]//Se desplega el nuevo municipio a ser localizado por el jugador
                                    print(municipioNameLabel.text as Any)//Para uso del programador
                                    municipiosNameBackground.size = municipioNameLabel.frame.size//Permite que el background del label reajuste su tamano de acuerdo al largo del label()
                                }
                                
                            }
                                
                        }
                                
                    }
                            
                }
            }
                    
                        
            //En este Else statement entra la ejecucion cuando se toca el skbody que no corresponde al municipio a localizar
            else{
                return fail = true//Esta variable se actualiza para entonces ejecutar la penalizacion de anadir 3 segundos al reloj del juego
            }
            
        }
        //Este bloque maneja el toque de pantalla para el skip button
        else if atPoint(touchLocation) == skipButton{
            currentIndex += 1//mueve el indice adelante en el array de municipios y por consiguiente va a cambiar el municipio a buscarse en orden alfabetico.
            if currentIndex == municipios_names_array.endIndex-0{//Si el indice llega al ultimo elemento el index se devuelve al 0 para comenzar a iterar los municipios que no fueron identificados en la pasada anterior del juego
                print("This")//para programador
                currentIndex = 0//resetea el index al lugar 0 cuando presionando el skip button alcanzamos el ultimo indice
            }
            pressSKipButton = true
            municipioNameLabel.text = municipios_names_array[currentIndex]
            municipiosNameBackground.size = municipioNameLabel.frame.size
            print("Skip Button touched")
        }
    }
    //Las dos proximas funciones son identicas con la diferencia de que devuelven cada una por su parte una variable diferente
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
