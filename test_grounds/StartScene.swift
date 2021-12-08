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

    let caboRojobp: UIBezierPath! = TestClass().caboRojoDrawBezierPath()
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
    
    //***let mayaguezTwobp: UIBezierPath! = TestClass().mayaguezTwoDrawBezierPath()
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
    //***let loizaTwobp:UIBezierPath! = TestClass().loizaTwoDrawBezierPath()
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
    


    
    
    var containerNode = SKNode()
    
    var labelTimer = SKLabelNode()
    var timerBackground = SKSpriteNode()
    var municipiosNameBackground = SKSpriteNode()
    
    var renderTime: TimeInterval = 0.0
    let changeTime: TimeInterval = 1
    var seconds: Int = 0
    var minutes: Int = 0
    
    var completedGame = false
    
    var twoLineText: String = ""
    var useLine2:Bool = false
    //let locationNameLabel = SKLabelNode()/*Esta declaracion estaba originalmente en override func**/
    

    

   var municipios_names_array = ["Aguada", "Aguadilla", "Aguas Buenas", "Aibonito", "Arecibo", "Arroyo", "Añasco", "Barceloneta", "Barranquitas", "Bayamón", "Cabo Rojo", "Caguas", "Camuy", "Canóvanas", "Carolina", "Cataño", "Cayey", "Ceiba", "Ciales", "Cidra", "Coamo", "Comerío", "Corozal", "Culebra", "Dorado", "Fajardo", "Florida", "Guayama", "Guayanilla", "Guaynabo","Gurabo", "Guánica", "Hatillo", "Hormigueros", "Humacao", "Isabela", "Jayuya", "Juana Díaz", "Juncos", "Lajas", "Lares", "Las Marías", "Las Piedras", "Loíza", "Luquillo", "Manatí", "Maricao", "Maunabo", "Mayagüez", "Moca", "Morovis", "Naguabo", "Naranjito", "Orocovis", "Patillas", "Peñuelas", "Ponce", "Quebradillas", "Rincón", "Rio Grande", "Sabana Grande", "Salinas", "San Germán", "San Juan", "San Lorenzo", "San Sebastián", "Santa Isabel", "Toa Alta", "Toa Baja", "Trujillo Alto", "Utuado", "Vega Alta", "Vega Baja", "Vieques", "Villalba", "Yabucoa", "Yauco" ]
    
    var municipioNameLabel = SKLabelNode()

    var touchedNode: SKPhysicsBody!
    var success: String!
    var fail: String!
    var penalty: Int!
    var nextMunicipio: Int = -1
    //var locationNameLabel = SKLabelNode()
    
     override func didMove(to view: SKView){
        
        //self.backgroundColor = SKColor.blue
        containerNode = nodesContainer()
        let backgroundSKSpriteNode: SKSpriteNode = prBackground()
        let goldBackgroundSKSpriteNode: SKSpriteNode = goldenBackground()
        
        labelTimer = labelForTimer(TimerLabel: labelTimer)
        
        timerBackground = timerLabelBackground()
        
        municipioNameLabel = labelForMunicipioNames(NameMunicipioLabel: municipioNameLabel)
        
        municipiosNameBackground = labelMunicipiosNameBackground()

        let caboRojoSKSpriteNode: SKSpriteNode = TestClass().caboRojoBezierPathToSKSpriteNode(bpCaboRojo: caboRojobp)
        containerNode.addChild(caboRojoSKSpriteNode)
        
        let hormiguerosSKSpriteNode:SKSpriteNode = TestClass().hormiguerosBezierPathToSKSpriteNode(bphormigueros: hormiguerosbp)
        containerNode.addChild(hormiguerosSKSpriteNode)
        
        let mayaguezSKSpriteNode:SKSpriteNode = TestClass().mayaguezBezierPathToSKSpriteNode(bpMayaguez: mayaguezbp)
        containerNode.addChild(mayaguezSKSpriteNode)
        
        //let mayaguezTwoSKSpriteNode:SKSpriteNode = TestClass().mayaguezTwoBezierPathToSKSpriteNode(bpMayaguezTwo: mayaguezTwobp)
         //containerNode.addChild(mayaguezTwoSKSpriteNode)
        
        let anascoSKSpriteNode: SKSpriteNode = TestClass().anascoBezierPathToSKSpriteNode(bpAnasco: anascobp)
        containerNode.addChild(anascoSKSpriteNode)
        
        let rinconSKSpriteNode: SKSpriteNode = TestClass().rinconBezierPathToSKSpriteNode(bpRincon: rinconbp)
        containerNode.addChild(rinconSKSpriteNode)
        
        let aguadaSKSpriteNode: SKSpriteNode = TestClass().aguadaBezierPathToSKSpriteNode(bpAguada: aguadabp)
        containerNode.addChild(aguadaSKSpriteNode)
        
        let aguadillaSKSpriteNode: SKSpriteNode = TestClass().aguadillaBezierPathToSKSpriteNode(bpAguadilla: aguadillabp)
        containerNode.addChild(aguadillaSKSpriteNode)
        
        let isabelaSKSpriteNode: SKSpriteNode = TestClass().isabelaBezierPathToSKSpriteNode(bpIsabela: isabelabp)
        containerNode.addChild(isabelaSKSpriteNode)
        
        
        let mocaSKSpriteNode: SKSpriteNode = TestClass().mocaBezierPathToSKSpriteNode(bpMoca: mocabp)
        containerNode.addChild(mocaSKSpriteNode)
        
        let lasMariasSKSpriteNode: SKSpriteNode = TestClass().lasMariasBezierPathToSKSpriteNode(bpLasMarias: lasMariasbp)
        containerNode.addChild(lasMariasSKSpriteNode)
        
        let maricaoSKSpriteNode: SKSpriteNode = TestClass().maricaoBezierPathToSKSpriteNode(bpMaricao:maricaobp)
        containerNode.addChild(maricaoSKSpriteNode)
        
        let sanGermanSKSpriteNode:SKSpriteNode = TestClass().sanGermanBezierPathToSKSpriteNode(bpSanGerman: sanGermanbp)
        containerNode.addChild(sanGermanSKSpriteNode)
        
        let yaucoSKSpriteNode: SKSpriteNode = TestClass().yaucoBezierPathToSKSpriteNode(bpYauco:yaucobp)
        containerNode.addChild(yaucoSKSpriteNode)
    
        let lajasSKSpriteNode: SKSpriteNode = TestClass().lajasBezierPathToSKSpriteNode(bpLajas:lajasbp)
        containerNode.addChild(lajasSKSpriteNode)
        
        let guanicaSKSpriteNode: SKSpriteNode = TestClass().guanicaBezierPathToSKSpriteNode(bpGuanica:guanicabp)
        containerNode.addChild(guanicaSKSpriteNode)
        
        let guayanillaSKSpriteNode:SKSpriteNode = TestClass().guayanillaBezierPathToSKSpriteNode(bpGuayanilla:guayanillabp)
        containerNode.addChild(guayanillaSKSpriteNode)
        
        let sanSebastianSKSpriteNode: SKSpriteNode = TestClass().sanSebastianBezierPathToSKSpriteNode(bpSanSebastian: sanSebastianbp)
        containerNode.addChild(sanSebastianSKSpriteNode)
        
        let sabanaGrandeSKSpriteNode: SKSpriteNode = TestClass().sabanaGrandeBezierPathToSKSpriteNode(bpSabanaGrande: sabanaGrandebp)
        containerNode.addChild(sabanaGrandeSKSpriteNode)
        
        let laresSKSpriteNode:SKSpriteNode = TestClass().laresBezierPathToSKSpriteNode(bpLares: laresbp)
        containerNode.addChild(laresSKSpriteNode)
    
        let penuelasSKSpriteNode:SKSpriteNode = TestClass().penuelasBezierPathToSKSpriteNode(bpPenuelas: penuelasbp)
        containerNode.addChild(penuelasSKSpriteNode)
        
        let ponceSKSpriteNode:SKSpriteNode = TestClass().ponceBezierPathToSKSpriteNode(bpPonce: poncebp)
        containerNode.addChild(ponceSKSpriteNode)
        
        let utuadoSKSpriteNode:SKSpriteNode = TestClass().utuadoBezierPathToSKSpriteNode(bpUtuado: utuadobp)
        containerNode.addChild(utuadoSKSpriteNode)
        
        let jayuyaSKSpriteNode:SKSpriteNode = TestClass().jayuyaBezierPathToSKSpriteNode(bpJayuya: jayuyabp)
        containerNode.addChild(jayuyaSKSpriteNode)
        
        let juanaDiazSKSpriteNode:SKSpriteNode = TestClass().juanaDiazBezierPathToSKSpriteNode(bpJuanaDiaz: juanaDiazbp)
        containerNode.addChild(juanaDiazSKSpriteNode)
        
        let quebradillasSKSpriteNode:SKSpriteNode = TestClass().quebradillasBezierPathToSKSpriteNode(bpQuebradillas:quebradillasbp)
        containerNode.addChild(quebradillasSKSpriteNode)
        
        let camuySKSpriteNode:SKSpriteNode = TestClass().camuyBezierPathToSKSpriteNode(bpCamuy:camuybp)
        containerNode.addChild(camuySKSpriteNode)
        
        let hatilloSKSpriteNode:SKSpriteNode = TestClass().hatilloBezierPathToSKSpriteNode(bpHatillo:hatillobp)
        containerNode.addChild(hatilloSKSpriteNode)
        
        let areciboSKSpriteNode:SKSpriteNode = TestClass().areciboBezierPathToSKSpriteNode(bpArecibo:arecibobp)
        containerNode.addChild(areciboSKSpriteNode)
        
        let adjuntasSKSpriteNode:SKSpriteNode = TestClass().adjuntasBezierPathToSKSpriteNode(bpAdjuntas: adjuntasbp)
        containerNode.addChild(adjuntasSKSpriteNode)
        
        let barcelonetaSKSpriteNode:SKSpriteNode = TestClass().barcelonetaBezierPathToSKSpriteNode(bpBarceloneta:barcelonetabp)
        containerNode.addChild(barcelonetaSKSpriteNode)
        
        let manatiSKSpriteNode:SKSpriteNode = TestClass().manatiBezierPathToSKSpriteNode(bpManati:manatibp)
        containerNode.addChild(manatiSKSpriteNode)
        
        let vegaBajaSKSpriteNode:SKSpriteNode = TestClass().vegaBajaBezierPathToSKSpriteNode(bpVegaBaja:vegaBajabp)
        containerNode.addChild(vegaBajaSKSpriteNode)
        
        let floridaSKSpriteNode:SKSpriteNode = TestClass().floridaBezierPathToSKSpriteNode(bpFlorida:floridabp)
        containerNode.addChild(floridaSKSpriteNode)
        
        let villalbaSKSpriteNode:SKSpriteNode = TestClass().villalbaBezierPathToSKSpriteNode(bpVillalba: villalbabp)
        containerNode.addChild(villalbaSKSpriteNode)
        
        let cialesSKSpriteNode:SKSpriteNode = TestClass().cialesBezierPathToSKSpriteNode(bpCiales: cialesbp)
        containerNode.addChild(cialesSKSpriteNode)
        
        let orocovisSKSpriteNode:SKSpriteNode = TestClass().orocovisBezierPathToSKSpriteNode(bpOrocovis: orocovisbp)
        containerNode.addChild(orocovisSKSpriteNode)
        
        let morovisSKSpriteNode:SKSpriteNode = TestClass().morovisBezierPathToSKSpriteNode(bpMorovis: morovisbp)
        containerNode.addChild(morovisSKSpriteNode)
        
        let corozalSKSpriteNode:SKSpriteNode = TestClass().corozalBezierPathToSKSpriteNode(bpCorozal: corozalbp)
        containerNode.addChild(corozalSKSpriteNode)
        
        let barranquitasSKSpriteNode:SKSpriteNode = TestClass().barranquitasBezierPathToSKSpriteNode(bpBarranquitas: barranquitasbp)
        containerNode.addChild(barranquitasSKSpriteNode)
        
        let comerioSKSpriteNode:SKSpriteNode = TestClass().comerioBezierPathToSKSpriteNode(bpComerio: comeriobp)
        containerNode.addChild(comerioSKSpriteNode)
        
        let coamoSKSpriteNode:SKSpriteNode = TestClass().coamoBezierPathToSKSpriteNode(bpCoamo: coamobp)
        containerNode.addChild(coamoSKSpriteNode)
        
        let naranjitoSKSpriteNode:SKSpriteNode = TestClass().naranjitoBezierPathToSKSpriteNode(bpNaranjito: naranjitobp)
        containerNode.addChild(naranjitoSKSpriteNode)
        
        let aibonitoSKSpriteNode:SKSpriteNode = TestClass().aibonitoBezierPathToSKSpriteNode(bpAibonito: aibonitobp)
        containerNode.addChild(aibonitoSKSpriteNode)
        
        let salinasSKSpriteNode:SKSpriteNode = TestClass().salinasBezierPathToSKSpriteNode(bpSalinas: salinasbp)
        containerNode.addChild(salinasSKSpriteNode)
        
        let cayeySKSpriteNode:SKSpriteNode = TestClass().cayeyBezierPathToSKSpriteNode(bpCayey: cayeybp)
        containerNode.addChild(cayeySKSpriteNode)
        
        let cidraSKSpriteNode:SKSpriteNode = TestClass().cidraBezierPathToSKSpriteNode(bpCidra: cidrabp)
        containerNode.addChild(cidraSKSpriteNode)
        
        let santaIsabelSKSpriteNode:SKSpriteNode = TestClass().santaIsabelBezierPathToSKSpriteNode(bpSantaIsabel: santaIsabelbp)
        containerNode.addChild(santaIsabelSKSpriteNode)
        
        let vegaAltaSKSpriteNode:SKSpriteNode = TestClass().vegaAltaBezierPathToSKSpriteNode(bpVegaAlta: vegaAltabp)
        containerNode.addChild(vegaAltaSKSpriteNode)
        
        let doradoSKSpriteNode:SKSpriteNode = TestClass().doradoBezierPathToSKSpriteNode(bpDorado: doradobp)
        containerNode.addChild(doradoSKSpriteNode)
        
        let toaAltaSKSpriteNode:SKSpriteNode = TestClass().toaAltaBezierPathToSKSpriteNode(bpToaAlta: toaAltabp)
        containerNode.addChild(toaAltaSKSpriteNode)
        
        let toaBajaSKSpriteNode:SKSpriteNode = TestClass().toaBajaBezierPathToSKSpriteNode(bpToaBaja: toaBajabp)
        containerNode.addChild(toaBajaSKSpriteNode)
        
        let bayamonSKSpriteNode:SKSpriteNode = TestClass().bayamonBezierPathToSKSpriteNode(bpBayamon: bayamonbp)
        containerNode.addChild(bayamonSKSpriteNode)
              
        let catanoSKSpriteNode:SKSpriteNode = TestClass().catanoBezierPathToSKSpriteNode(bpCatano: catanobp)
        containerNode.addChild(catanoSKSpriteNode)
        
        let guaynaboSKSpriteNode:SKSpriteNode = TestClass().guaynaboBezierPathToSKSpriteNode(bpGuaynabo:guaynabobp)
        containerNode.addChild(guaynaboSKSpriteNode)
        
        let sanJuanSKSpriteNode:SKSpriteNode = TestClass().sanJuanBezierPathToSKSpriteNode(bpSanJuan: sanJuanbp)
        containerNode.addChild(sanJuanSKSpriteNode)
        
        
        let caguasSKSpriteNode:SKSpriteNode = TestClass().caguasBezierPathToSKSpriteNode(bpCaguas: caguasbp)
        containerNode.addChild(caguasSKSpriteNode)
        
        let carolinaSKSpriteNode:SKSpriteNode = TestClass().carolinaBezierPathToSKSpriteNode(bpCarolina: carolinabp)
        containerNode.addChild(carolinaSKSpriteNode)
        

        
        let aguasBuenasSKSpriteNode:SKSpriteNode = TestClass().aguasBuenasBezierPathToSKSpriteNode(bpAguasBuenas: aguasBuenasbp)
        containerNode.addChild(aguasBuenasSKSpriteNode)
        
        let trujilloAltoSKSpriteNode:SKSpriteNode = TestClass().trujilloAltoBezierPathToSKSpriteNode(bpTrujilloAlto: trujilloAltobp)
        containerNode.addChild(trujilloAltoSKSpriteNode)
        
        let loizaSKSpriteNode:SKSpriteNode = TestClass().loizaBezierPathToSKSpriteNode(bpLoiza: loizabp)
        containerNode.addChild(loizaSKSpriteNode)
        
        let canovanasSKSpriteNode:SKSpriteNode = TestClass().canovanasBezierPathToSKSpriteNode(bpCanovanas: canovanasbp)
        containerNode.addChild(canovanasSKSpriteNode)
        
        let rioGrandeSKSpriteNode:SKSpriteNode = TestClass().rioGrandeBezierPathToSKSpriteNode(bpRioGrande: rioGrandebp)
        containerNode.addChild(rioGrandeSKSpriteNode)
        
        let luquilloSKSpriteNode:SKSpriteNode = TestClass().luquilloBezierPathToSKSpriteNode(bpLuquillo: luquillobp)
        containerNode.addChild(luquilloSKSpriteNode)
        
        let fajardoSKSpriteNode:SKSpriteNode = TestClass().fajardoBezierPathToSKSpriteNode(bpFajardo: fajardobp)
        containerNode.addChild(fajardoSKSpriteNode)
        
        let ceibaSKSpriteNode:SKSpriteNode = TestClass().ceibaBezierPathToSKSpriteNode(bpCeiba: ceibabp)
        containerNode.addChild(ceibaSKSpriteNode)
        
        let guraboSKSpriteNode:SKSpriteNode = TestClass().guraboBezierPathToSKSpriteNode(bpGurabo: gurabobp)
        containerNode.addChild(guraboSKSpriteNode)
        
        let juncosSKSpriteNode:SKSpriteNode = TestClass().juncosBezierPathToSKSpriteNode(bpJuncos: juncosbp)
        containerNode.addChild(juncosSKSpriteNode)
        
        
        
        let sanLorenzoSKSpriteNode:SKSpriteNode = TestClass().sanLorenzoBezierPathToSKSpriteNode(bpSanLorenzo: sanLorenzobp)
        containerNode.addChild(sanLorenzoSKSpriteNode)
        
        let guayamaSKSpriteNode:SKSpriteNode = TestClass().guayamaBezierPathToSKSpriteNode(bpGuayama: guayamabp)
        containerNode.addChild(guayamaSKSpriteNode)
        
        let arroyoSKSpriteNode:SKSpriteNode = TestClass().arroyoBezierPathToSKSpriteNode(bpArroyo: arroyobp)
        containerNode.addChild(arroyoSKSpriteNode)
        
        let patillasSKSpriteNode:SKSpriteNode = TestClass().patillasBezierPathToSKSpriteNode(bpPatillas: patillasbp)
        containerNode.addChild(patillasSKSpriteNode)
        
        let maunaboSKSpriteNode:SKSpriteNode = TestClass().maunaboBezierPathToSKSpriteNode(bpMaunabo: maunabobp)
        containerNode.addChild(maunaboSKSpriteNode)
        
        let yabucoaSKSpriteNode:SKSpriteNode = TestClass().yabucoaBezierPathToSKSpriteNode(bpYabucoa: yabucoabp)
        containerNode.addChild(yabucoaSKSpriteNode)
        
        let lasPiedrasSKSpriteNode:SKSpriteNode = TestClass().lasPiedrasBezierPathToSKSpriteNode(bpLasPiedras: lasPiedrasbp)
        containerNode.addChild(lasPiedrasSKSpriteNode)
        
        let humacaoSKSpriteNode:SKSpriteNode = TestClass().humacaoBezierPathToSKSpriteNode(bpHumacao: humacaobp)
        containerNode.addChild(humacaoSKSpriteNode)
        
        let naguaboSKSpriteNode:SKSpriteNode = TestClass().naguaboBezierPathToSKSpriteNode(bpNaguabo: naguabobp)
        containerNode.addChild(naguaboSKSpriteNode)
        
        let viequesSKSpriteNode:SKSpriteNode = TestClass().viequesBezierPathToSKSpriteNode(bpVieques: viequesbp)
        containerNode.addChild(viequesSKSpriteNode)
        
        let culebraSKSpriteNode:SKSpriteNode = TestClass().culebraBezierPathToSKSpriteNode(bpCulebra: culebrabp)
        containerNode.addChild(culebraSKSpriteNode)
        
        self.addChild(goldBackgroundSKSpriteNode)
        self.addChild(backgroundSKSpriteNode)
        self.addChild(timerBackground)
        self.addChild(labelTimer)
        self.addChild(municipiosNameBackground)
        self.addChild(municipioNameLabel)
        self.addChild(containerNode)
        
        sleep(2)
        
        
        }

       func nodesContainer() -> SKNode{
           let nodes_Container = SKNode()
           //nodes_Container.color = UIColor.white
           //nodes_Container.size = CGSize(width: self.size.width * 0.90, height:self.size.height * 0.90)
           //nodes_Container.anchorPoint = CGPoint.zero
           //nodes_Container.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
           return  nodes_Container
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
    
    func labelForTimer(TimerLabel: SKLabelNode) -> SKLabelNode {
    
        //let label:SKLabelNode = SKLabelNode()
        TimerLabel.position = CGPoint(x: self.size.width/2, y: self.size.height/2 * 1.85)
        TimerLabel.fontName = "Arial"
        TimerLabel.fontSize = 18
        TimerLabel.fontColor = SKColor.red
        return TimerLabel
    
        }
    func timerLabelBackground() -> SKSpriteNode{
        let background = SKSpriteNode()
        background.color = UIColor.white
        //background.size = CGSize(width:CGFloat(60), height:CGFloat(20))
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2 * 1.89)
        //background.zPosition = -2
        
        
        return background
    }
    func labelForMunicipioNames(NameMunicipioLabel: SKLabelNode) -> SKLabelNode {
     
        NameMunicipioLabel.position = CGPoint(x: self.size.width/2, y: self.size.height/2 * 0.14)
        NameMunicipioLabel.fontName = "Helvetica"
        NameMunicipioLabel.fontSize = 18
        NameMunicipioLabel.fontColor = SKColor.red
        NameMunicipioLabel.text = "Adjuntas"
        municipiosNameBackground.size = NameMunicipioLabel.frame.size
        
        //NameMunicipioLabel.zPosition = 2
        return NameMunicipioLabel
        
    }
    
    func labelMunicipiosNameBackground() -> SKSpriteNode{
        let background = SKSpriteNode()
        background.color = UIColor.white
        background.size = CGSize(width:CGFloat(75), height:CGFloat(17))
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2 * 0.18)
        background.size = municipioNameLabel.frame.size
        
        //background.zPosition = -1
        
        
        return background
    }

    override public func update(_ currentTime: TimeInterval) {

        penalty = 3
        
        if completedGame == false{
        if currentTime > renderTime{
            if renderTime > 0{
                seconds += 1
                
                 if seconds == 60 {
                    seconds = 0
                    minutes += 1
                    }
                 if(fail == "True"){
                    print("inside")
                    seconds = seconds + penalty
                    
                    if seconds == 60 {
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
                    }
                
                    let secondsText = (seconds < 10) ?
                     "0\(seconds)" : "\(seconds)"
                    let minutesText = "\(minutes)"
                     //"0\(minutes)" : "\(minutes)"//this line of code is to show a 0(01,02,03...minutes) on the minutes counter
                     
                    
                    if minutes >= 1 {
                        labelTimer.text = "\(minutesText):\(secondsText)"
                        timerBackground.size = labelTimer.frame.size
                        fail = ""
                    }
                    
                    else{
                        labelTimer.text = "\(secondsText)"
                        timerBackground.size = labelTimer.frame.size
                        fail = ""
                    }
                 }
                 else{
                       let secondsText = (seconds < 10) ?
                        "0\(seconds)" : "\(seconds)"
                        let minutesText = "\(minutes)"
                        //"0\(minutes)" : "\(minutes)"//this line of code is to show a 0(01,02,03...minutes) on the minutes counter
                    
                        if minutes >= 1 {
                            labelTimer.text = "\(minutesText):\(secondsText)"
                            timerBackground.size = labelTimer.frame.size

                        //fail = ""
                        }
                      
                        else{
                            labelTimer.text = "\(secondsText)"
                            timerBackground.size = labelTimer.frame.size
                    }
                }
            }
        renderTime = currentTime + changeTime
        }
       }
      }
    
    
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
                   /*guard let touch = touches.first else {
                    return
         }*/let touch = touches.first!
                 
            let touchLocation = touch.location(in: self)
            touchedNode = self.physicsWorld.body(at:touchLocation)
            
            let locationNameLabel = SKLabelNode()
            let firstLineLabel = SKLabelNode()
            let secondLineLabel = SKLabelNode()
            
            if (touchedNode != nil){
                if (municipioNameLabel.text == touchedNode?.node?.name){
                    for child in containerNode.children {
                        if let spriteNode = child as? SKSpriteNode {
                            if(touchedNode?.node?.name == spriteNode.name){
                                spriteNode.color = UIColor.init(red: 0.5686, green: 1, blue: 0.8745, alpha: 1.0)//Color description: minty green(custom color no hex # available)
                                spriteNode.colorBlendFactor = 1.0//0.5
                                nextMunicipio += 1
                                if nextMunicipio <= 76 {//76
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
                                    
                                    switch municipioNameLabel.text {
                                        
                                        case  "Adjuntas", "Aguada", "Añasco", "Lajas", "Maricao", "Las Marías", "Moca", "Yauco", "Guánica", "Lares", "Arecibo", "Utuado", "Ponce", "Jayuya",
                                              "Manatí", "Coamo", "Orocovis", "Villalba", "Comerío", "Toa Alta", "Caguas", "Cidra", "Salinas", "Culebra", "Naguabo", "Yabucoa" :

                                            locationNameLabel.horizontalAlignmentMode = .center
                                            locationNameLabel.verticalAlignmentMode = .center
                                        
                                        case "Camuy", "Aguadilla", "Juncos":
                                            locationNameLabel.fontSize = 5.0
                                            locationNameLabel.position = CGPoint(x: -2.0, y: 0.0)
                                        
                                        case "Cayey":
                                            locationNameLabel.position = CGPoint(x: -6.5, y: 3.0)
                                        
                                        case "Isabela", " Corozal", "Morovis", "Aibonito", "Gurabo", "Luquillo":
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
                                    
                                    if(useLine2 == true){
                                        
                                        spriteNode.addChild(firstLineLabel)
                                        spriteNode.addChild(secondLineLabel)
                                        municipioNameLabel.text = municipios_names_array [nextMunicipio]
                                        municipiosNameBackground.size = municipioNameLabel.frame.size
                                        useLine2 = false
                                    }

                                    else{
                                        spriteNode.addChild(locationNameLabel)
                                        municipioNameLabel.text = municipios_names_array [nextMunicipio]
                                        municipiosNameBackground.size = municipioNameLabel.frame.size
                                    }
                                }
                                    
                                    
                                else{
                                    locationNameLabel.text = municipioNameLabel.text
                                    locationNameLabel.fontName = "Helvetica"
                                    locationNameLabel.fontColor = UIColor.black
                                    locationNameLabel.xScale = -1.0
                                    
                                    
                                    
                                    locationNameLabel.fontSize = 7
                                    locationNameLabel.horizontalAlignmentMode = .center
                                    locationNameLabel.verticalAlignmentMode = .center
                                    
                                    locationNameLabel.zRotation = 9.44
                                    spriteNode.addChild(locationNameLabel)
    
                                    municipioNameLabel.text = "end of array"
                                    municipiosNameBackground.size = municipioNameLabel.frame.size
                                    
                                    completedGame = true
                                }
                                
                                

                                }
                                
                            }
                            
                        }
                      }
                    
                        
                        //}
                else{
                     return fail = "True"
                    }
            }


    }
    
    func splitTextIntoFields(theText:SKLabelNode)->String{
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
