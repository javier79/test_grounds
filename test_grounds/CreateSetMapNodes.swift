//
//  CreateSetMapNodes.swift
//  test_grounds
//
//  Created by javier pizarro on 3/20/23.
//  Copyright © 2023 javierpizarro. All rights reserved.
//
import SpriteKit
import Foundation

class CreateSetMapNodes{
    
     func initSetcontainerNodeAndChildren()->SKNode{
         let containerSKNode = SKNode()
         let coverDesecheoIslandSKSpriteNode: SKSpriteNode = CreateSetMapNodes().desecheoIslandCover()
         let rectangularFrameSKSPriteNode: SKSpriteNode = CreateSetMapNodes().rectangleBezierPathToSKSpriteNode(bpRectangle: TestClass().createRectangle())
         let rectangularViequesFrameSKSPriteNode: SKSpriteNode = CreateSetMapNodes().rectangleViequesBezierPathToSKSpriteNode(bpViequesRectangle: TestClass().createViequesRectangle())
         let rectangularCulebraFrameSKSPriteNode: SKSpriteNode = CreateSetMapNodes().rectangleCulebraBezierPathToSKSpriteNode(bpCulebraRectangle: TestClass().createCulebraRectangle())
         let caboRojoSKSpriteNode: SKSpriteNode = CreateSetMapNodes().caboRojoBezierPathToSKSpriteNode(bpCaboRojo: TestClass().caboRojoDrawBezierPath())
         let hormiguerosSKSpriteNode:SKSpriteNode = CreateSetMapNodes().hormiguerosBezierPathToSKSpriteNode(bphormigueros: TestClass().hormiguerosDrawBezierPath())
         let mayaguezSKSpriteNode:SKSpriteNode = CreateSetMapNodes().mayaguezBezierPathToSKSpriteNode(bpMayaguez: TestClass().mayaguezDrawBezierPath())
         let anascoSKSpriteNode: SKSpriteNode = CreateSetMapNodes().anascoBezierPathToSKSpriteNode(bpAnasco: TestClass().anascoDrawBezierPath())
         let rinconSKSpriteNode: SKSpriteNode = CreateSetMapNodes().rinconBezierPathToSKSpriteNode(bpRincon: TestClass().rinconDrawBezierPath())
         let aguadaSKSpriteNode: SKSpriteNode = CreateSetMapNodes().aguadaBezierPathToSKSpriteNode(bpAguada: TestClass().aguadaDrawBezierPath())
         let aguadillaSKSpriteNode: SKSpriteNode = CreateSetMapNodes().aguadillaBezierPathToSKSpriteNode(bpAguadilla: TestClass().aguadillaDrawBezierPath())
         let isabelaSKSpriteNode: SKSpriteNode = CreateSetMapNodes().isabelaBezierPathToSKSpriteNode(bpIsabela: TestClass().isabelaDrawBezierPath())
         let mocaSKSpriteNode: SKSpriteNode = CreateSetMapNodes().mocaBezierPathToSKSpriteNode(bpMoca: TestClass().mocaDrawBezierPath())
         let lasMariasSKSpriteNode: SKSpriteNode = CreateSetMapNodes().lasMariasBezierPathToSKSpriteNode(bpLasMarias: TestClass().lasMariasDrawBezierPath())
         let maricaoSKSpriteNode: SKSpriteNode = CreateSetMapNodes().maricaoBezierPathToSKSpriteNode(bpMaricao:TestClass().maricaoDrawBezierPath())
         let sanGermanSKSpriteNode:SKSpriteNode = CreateSetMapNodes().sanGermanBezierPathToSKSpriteNode(bpSanGerman: TestClass().sanGermanDrawBezierPath())
         let yaucoSKSpriteNode: SKSpriteNode = CreateSetMapNodes().yaucoBezierPathToSKSpriteNode(bpYauco:TestClass().yaucoDrawBezierPath())
         let lajasSKSpriteNode: SKSpriteNode = CreateSetMapNodes().lajasBezierPathToSKSpriteNode(bpLajas:TestClass().lajasDrawBezierPath())
         let guanicaSKSpriteNode: SKSpriteNode = CreateSetMapNodes().guanicaBezierPathToSKSpriteNode(bpGuanica:TestClass().guanicaDrawBezierPath())
         let guayanillaSKSpriteNode:SKSpriteNode = CreateSetMapNodes().guayanillaBezierPathToSKSpriteNode(bpGuayanilla:TestClass().guayanillaDrawBezierPath())
         let sanSebastianSKSpriteNode: SKSpriteNode = CreateSetMapNodes().sanSebastianBezierPathToSKSpriteNode(bpSanSebastian: TestClass().sanSebastianDrawBezierPath())
         let sabanaGrandeSKSpriteNode: SKSpriteNode = CreateSetMapNodes().sabanaGrandeBezierPathToSKSpriteNode(bpSabanaGrande: TestClass().sabanaGrandeDrawBezierPath())
         let laresSKSpriteNode:SKSpriteNode = CreateSetMapNodes().laresBezierPathToSKSpriteNode(bpLares:TestClass().laresDrawBezierPath())
         let penuelasSKSpriteNode:SKSpriteNode = CreateSetMapNodes().penuelasBezierPathToSKSpriteNode(bpPenuelas:TestClass().penuelasDrawBezierPath())
         let ponceSKSpriteNode:SKSpriteNode = CreateSetMapNodes().ponceBezierPathToSKSpriteNode(bpPonce: TestClass().ponceDrawBezierPath())
         let utuadoSKSpriteNode:SKSpriteNode = CreateSetMapNodes().utuadoBezierPathToSKSpriteNode(bpUtuado: TestClass().utuadoDrawBezierPath())
         let jayuyaSKSpriteNode:SKSpriteNode = CreateSetMapNodes().jayuyaBezierPathToSKSpriteNode(bpJayuya: TestClass().jayuyaDrawBezierPath())
         let juanaDiazSKSpriteNode:SKSpriteNode = CreateSetMapNodes().juanaDiazBezierPathToSKSpriteNode(bpJuanaDiaz:TestClass().juanaDiazDrawBezierPath())
         let quebradillasSKSpriteNode:SKSpriteNode = CreateSetMapNodes().quebradillasBezierPathToSKSpriteNode(bpQuebradillas:TestClass().quebradillasDrawBezierPath())
         let camuySKSpriteNode:SKSpriteNode = CreateSetMapNodes().camuyBezierPathToSKSpriteNode(bpCamuy:TestClass().camuyDrawBezierPath())
         let hatilloSKSpriteNode:SKSpriteNode = CreateSetMapNodes().hatilloBezierPathToSKSpriteNode(bpHatillo:TestClass().hatilloDrawBezierPath())
         let areciboSKSpriteNode:SKSpriteNode = CreateSetMapNodes().areciboBezierPathToSKSpriteNode(bpArecibo:TestClass().areciboDrawBezierPath())
         let adjuntasSKSpriteNode:SKSpriteNode = CreateSetMapNodes().adjuntasBezierPathToSKSpriteNode(bpAdjuntas: TestClass().adjuntasDrawBezierPath())
         let barcelonetaSKSpriteNode:SKSpriteNode = CreateSetMapNodes().barcelonetaBezierPathToSKSpriteNode(bpBarceloneta:TestClass().barcelonetaDrawBezierPath())
         let manatiSKSpriteNode:SKSpriteNode = CreateSetMapNodes().manatiBezierPathToSKSpriteNode(bpManati:TestClass().manatiDrawBezierPath())
         let vegaBajaSKSpriteNode:SKSpriteNode = CreateSetMapNodes().vegaBajaBezierPathToSKSpriteNode(bpVegaBaja:TestClass().vegaBajaDrawBezierPath())
         let floridaSKSpriteNode:SKSpriteNode = CreateSetMapNodes().floridaBezierPathToSKSpriteNode(bpFlorida:TestClass().floridaDrawBezierPath())
         let villalbaSKSpriteNode:SKSpriteNode = CreateSetMapNodes().villalbaBezierPathToSKSpriteNode(bpVillalba: TestClass().villalbaDrawBezierPath())
         let cialesSKSpriteNode:SKSpriteNode = CreateSetMapNodes().cialesBezierPathToSKSpriteNode(bpCiales: TestClass().cialesDrawBezierPath())
         let orocovisSKSpriteNode:SKSpriteNode = CreateSetMapNodes().orocovisBezierPathToSKSpriteNode(bpOrocovis: TestClass().orocovisDrawBezierPath())
         let morovisSKSpriteNode:SKSpriteNode = CreateSetMapNodes().morovisBezierPathToSKSpriteNode(bpMorovis:TestClass().morovisDrawBezierPath())
         let corozalSKSpriteNode:SKSpriteNode = CreateSetMapNodes().corozalBezierPathToSKSpriteNode(bpCorozal: TestClass().corozalDrawBezierPath())
         let barranquitasSKSpriteNode:SKSpriteNode = CreateSetMapNodes().barranquitasBezierPathToSKSpriteNode(bpBarranquitas: TestClass().barranquitasDrawBezierPath())
         let comerioSKSpriteNode:SKSpriteNode = CreateSetMapNodes().comerioBezierPathToSKSpriteNode(bpComerio: TestClass().comerioDrawBezierPath())
         let coamoSKSpriteNode:SKSpriteNode = CreateSetMapNodes().coamoBezierPathToSKSpriteNode(bpCoamo: TestClass().coamoDrawBezierPath())
         let naranjitoSKSpriteNode:SKSpriteNode = CreateSetMapNodes().naranjitoBezierPathToSKSpriteNode(bpNaranjito: TestClass().naranjitoDrawBezierPath())
         let aibonitoSKSpriteNode:SKSpriteNode = CreateSetMapNodes().aibonitoBezierPathToSKSpriteNode(bpAibonito: TestClass().aibonitoDrawBezierPath())
         let salinasSKSpriteNode:SKSpriteNode = CreateSetMapNodes().salinasBezierPathToSKSpriteNode(bpSalinas: TestClass().salinasDrawBezierPath())
         let cayeySKSpriteNode:SKSpriteNode = CreateSetMapNodes().cayeyBezierPathToSKSpriteNode(bpCayey: TestClass().cayeyDrawBezierPath())
         let cidraSKSpriteNode:SKSpriteNode = CreateSetMapNodes().cidraBezierPathToSKSpriteNode(bpCidra: TestClass().cidraDrawBezierPath())
         let santaIsabelSKSpriteNode:SKSpriteNode = CreateSetMapNodes().santaIsabelBezierPathToSKSpriteNode(bpSantaIsabel: TestClass().santaIsabelDrawBezierPath())
         let vegaAltaSKSpriteNode:SKSpriteNode = CreateSetMapNodes().vegaAltaBezierPathToSKSpriteNode(bpVegaAlta: TestClass().vegaAltaDrawBezierPath())
         let doradoSKSpriteNode:SKSpriteNode = CreateSetMapNodes().doradoBezierPathToSKSpriteNode(bpDorado: TestClass().doradoDrawBezierPath())
         let toaAltaSKSpriteNode:SKSpriteNode = CreateSetMapNodes().toaAltaBezierPathToSKSpriteNode(bpToaAlta: TestClass().toaAltaDrawBezierPath())
         let toaBajaSKSpriteNode:SKSpriteNode = CreateSetMapNodes().toaBajaBezierPathToSKSpriteNode(bpToaBaja: TestClass().toaBajaDrawBezierPath())
         let bayamonSKSpriteNode:SKSpriteNode = CreateSetMapNodes().bayamonBezierPathToSKSpriteNode(bpBayamon: TestClass().bayamonDrawBezierPath())
         let catanoSKSpriteNode:SKSpriteNode = CreateSetMapNodes().catanoBezierPathToSKSpriteNode(bpCatano:TestClass().catanoDrawBezierPath())
         let guaynaboSKSpriteNode:SKSpriteNode = CreateSetMapNodes().guaynaboBezierPathToSKSpriteNode(bpGuaynabo:TestClass().guaynaboDrawBezierPath())
         let sanJuanSKSpriteNode:SKSpriteNode = CreateSetMapNodes().sanJuanBezierPathToSKSpriteNode(bpSanJuan: TestClass().sanJuanDrawBezierPath())
         let caguasSKSpriteNode:SKSpriteNode = CreateSetMapNodes().caguasBezierPathToSKSpriteNode(bpCaguas: TestClass().caguasDrawBezierPath())
         let carolinaSKSpriteNode:SKSpriteNode = CreateSetMapNodes().carolinaBezierPathToSKSpriteNode(bpCarolina: TestClass().carolinaDrawBezierPath())
         let aguasBuenasSKSpriteNode:SKSpriteNode = CreateSetMapNodes().aguasBuenasBezierPathToSKSpriteNode(bpAguasBuenas: TestClass().aguasBuenasDrawBezierPath())
         let trujilloAltoSKSpriteNode:SKSpriteNode = CreateSetMapNodes().trujilloAltoBezierPathToSKSpriteNode(bpTrujilloAlto: TestClass().trujilloAltoDrawBezierPath())
         let loizaSKSpriteNode:SKSpriteNode = CreateSetMapNodes().loizaBezierPathToSKSpriteNode(bpLoiza: TestClass().loizaDrawBezierPath())
         /*let loizaTwoSKSpriteNode:SKSpriteNode = TestClass().loizaTwoBezierPathToSKSpriteNode(bpLoizaTwo: loizaTwobp)
         containerNode.addChild(loizaTwoSKSpriteNode)*/
         let canovanasSKSpriteNode:SKSpriteNode = CreateSetMapNodes().canovanasBezierPathToSKSpriteNode(bpCanovanas: TestClass().canovanasDrawBezierPath())
         let rioGrandeSKSpriteNode:SKSpriteNode = CreateSetMapNodes().rioGrandeBezierPathToSKSpriteNode(bpRioGrande: TestClass().rioGrandeDrawBezierPath())
         let luquilloSKSpriteNode:SKSpriteNode = CreateSetMapNodes().luquilloBezierPathToSKSpriteNode(bpLuquillo: TestClass().luquilloDrawBezierPath())
         let fajardoSKSpriteNode:SKSpriteNode = CreateSetMapNodes().fajardoBezierPathToSKSpriteNode(bpFajardo: TestClass().fajardoDrawBezierPath())
         let ceibaSKSpriteNode:SKSpriteNode = CreateSetMapNodes().ceibaBezierPathToSKSpriteNode(bpCeiba: TestClass().ceibaDrawBezierPath())
         let guraboSKSpriteNode:SKSpriteNode = CreateSetMapNodes().guraboBezierPathToSKSpriteNode(bpGurabo: TestClass().guraboDrawBezierPath())
         let juncosSKSpriteNode:SKSpriteNode = CreateSetMapNodes().juncosBezierPathToSKSpriteNode(bpJuncos:TestClass().juncosDrawBezierPath())
         let sanLorenzoSKSpriteNode:SKSpriteNode = CreateSetMapNodes().sanLorenzoBezierPathToSKSpriteNode(bpSanLorenzo: TestClass().sanLorenzoDrawBezierPath())
         let guayamaSKSpriteNode:SKSpriteNode = CreateSetMapNodes().guayamaBezierPathToSKSpriteNode(bpGuayama: TestClass().guayamaDrawBezierPath())
         let arroyoSKSpriteNode:SKSpriteNode = CreateSetMapNodes().arroyoBezierPathToSKSpriteNode(bpArroyo: TestClass().arroyoDrawBezierPath())
         let patillasSKSpriteNode:SKSpriteNode = CreateSetMapNodes().patillasBezierPathToSKSpriteNode(bpPatillas: TestClass().patillasDrawBezierPath())
         let maunaboSKSpriteNode:SKSpriteNode = CreateSetMapNodes().maunaboBezierPathToSKSpriteNode(bpMaunabo: TestClass().maunaboDrawBezierPath())
         let yabucoaSKSpriteNode:SKSpriteNode = CreateSetMapNodes().yabucoaBezierPathToSKSpriteNode(bpYabucoa:TestClass().yabucoaDrawBezierPath())
         let lasPiedrasSKSpriteNode:SKSpriteNode = CreateSetMapNodes().lasPiedrasBezierPathToSKSpriteNode(bpLasPiedras: TestClass().lasPiedrasDrawBezierPath())
         let humacaoSKSpriteNode:SKSpriteNode = CreateSetMapNodes().humacaoBezierPathToSKSpriteNode(bpHumacao: TestClass().humacaoDrawBezierPath())
         let naguaboSKSpriteNode:SKSpriteNode = CreateSetMapNodes().naguaboBezierPathToSKSpriteNode(bpNaguabo: TestClass().naguaboDrawBezierPath())
         let viequesSKSpriteNode:SKSpriteNode = CreateSetMapNodes().viequesBezierPathToSKSpriteNode(bpVieques: TestClass().viequesDrawBezierPath())
         let culebraSKSpriteNode:SKSpriteNode = CreateSetMapNodes().culebraBezierPathToSKSpriteNode(bpCulebra: TestClass().culebraDrawBezierPath())
        
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: coverDesecheoIslandSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: rectangularFrameSKSPriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: rectangularViequesFrameSKSPriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: rectangularCulebraFrameSKSPriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: caboRojoSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: hormiguerosSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: mayaguezSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: anascoSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: rinconSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: aguadaSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: aguadillaSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: isabelaSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: mocaSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: lasMariasSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: maricaoSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: sanGermanSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: yaucoSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: lajasSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: guanicaSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: guayanillaSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: sanSebastianSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: sabanaGrandeSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: laresSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: penuelasSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: ponceSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: utuadoSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: jayuyaSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: juanaDiazSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: quebradillasSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: camuySKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: hatilloSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: areciboSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: adjuntasSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: barcelonetaSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: manatiSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: vegaBajaSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: floridaSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: villalbaSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: cialesSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: orocovisSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: morovisSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: corozalSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: barranquitasSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: comerioSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: coamoSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: naranjitoSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: aibonitoSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: salinasSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: cayeySKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: cidraSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: santaIsabelSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: vegaAltaSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: doradoSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: toaAltaSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: toaBajaSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: bayamonSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: catanoSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: guaynaboSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: sanJuanSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: caguasSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: carolinaSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: aguasBuenasSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: trujilloAltoSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: loizaSKSpriteNode)
         /*let loizaTwoSKSpriteNode:SKSpriteNode = TestClass().loizaTwoBezierPathToSKSpriteNode(bpLoizaTwo: loizaTwobp)
         containerNode.addChild(loizaTwoSKSpriteNode)*/
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: canovanasSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: rioGrandeSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: luquilloSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: fajardoSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: ceibaSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: guraboSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: juncosSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: sanLorenzoSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: guayamaSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: arroyoSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: patillasSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: maunaboSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: yabucoaSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: lasPiedrasSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: humacaoSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: naguaboSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: viequesSKSpriteNode)
         addChildSKSpriteNodeToParentSKNode(parent: containerSKNode, children: culebraSKSpriteNode)
         
         //Following block add municipios name labels to map nodes, when one of the Practice games is selected OR WHEN GAMEOVERSCENE IS ADDED DUE ITS MAP NEEDS NAMELABELS ON MAP
         //StartMenu.playPracticeAlphabeticGame and StartMenu.playPracticeRandomGame are set to true when a practice game is selected at StartMenu Scene or when user wants to play practice game again in GameOverScene
         if StartMenu.playPracticeAlphabeticGame == true || StartMenu.playPracticeRandomGame == true || StartScene.completedGame == true || RandomGame.completedGame == true || PracticeAlphabeticGame.completedGame == true || PracticeRandomGame.completedGame == true{
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:caboRojoSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:hormiguerosSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:mayaguezSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:anascoSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:rinconSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:aguadaSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:aguadillaSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:isabelaSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:mocaSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:lasMariasSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:maricaoSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:sanGermanSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:yaucoSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:lajasSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:guanicaSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:guayanillaSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:sanSebastianSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:sabanaGrandeSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:laresSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:penuelasSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:ponceSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:utuadoSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:jayuyaSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:juanaDiazSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:quebradillasSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:camuySKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:hatilloSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:areciboSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:adjuntasSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:barcelonetaSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:manatiSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:vegaBajaSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:floridaSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:villalbaSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:cialesSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:orocovisSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:morovisSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:corozalSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:barranquitasSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:comerioSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:coamoSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:naranjitoSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:aibonitoSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:salinasSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:cayeySKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:cidraSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:santaIsabelSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:vegaAltaSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:doradoSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:toaAltaSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:toaBajaSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:bayamonSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:catanoSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:guaynaboSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:sanJuanSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:caguasSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:carolinaSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:aguasBuenasSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:trujilloAltoSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:loizaSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:canovanasSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:rioGrandeSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:luquilloSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:fajardoSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:ceibaSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:guraboSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:juncosSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:sanLorenzoSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:guayamaSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:arroyoSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:patillasSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:maunaboSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:yabucoaSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:lasPiedrasSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:humacaoSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:naguaboSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:viequesSKSpriteNode)
             setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:culebraSKSpriteNode)
             //next block resets variables when play again is selected for Practice games which allows this block to execute from the top
             if StartMenu.playPracticeAlphabeticGame == true{
                 StartMenu.playPracticeAlphabeticGame = false
             }
             else if StartMenu.playPracticeRandomGame == true{
                 StartMenu.playPracticeRandomGame = false
             }
             
             
         }
         return containerSKNode
     }
    
    
     
     func setLabelForMunicipioNameAndAddToNodePractice(nodeSprite:SKSpriteNode){
         
         let locationNameLabel = SKLabelNode()/**Label serves two uses, first it's the display label on map for short named municipios but also is use to pass its text Attributes to function splitTextIntoFields*/
         let firstLineLabel = SKLabelNode()//First label for long named municipio names(ex. Aguas Buenas)
         let secondLineLabel = SKLabelNode()//Second label for long named municipio names(ex Aguas Buenas)
         //locationNameLabel.text = municipioNameLabel.text//Text atribute is pass to locationNameLabel to be used by one word municipios(except for Las Piedras and Las Marias) same
         var useLine2 = false
         
        func splitTextIntoFields(theText:String)->String{
            
            let twoLineText = theText//text to split in two(ex:"Aguas Buenas")

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
            let twoLineText = theText
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
        //Following block will execute when function is called from GameOverScene where nodes are rendered painted in green
        if StartScene.completedGame == true || RandomGame.completedGame == true || PracticeAlphabeticGame.completedGame == true || PracticeRandomGame.completedGame == true{
             nodeSprite.color = UIColor.init(red: 0.5686, green: 1, blue: 0.8745, alpha: 1.0)
             nodeSprite.colorBlendFactor = 1.0
             nodeSprite.physicsBody = nil
             
         }
         
         locationNameLabel.text = nodeSprite.name
         
         /**The switch statement allows to set the label(that identifies each municipio in the map) with attributes necessary to acamodate text, set positioning and other attributes  exclusive to a group of nodes or individual nodes  */
         /**The execution will enter the case that corresponds with the String value of municipioNameLabel.text*/
         switch locationNameLabel.text {
                 
             case "Adjuntas", "Aguada", "Añasco", "Lajas", "Maricao", "Las Marías", "Moca", "Yauco", "Guánica", "Lares", "Arecibo", "Utuado", "Ponce", "Jayuya",
                  "Manatí", "Coamo", "Orocovis", "Villalba", "Comerío", "Toa Alta", "Caguas", "Cidra", "Salinas", "Culebra", "Naguabo", "Yabucoa" :
                 setOneLineMunicipioNameLabel(Oneline:locationNameLabel)//Attributes are set for label
                 locationNameLabel.horizontalAlignmentMode = .center
                 locationNameLabel.verticalAlignmentMode = .center
                 
             case "Camuy", "Aguadilla", "Juncos":
                 setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
                 locationNameLabel.fontSize = 5.5
                 locationNameLabel.position = CGPoint(x: -2.0, y: 0.0)

             case "Cayey":
                 setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
                 locationNameLabel.position = CGPoint(x: -6.5, y: 3.0)

                 
             case "Isabela", "Corozal", "Morovis", "Aibonito", "Gurabo", "Luquillo":
                 setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
                 locationNameLabel.fontSize = 5.0
                 locationNameLabel.position = CGPoint(x: 0.5, y: 0.5)
                 //locationNameLabel.zPosition = 1

                 
             case "Hormigueros" :
                 setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
                 locationNameLabel.fontSize = 4.3
                 locationNameLabel.zRotation = 10.0
                 locationNameLabel.position = CGPoint(x: -0.5, y: 2.5)
             
             case "Maunabo" :
                 setOneLineMunicipioNameLabel(Oneline:locationNameLabel)
                 locationNameLabel.fontSize = 4.5
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
         Oneline.fontName = "Helvetica"
         Oneline.fontColor = UIColor.init(red: 0.149, green: 0.149, blue: 0.149, alpha: 1.0)
         Oneline.xScale = -1.0
         Oneline.zRotation = 9.44
         Oneline.fontSize = 5.4
     }
     //sets attributes for labels to use with two word municipio names
     func setTwoLineMunicipioNameLabels(labelLineFirst:SKLabelNode, labelLineSecond:SKLabelNode){
         
         labelLineFirst.fontName = "Helvetica"
         labelLineSecond.fontName = "Helvetica"
         labelLineFirst.fontSize = 5.4
         labelLineSecond.fontSize = 5.4
         labelLineFirst.fontColor = UIColor.init(red: 0.149, green: 0.149, blue: 0.149, alpha: 1.0)
         labelLineSecond.fontColor = UIColor.init(red: 0.149, green: 0.149, blue: 0.149, alpha: 1.0)
         labelLineFirst.xScale = -1.0
         labelLineSecond.xScale = -1.0
         labelLineFirst.zRotation = 9.44
         labelLineSecond.zRotation = 9.44
     }


     
     func addChildSKSpriteNodeToParentSKNode(parent:SKNode, children:SKSpriteNode){
         if children.parent == nil{
         parent.addChild(children)
         }
     }
     
     func addChildSKLabelNodeToParentSKSpriteNode(parent:SKSpriteNode, children:SKLabelNode){
         if children.parent == nil{
         parent.addChild(children)
         }
     }
     func addChildSKSpriteNodeToParentSKLabelNode(parent:SKLabelNode, children:SKSpriteNode){
         if children.parent == nil{
         parent.addChild(children)
         }
     }
     
     func addChildSKSpriteNodeToParentSKSpriteNode(parent:SKSpriteNode, children:SKSpriteNode){
         if children.parent == nil{
         parent.addChild(children)
         }
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
     

     
     func ToSkShapeNodeAndDefaultProperties(nodeShape:SKShapeNode)-> SKSpriteNode{
         nodeShape.fillColor = UIColor.init(red: 0.78, green: 0.91, blue: 0.81, alpha: 1.00)//#C6E7CE/*(red: 0.9647, green: 0.9647, blue: 0.9647, alpha: 1.0)//f6f6f6*/
         nodeShape.strokeColor = UIColor.init(red: 0.81, green: 1.00, blue: 0.81, alpha: 1.00)//#CEFFCE/*(red: 0.80, green: 1.00, blue: 0.73, alpha: 1.00)*//*(red: 0.88, green: 0.80, blue: 0.59, alpha: 1.00)*//*(red: 0.99, green: 0.91, blue: 0.84, alpha: 1.00)//#FDE8D7*//*(red: 0.7569, green: 0.8275, blue: 0.7843, alpha: 1.0)//c1d3c8*/
         nodeShape.lineWidth = 0.5
         let view = SKView(frame: UIScreen.main.bounds)
         let texture = view.texture(from: nodeShape)!
         let skSpriteNode = SKSpriteNode(texture: texture)
         skSpriteNode.xScale = -1.0
         skSpriteNode.zRotation = 9.44
         
         return skSpriteNode
     }
     

     func caboRojoBezierPathToSKSpriteNode(bpCaboRojo: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpCaboRojo.cgPath)
         let caboRojoNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         caboRojoNode.position = CGPoint(x:80, y:143)
         //caboRojoNode.zPosition = 1
         caboRojoNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:caboRojoNode.size.width/2 * 0.5, height:caboRojoNode.size.height/2), center: CGPoint(x:-3.5, y: 0.5))
         caboRojoNode.physicsBody?.isDynamic = false
         caboRojoNode.name = "Cabo Rojo"
         return caboRojoNode
     }


     
     func hormiguerosBezierPathToSKSpriteNode(bphormigueros: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bphormigueros.cgPath)
         let hormiguerosNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         hormiguerosNode.position = CGPoint(x:90.16, y:168.58)
         hormiguerosNode.zPosition = 1//FOR LABEL TO BE LEGIBLE
         hormiguerosNode.physicsBody = SKPhysicsBody(circleOfRadius: hormiguerosNode.size.width/2 * 0.35, center: CGPoint(x:-0.7, y: -1.5))
         hormiguerosNode.physicsBody?.isDynamic = false
         hormiguerosNode.name = "Hormigueros"
         return hormiguerosNode

     }

     
     func mayaguezBezierPathToSKSpriteNode(bpMayaguez: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpMayaguez.cgPath)
         let mayaguezNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         mayaguezNode.position = CGPoint(x:53.84, y:207.63)
         //mayaguezNode.zPosition = 1
         mayaguezNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:mayaguezNode.size.width/5.7, height:mayaguezNode.size.height/6), center: CGPoint(x:-41.5, y: 18.0))
         mayaguezNode.physicsBody?.isDynamic = false
         mayaguezNode.name = "Mayagüez"
         return mayaguezNode
     }
     
    
     
     func anascoBezierPathToSKSpriteNode(bpAnasco: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpAnasco.cgPath)
         let anascoNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         anascoNode.position = CGPoint(x:86.57, y:211.47)
         //anascoNode.zPosition = 1
         anascoNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:anascoNode.size.width/2 * 1.2, height:anascoNode.size.height/2 * 0.6), center: CGPoint(x:-3.0, y: -1.7))
         anascoNode.physicsBody?.isDynamic = false
         anascoNode.name = "Añasco"
         return anascoNode
     }
     
     func rinconBezierPathToSKSpriteNode(bpRincon: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpRincon.cgPath)
         let rinconNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         rinconNode.position = CGPoint(x:60.97, y:226.45)
         //rinconNode.zPosition = 2
         rinconNode.physicsBody = SKPhysicsBody(circleOfRadius: rinconNode.size.width/2 * 0.3 , center: CGPoint(x:1.8, y: 0.5))
         rinconNode.physicsBody?.isDynamic = false
         rinconNode.name = "Rincón"
         return rinconNode
     }
     
     func aguadaBezierPathToSKSpriteNode(bpAguada: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpAguada.cgPath)
         let aguadaNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         aguadaNode.position = CGPoint(x:72.27, y:234.45)
         //aguadaNode.zPosition = 1
         aguadaNode.physicsBody = SKPhysicsBody(circleOfRadius: aguadaNode.size.width/2 * 0.45 , center: CGPoint(x:-3.5, y: 0.5))
         aguadaNode.physicsBody?.isDynamic = false
         aguadaNode.name = "Aguada"
         return aguadaNode
     }
     
     func aguadillaBezierPathToSKSpriteNode(bpAguadilla: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpAguadilla.cgPath)
         let aguadillaNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         aguadillaNode.position = CGPoint(x:91.24, y:258.84)
         //aguadillaNode.zPosition = 1
         aguadillaNode.physicsBody = SKPhysicsBody(circleOfRadius: aguadillaNode.size.width/2 * 0.45 , center: CGPoint(x:2.8, y:-4.0))
         aguadillaNode.physicsBody?.isDynamic = false
         aguadillaNode.name = "Aguadilla"
         return aguadillaNode
     }
     
     func isabelaBezierPathToSKSpriteNode(bpIsabela: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpIsabela.cgPath)
         let isabelaNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         isabelaNode.position = CGPoint(x:118.33, y:257.58)
         //isabelaNode.zPosition = 1
         isabelaNode.physicsBody = SKPhysicsBody(circleOfRadius: isabelaNode.size.width/2 * 0.35 , center: CGPoint(x:-2.0, y:0.0))
         isabelaNode.physicsBody?.isDynamic = false
         isabelaNode.name = "Isabela"
         return isabelaNode
     }
     
     func mocaBezierPathToSKSpriteNode(bpMoca: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpMoca.cgPath)
         let mocaNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         mocaNode.position = CGPoint(x:99.85, y:239.98)
         //mocaNode.zPosition = 2
         mocaNode.physicsBody = SKPhysicsBody(circleOfRadius: mocaNode.size.width/2 * 0.59 , center: CGPoint(x:1.0, y:2.0))
         mocaNode.physicsBody?.isDynamic = false
         mocaNode.name = "Moca"
         return mocaNode
     }
     
     func sanSebastianBezierPathToSKSpriteNode(bpSanSebastian: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpSanSebastian.cgPath)
         let sanSebastianNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         sanSebastianNode.position = CGPoint(x:128.96, y:222.96)
         //sanSebastianNode.zPosition = 2
         sanSebastianNode.physicsBody = SKPhysicsBody(circleOfRadius: sanSebastianNode.size.width/2 * 0.59 , center: CGPoint(x:-0.5, y:-1.0))
         sanSebastianNode.physicsBody?.isDynamic = false
         sanSebastianNode.name = "San Sebastián"
         return sanSebastianNode
     }
     
     func lasMariasBezierPathToSKSpriteNode(bpLasMarias: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpLasMarias.cgPath)
         let lasMariasNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         lasMariasNode.position = CGPoint(x:124.39, y:198.77)
         //lasMariasNode.zPosition = 1
         lasMariasNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:lasMariasNode.size.width/2 * 1.0, height:lasMariasNode.size.height/2 * 0.5), center: CGPoint(x:-3.4, y: 1.5))
         lasMariasNode.physicsBody?.isDynamic = false
         lasMariasNode.name = "Las Marías"
         return lasMariasNode
     }
     
     func maricaoBezierPathToSKSpriteNode(bpMaricao: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpMaricao.cgPath)
         let maricaoNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         maricaoNode.position = CGPoint(x:136.67, y:180.17)
         //maricaoNode.zPosition = 1
         maricaoNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:maricaoNode.size.width/2 * 1.2, height:maricaoNode.size.height/2 * 0.5), center: CGPoint(x:-1.5, y: 1.0))
         maricaoNode.physicsBody?.isDynamic = false
         maricaoNode.name = "Maricao"
         return maricaoNode
     }
     
     func sanGermanBezierPathToSKSpriteNode(bpSanGerman: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpSanGerman.cgPath)
         let sanGermanNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         sanGermanNode.position = CGPoint(x:110.93, y:163.23)
         sanGermanNode.zPosition = 0//1//FOR LABEL TO BE LEGIBLE(HORMIGUEROS)
         sanGermanNode.physicsBody =  SKPhysicsBody(circleOfRadius: sanGermanNode.size.width/2 * 0.45 , center: CGPoint(x:0.0, y:0.0))
         sanGermanNode.physicsBody?.isDynamic = false
         sanGermanNode.name = "San Germán"
         return sanGermanNode
     }
     
     func sabanaGrandeBezierPathToSKSpriteNode(bpSabanaGrande: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpSabanaGrande.cgPath)
         let sabanaGrandeNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         sabanaGrandeNode.position = CGPoint(x:139.25, y:155.85)
         //sabanaGrandeNode.zPosition = 1
         sabanaGrandeNode.physicsBody =  SKPhysicsBody(circleOfRadius: sabanaGrandeNode.size.width/2 * 0.50 , center: CGPoint(x:3.5, y:0.0))
         sabanaGrandeNode.physicsBody?.isDynamic = false
         sabanaGrandeNode.name = "Sabana Grande"
         return sabanaGrandeNode
     }
     
     func yaucoBezierPathToSKSpriteNode(bpYauco: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpYauco.cgPath)
         let yaucoNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
          yaucoNode.position = CGPoint(x:159.05, y:148.88)
          //yaucoNode.zPosition = 1
          yaucoNode.physicsBody = SKPhysicsBody(circleOfRadius: yaucoNode.size.width/2 * 0.52 , center: CGPoint(x:-0.4, y:0.0))
          yaucoNode.physicsBody?.isDynamic = false
          yaucoNode.name = "Yauco"
         return  yaucoNode
     }
     
     func lajasBezierPathToSKSpriteNode(bpLajas: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpLajas.cgPath)
         let lajasNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         lajasNode.position = CGPoint(x:111.6, y:130.62)
         //lajasNode.zPosition = 1
         lajasNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:lajasNode.size.width/2 * 1.5, height:lajasNode.size.height/2 * 0.5), center: CGPoint(x:0.5, y: -3.5))
         lajasNode.physicsBody?.isDynamic = false
         lajasNode.name = "Lajas"
         return lajasNode
     }
     
     func guanicaBezierPathToSKSpriteNode(bpGuanica: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpGuanica.cgPath)
         let guanicaNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
          guanicaNode.position = CGPoint(x:143.09, y:125.46)
          //guanicaNode.zPosition = 1
          guanicaNode.physicsBody = SKPhysicsBody(circleOfRadius: guanicaNode.size.width/2 * 0.5 , center: CGPoint(x:-1.5, y:0.0))
          guanicaNode.physicsBody?.isDynamic = false
          guanicaNode.name = "Guánica"
         return  guanicaNode
     }
     
     func guayanillaBezierPathToSKSpriteNode(bpGuayanilla: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpGuayanilla.cgPath)
         let guayanillaNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         guayanillaNode.position = CGPoint(x:177.44, y:143.36)
         //guayanillaNode.zPosition = 1
         guayanillaNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:guayanillaNode.size.width/2 * 0.3, height:guayanillaNode.size.height/2), center: CGPoint(x:-1.5, y: 0.5))
         guayanillaNode.physicsBody?.isDynamic = false
         guayanillaNode.name = "Guayanilla"
         return guayanillaNode
     }
     
     func adjuntasBezierPathToSKSpriteNode(bpAdjuntas: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpAdjuntas.cgPath)
         let adjuntasNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
          adjuntasNode.position = CGPoint(x:188.93, y:182.56)
          //adjuntasNode.zPosition = 1
          adjuntasNode.physicsBody = SKPhysicsBody(circleOfRadius: adjuntasNode.size.width/2 * 0.43 , center: CGPoint(x:-0.5, y:1.0))
          adjuntasNode.physicsBody?.isDynamic = false
          adjuntasNode.name = "Adjuntas"
         return  adjuntasNode
     }
     
     func laresBezierPathToSKSpriteNode(bpLares: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpLares.cgPath)
         let laresNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         laresNode.position = CGPoint(x:158.07, y:207.36)
         //laresNode.zPosition = 1
         laresNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:laresNode.size.width/2 * 0.7, height:laresNode.size.height/2 * 1.5), center: CGPoint(x:0.5, y: 0.5))
         laresNode.physicsBody?.isDynamic = false
         laresNode.name = "Lares"
         return laresNode
     }
     
     func penuelasBezierPathToSKSpriteNode(bpPenuelas: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpPenuelas.cgPath)
         let penuelasNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         penuelasNode.position = CGPoint(x:196.06, y:145.2)
         //penuelasNode.zPosition = 1
         penuelasNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:penuelasNode.size.width/2 * 0.5, height:penuelasNode.size.height/2 * 1.2), center: CGPoint(x:-1.8, y: 0.5))
         penuelasNode.physicsBody?.isDynamic = false
         penuelasNode.name = "Peñuelas"
         return penuelasNode
     }
     
     func ponceBezierPathToSKSpriteNode(bpPonce: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpPonce.cgPath)
         let ponceNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
          ponceNode.position = CGPoint(x:228.35, y:138.86)
          //ponceNode.zPosition = 1
          ponceNode.physicsBody = SKPhysicsBody(circleOfRadius: ponceNode.size.width/2 * 0.47 , center: CGPoint(x:2.5, y:-7.5))
          ponceNode.physicsBody?.isDynamic = false
          ponceNode.name = "Ponce"
         return  ponceNode
     }
     
     func utuadoBezierPathToSKSpriteNode(bpUtuado: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpUtuado.cgPath)
         let utuadoNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         utuadoNode.position = CGPoint(x:202.89, y:202.02)
         //utuadoNode.zPosition = 1
         utuadoNode.physicsBody = SKPhysicsBody(circleOfRadius: utuadoNode.size.width/2 * 0.35, center: CGPoint(x:0.5, y:-4.5))
         utuadoNode.physicsBody?.isDynamic = false
         utuadoNode.name = "Utuado"
         return utuadoNode
     }
     
     func jayuyaBezierPathToSKSpriteNode(bpJayuya: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpJayuya.cgPath)
         let jayuyaNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
          jayuyaNode.position = CGPoint(x:231.73, y:194.79)
          //jayuyaNode.zPosition = 1
          jayuyaNode.physicsBody = SKPhysicsBody(circleOfRadius: jayuyaNode.size.width/2 * 0.45 , center: CGPoint(x:-2.5, y:5.0))
          jayuyaNode.physicsBody?.isDynamic = false
          jayuyaNode.name = "Jayuya"
          return  jayuyaNode
     }
     
     func juanaDiazBezierPathToSKSpriteNode(bpJuanaDiaz: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpJuanaDiaz.cgPath)
         let juanaDiazNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
          juanaDiazNode.position = CGPoint(x:258.21, y:141.89)
          //juanaDiazNode.zPosition = 1
          juanaDiazNode.physicsBody = SKPhysicsBody(circleOfRadius: juanaDiazNode.size.width/2 * 0.50 , center: CGPoint(x:-2.5, y:-0.5))
          juanaDiazNode.physicsBody?.isDynamic = false
          juanaDiazNode.name = "Juana Díaz"
          return  juanaDiazNode
     }
     
     func quebradillasBezierPathToSKSpriteNode(bpQuebradillas: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpQuebradillas.cgPath)
         let quebradillasNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         quebradillasNode.position = CGPoint(x:139.8, y:252.85)
         //quebradillasNode.zPosition = 1
         quebradillasNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:quebradillasNode.size.width/2 * 0.5, height:quebradillasNode.size.height/2 * 1.0), center: CGPoint(x:-3.5, y:-1.2))
         quebradillasNode.physicsBody?.isDynamic = false
         quebradillasNode.name = "Quebradillas"
         return quebradillasNode
     }
     
     func camuyBezierPathToSKSpriteNode(bpCamuy: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpCamuy.cgPath)
         let camuyNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
          camuyNode.position = CGPoint(x:160.46, y:249.65)
          //camuyNode.zPosition = 1
          camuyNode.physicsBody = SKPhysicsBody(circleOfRadius: camuyNode.size.width/2 * 0.55 , center: CGPoint(x:1.0, y:0.0))
          camuyNode.physicsBody?.isDynamic = false
          camuyNode.name = "Camuy"
          return  camuyNode
     }
     
     func hatilloBezierPathToSKSpriteNode(bpHatillo: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpHatillo.cgPath)
         let hatilloNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         hatilloNode.position = CGPoint(x:175.03, y:246.63)
         //hatilloNode.zPosition = 1
         hatilloNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:hatilloNode.size.width/2 * 0.52, height:hatilloNode.size.height/2 * 1.2), center: CGPoint(x:-2.5, y: 0.5))
         hatilloNode.physicsBody?.isDynamic = false
         hatilloNode.name = "Hatillo"
         return hatilloNode
     }
     
     func areciboBezierPathToSKSpriteNode(bpArecibo: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpArecibo.cgPath)
         let areciboNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
          areciboNode.position = CGPoint(x:209.2, y:245.93)
          //areciboNode.zPosition = 1
          areciboNode.physicsBody = SKPhysicsBody(circleOfRadius: areciboNode.size.width/2 * 0.55 , center: CGPoint(x:0.5, y:0.5))
          areciboNode.physicsBody?.isDynamic = false
          areciboNode.name = "Arecibo"
         return  areciboNode
     }
     
     func barcelonetaBezierPathToSKSpriteNode(bpBarceloneta: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpBarceloneta.cgPath)
         let barcelonetaNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         barcelonetaNode.position = CGPoint(x:240.41, y:255.91)
         barcelonetaNode.zPosition = 1//FOR LABEL TO BE LEGIBLE
         barcelonetaNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:barcelonetaNode.size.width/2 * 0.40, height:barcelonetaNode.size.height/2 * 1.2), center: CGPoint(x:0.5, y:-2.0))
         barcelonetaNode.physicsBody?.isDynamic = false
         barcelonetaNode.name = "Barceloneta"
         return barcelonetaNode
     }
     
     func floridaBezierPathToSKSpriteNode(bpFlorida: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpFlorida.cgPath)
         let floridaNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         floridaNode.position = CGPoint(x:240.01, y:237.72)
         floridaNode.zPosition = 0//FOR LABEL TO BE LEGIBLE
         floridaNode.physicsBody = SKPhysicsBody(circleOfRadius: floridaNode.size.width/2 * 0.50 , center: CGPoint(x:-0.5, y:0.5))
         floridaNode.physicsBody?.isDynamic = false
         floridaNode.name = "Florida"
          return  floridaNode
     }
     
     
     func manatiBezierPathToSKSpriteNode(bpManati: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpManati.cgPath)
         let manatiNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         manatiNode.position = CGPoint(x:258.84, y:249.77)
         //manatiNode.zPosition = 1
         manatiNode.physicsBody = SKPhysicsBody(circleOfRadius: manatiNode.size.width/2 * 0.55 , center: CGPoint(x:-1.5, y:0.5))
         manatiNode.physicsBody?.isDynamic = false
         manatiNode.name = "Manatí"
         return  manatiNode
     }

     func vegaBajaBezierPathToSKSpriteNode(bpVegaBaja: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpVegaBaja.cgPath)
         let vegaBajaNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         vegaBajaNode.position = CGPoint(x:283.73, y:249.79)
         //vegaBajaNode.zPosition = 1
         vegaBajaNode.physicsBody = SKPhysicsBody(circleOfRadius: vegaBajaNode.size.width/2 * 0.55, center: CGPoint(x:0.5, y:-2.5))
         vegaBajaNode.physicsBody?.isDynamic = false
         vegaBajaNode.name = "Vega Baja"
         return  vegaBajaNode
         }
     
     func villalbaBezierPathToSKSpriteNode(bpVillalba: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpVillalba.cgPath)
         let villalbaNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         villalbaNode.position = CGPoint(x:263.2, y:167.86)
         //villalbaNode.zPosition = 1
         villalbaNode.physicsBody = SKPhysicsBody(circleOfRadius:villalbaNode.size.width/2 * 0.5 , center: CGPoint(x:-1.5, y:0.5))
         villalbaNode.physicsBody?.isDynamic = false
         villalbaNode.name = "Villalba"
         return  villalbaNode
     }
     
     func orocovisBezierPathToSKSpriteNode(bpOrocovis: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpOrocovis.cgPath)
         let orocovisNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         orocovisNode.position = CGPoint(x:270.23, y:193.72)
         //orocovisNode.zPosition = 1
         orocovisNode.physicsBody = SKPhysicsBody(circleOfRadius:orocovisNode.size.width/2 * 0.35 , center: CGPoint(x:-6.0, y:0.5))
         orocovisNode.physicsBody?.isDynamic = false
         orocovisNode.name = "Orocovis"
         return  orocovisNode
     }
     
     func cialesBezierPathToSKSpriteNode(bpCiales: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpCiales.cgPath)
         let cialesNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         cialesNode.position = CGPoint(x:247.6, y:206.12)
         //cialesNode.zPosition = 1
         cialesNode.physicsBody = SKPhysicsBody(circleOfRadius:cialesNode.size.width/2 * 0.4 , center: CGPoint(x:-5.5, y:-10.5))
         cialesNode.physicsBody?.isDynamic = false
         cialesNode.name = "Ciales"
         return  cialesNode
     }
     
     func morovisBezierPathToSKSpriteNode(bpMorovis: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpMorovis.cgPath)
         let morovisNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         morovisNode.position = CGPoint(x:279.3, y:221.04)
         //morovisNode.zPosition = 1
         morovisNode.physicsBody = SKPhysicsBody(circleOfRadius:morovisNode.size.width/2 * 0.49 , center: CGPoint(x:0.0, y:0.5))
         morovisNode.physicsBody?.isDynamic = false
         morovisNode.name = "Morovis"
         return  morovisNode
     }
     
     func corozalBezierPathToSKSpriteNode(bpCorozal: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpCorozal.cgPath)
         let corozalNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         corozalNode.position = CGPoint(x:302.12, y:217.15)
         //corozalNode.zPosition = 1
         corozalNode.physicsBody = SKPhysicsBody(circleOfRadius:corozalNode.size.width/2 * 0.55 , center: CGPoint(x:-1.0, y:0.5))
         corozalNode.physicsBody?.isDynamic = false
         corozalNode.name = "Corozal"
         return  corozalNode
     }
     
     func barranquitasBezierPathToSKSpriteNode(bpBarranquitas: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpBarranquitas.cgPath)
         let barranquitasNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         barranquitasNode.position = CGPoint(x:308.45, y:187.95)
         barranquitasNode.zPosition = 1//FOR LABEL TO BE LEGIBLE
         barranquitasNode.physicsBody = SKPhysicsBody(circleOfRadius:barranquitasNode.size.width/2 * 0.4 , center: CGPoint(x:0.5, y:-1.5))
         barranquitasNode.physicsBody?.isDynamic = false
         barranquitasNode.name = "Barranquitas"
         return  barranquitasNode
     }
     
     func comerioBezierPathToSKSpriteNode(bpComerio: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpComerio.cgPath)
         let comerioNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         comerioNode.position = CGPoint(x:331.91, y:194.87)
         comerioNode.zPosition = 0//FOR LABEL TO BE LEGIBLE(BARRANQUITAS)
         comerioNode.physicsBody = SKPhysicsBody(circleOfRadius:comerioNode.size.width/2 * 0.4 , center: CGPoint(x:-1.2, y:0.5))
         comerioNode.physicsBody?.isDynamic = false
         comerioNode.name = "Comerío"
         return  comerioNode
     }
     
     func coamoBezierPathToSKSpriteNode(bpCoamo: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpCoamo.cgPath)
         let coamoNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         coamoNode.position = CGPoint(x:296.54, y:158.24)
         coamoNode.zPosition = 0//FOR LABEL TO BE LEGIBLE(BARRANQUITAS)
         coamoNode.physicsBody = SKPhysicsBody(circleOfRadius:coamoNode.size.width/2 * 0.4 , center: CGPoint(x:1.7, y:0.5))
         coamoNode.physicsBody?.isDynamic = false
         coamoNode.name = "Coamo"
         return  coamoNode
     }
     
     func naranjitoBezierPathToSKSpriteNode(bpNaranjito: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpNaranjito.cgPath)
         let naranjitoNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         naranjitoNode.position = CGPoint(x:321.28, y:212.61)
         //naranjitoNode.zPosition = 1
         naranjitoNode.physicsBody = SKPhysicsBody(circleOfRadius:naranjitoNode.size.width/2 * 0.4 , center: CGPoint(x:-1.5, y:0.5))
         naranjitoNode.physicsBody?.isDynamic = false
         naranjitoNode.name = "Naranjito"
         return  naranjitoNode
     }
     
     func aibonitoBezierPathToSKSpriteNode(bpAibonito: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpAibonito.cgPath)
         let aibonitoNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         aibonitoNode.position = CGPoint(x:318.76, y:167.44)
         aibonitoNode.zPosition = 1
         aibonitoNode.physicsBody = SKPhysicsBody(circleOfRadius:aibonitoNode.size.width/2 * 0.4 , center: CGPoint(x:-2.0, y:-0.5))
         aibonitoNode.physicsBody?.isDynamic = false
         aibonitoNode.name = "Aibonito"
         return  aibonitoNode
     }
     
     func salinasBezierPathToSKSpriteNode(bpSalinas: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpSalinas.cgPath)
         let salinasNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         salinasNode.position = CGPoint(x:322.58, y:132.2)
         //salinasNode.zPosition = 1
         salinasNode.physicsBody = SKPhysicsBody(circleOfRadius:salinasNode.size.width/2 * 0.4 , center: CGPoint(x:0.0, y:-0.5))
         salinasNode.physicsBody?.isDynamic = false
         salinasNode.name = "Salinas"
         return  salinasNode
     }
     
     func cayeyBezierPathToSKSpriteNode(bpCayey: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpCayey.cgPath)
         let cayeyNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         cayeyNode.position = CGPoint(x:353.68, y:160.28)
         //cayeyNode.zPosition = 1
         cayeyNode.physicsBody = SKPhysicsBody(circleOfRadius:cayeyNode.size.width/2 * 0.34 , center: CGPoint(x:7.5, y:2.5))
         cayeyNode.physicsBody?.isDynamic = false
         cayeyNode.name = "Cayey"
         return  cayeyNode
     }
     

     
     func cidraBezierPathToSKSpriteNode(bpCidra: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpCidra.cgPath)
         let cidraNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         cidraNode.position = CGPoint(x:345.38, y:182.58)
         //cidraNode.zPosition = 1
         cidraNode.physicsBody = SKPhysicsBody(circleOfRadius:cidraNode.size.width/2 * 0.30 , center: CGPoint(x:-3.5, y:2.0))
         cidraNode.physicsBody?.isDynamic = false
         cidraNode.name = "Cidra"
         return  cidraNode
     }
     
     func santaIsabelBezierPathToSKSpriteNode(bpSantaIsabel: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpSantaIsabel.cgPath)
         let santaIsabelNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         santaIsabelNode.position = CGPoint(x:285.59, y:125.67)
         //santaIsabelNode.zPosition = 1
         santaIsabelNode.physicsBody = SKPhysicsBody(circleOfRadius:santaIsabelNode.size.width/2 * 0.45 , center: CGPoint(x:-1.5,y:-4.5))
         santaIsabelNode.physicsBody?.isDynamic = false
         santaIsabelNode.name = "Santa Isabel"
         return  santaIsabelNode
     }
     
     func vegaAltaBezierPathToSKSpriteNode(bpVegaAlta: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpVegaAlta.cgPath)
         let vegaAltaNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         vegaAltaNode.position = CGPoint(x:299.93, y:247.01)
         //vegaAltaNode.zPosition = 1
         vegaAltaNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:vegaAltaNode.size.width/2 * 0.25, height:vegaAltaNode.size.height/2 * 1.1), center: CGPoint(x:-1.5, y: -2.5))
         vegaAltaNode.physicsBody?.isDynamic = false
         vegaAltaNode.name = "Vega Alta"
         return vegaAltaNode
     }
     
     func doradoBezierPathToSKSpriteNode(bpDorado: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpDorado.cgPath)
         let doradoNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         doradoNode.position = CGPoint(x:319.91, y:253.65)
         //doradoNode.zPosition = 1
         doradoNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:doradoNode.size.width/2 * 0.20, height:doradoNode.size.height/2 * 1.2), center: CGPoint(x:3.5, y: 0.5))
         doradoNode.physicsBody?.isDynamic = false
         doradoNode.name = "Dorado"
         return doradoNode
     }
     
     func toaAltaBezierPathToSKSpriteNode(bpToaAlta: UIBezierPath)-> SKSpriteNode{
            
         let shapeNode = SKShapeNode(path:bpToaAlta.cgPath)
         let toaAltaNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         toaAltaNode.position = CGPoint(x:321.65, y:232.96)
         //toaAltaNode.zPosition = 1
         toaAltaNode.physicsBody = SKPhysicsBody(circleOfRadius:toaAltaNode.size.width/2 * 0.35 , center: CGPoint(x:-3.0,y:-0.5))
         toaAltaNode.physicsBody?.isDynamic = false
         toaAltaNode.name = "Toa Alta"
         return  toaAltaNode
     }
     
     func toaBajaBezierPathToSKSpriteNode(bpToaBaja: UIBezierPath)-> SKSpriteNode{
            
         let shapeNode = SKShapeNode(path:bpToaBaja.cgPath)
         let toaBajaNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         toaBajaNode.position = CGPoint(x:337.59, y:253.87)
         //toaBajaNode.zPosition = 1
         toaBajaNode.physicsBody = SKPhysicsBody(circleOfRadius:toaBajaNode.size.width/2 * 0.27 , center: CGPoint(x:5.5,y:0.5))
         toaBajaNode.physicsBody?.isDynamic = false
         toaBajaNode.name = "Toa Baja"
         return  toaBajaNode
     }
     
     
     func bayamonBezierPathToSKSpriteNode(bpBayamon: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpBayamon.cgPath)
         let bayamonNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         bayamonNode.position = CGPoint(x:346.44, y:228.92)
         //bayamonNode.zPosition = 1
         bayamonNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:bayamonNode.size.width/2 * 0.40, height:bayamonNode.size.height/2 * 1.3), center: CGPoint(x:0.5, y: -0.5))
         bayamonNode.physicsBody?.isDynamic = false
         bayamonNode.name = "Bayamón"
         return bayamonNode
     }
     

     func catanoBezierPathToSKSpriteNode(bpCatano: UIBezierPath)-> SKSpriteNode{
            
         let shapeNode = SKShapeNode(path:bpCatano.cgPath)
         let catanoNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         catanoNode.position = CGPoint(x:353.41, y:256.05)
         catanoNode.zPosition = 2//FOR LABEL TO BE LEGIBLE
         catanoNode.physicsBody = SKPhysicsBody(circleOfRadius:catanoNode.size.width/2 * 0.33 , center: CGPoint(x:0.5,y:0.5))
         catanoNode.physicsBody?.isDynamic = false
         catanoNode.name = "Cataño"
         return  catanoNode
     }
     
     func guaynaboBezierPathToSKSpriteNode(bpGuaynabo: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpGuaynabo.cgPath)
         let guaynaboNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         guaynaboNode.position = CGPoint(x:360.92, y:233.01)
         guaynaboNode.zPosition = 1//FOR LABEL TO BE LEGIBLE
         guaynaboNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:guaynaboNode.size.width/2 * 0.35, height:guaynaboNode.size.height/2 * 1.3), center: CGPoint(x:0.5, y: 0.5))
         guaynaboNode.physicsBody?.isDynamic = false
         guaynaboNode.name = "Guaynabo"
         return guaynaboNode
     }
     
     func sanJuanBezierPathToSKSpriteNode(bpSanJuan: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpSanJuan.cgPath)
         let sanJuanNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         sanJuanNode.position = CGPoint(x:375.22, y:240.17)
         sanJuanNode.zPosition = 0//FOR LABEL TO BE LEGIBLE(GUAYNABO)
         sanJuanNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:sanJuanNode.size.width/2 * 0.30, height:sanJuanNode.size.height/2 * 1.3), center: CGPoint(x:0.5, y: 0.5))
         sanJuanNode.physicsBody?.isDynamic = false
         sanJuanNode.name = "San Juan"
         return sanJuanNode
     }
     
     
     func caguasBezierPathToSKSpriteNode(bpCaguas: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpCaguas.cgPath)
         let caguasNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         caguasNode.position = CGPoint(x:375.56, y:191.55)
         //caguasNode.zPosition = 1
         caguasNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:caguasNode.size.width/2 * 0.30, height:caguasNode.size.height/2 * 1.3), center: CGPoint(x:-2.5, y: 0.5))
         caguasNode.physicsBody?.isDynamic = false
         caguasNode.name = "Caguas"
         return caguasNode
     }
     
     func carolinaBezierPathToSKSpriteNode(bpCarolina: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpCarolina.cgPath)
         let carolinaNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         carolinaNode.position = CGPoint(x:398.56,  y:234.17)
         //carolinaNode.zPosition = 1
         carolinaNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:carolinaNode.size.width/2 * 0.30, height:carolinaNode.size.height/2 * 0.95), center: CGPoint(x:-4.5, y: -3.0))
         carolinaNode.physicsBody?.isDynamic = false
         carolinaNode.name = "Carolina"
         return carolinaNode
     }
     
     func aguasBuenasBezierPathToSKSpriteNode(bpAguasBuenas: UIBezierPath)-> SKSpriteNode{
            
            let shapeNode = SKShapeNode(path:bpAguasBuenas.cgPath)
            let aguasBuenasNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
             aguasBuenasNode.position = CGPoint(x:356.56, y:202.09)
             //aguasBuenasNode.zPosition = 1
             aguasBuenasNode.physicsBody = SKPhysicsBody(circleOfRadius:aguasBuenasNode.size.width/2 * 0.35 , center: CGPoint(x:0.0,y:0.5))
             aguasBuenasNode.physicsBody?.isDynamic = false
             aguasBuenasNode.name = "Aguas Buenas"
             return  aguasBuenasNode
     }
     
     func trujilloAltoBezierPathToSKSpriteNode(bpTrujilloAlto: UIBezierPath)-> SKSpriteNode{
            
            let shapeNode = SKShapeNode(path:bpTrujilloAlto.cgPath)
            let trujilloAltoNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
             trujilloAltoNode.position = CGPoint(x:393.83, y:226.67)
             //trujilloAltoNode.zPosition = 1
             trujilloAltoNode.physicsBody = SKPhysicsBody(circleOfRadius:trujilloAltoNode.size.width/2 * 0.40 , center: CGPoint(x:4.0,y:0.5))
             trujilloAltoNode.physicsBody?.isDynamic = false
             trujilloAltoNode.name = "Trujillo Alto"
             return  trujilloAltoNode
        }
     
       func loizaBezierPathToSKSpriteNode(bpLoiza: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpLoiza.cgPath)
         let loizaNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         loizaNode.zRotation = 0.00//0.10
         loizaNode.setScale(0.5750)//setScale(0.59)
         loizaNode.position = CGPoint(x:414.60, y:250)//(x:414.55, y:249.48)
         //loizaNode.zPosition = 1
         loizaNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:loizaNode.size.width/2 * 0.7, height:loizaNode.size.height/2 * 0.5), center: CGPoint(x:6.5, y:1.5))
         loizaNode.physicsBody?.isDynamic = false
         loizaNode.name = "Loíza"
         return loizaNode
     }
    
     
       func canovanasBezierPathToSKSpriteNode(bpCanovanas: UIBezierPath)-> SKSpriteNode{
          
         let shapeNode = SKShapeNode(path: bpCanovanas.cgPath)
         let canovanasNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         canovanasNode.position = CGPoint(x:422.51, y:225.63)
         //canovanasNode.zPosition = 1
         canovanasNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:canovanasNode.size.width/2 * 0.5, height:canovanasNode.size.height/2 * 1.0), center: CGPoint(x:1.5, y: 0.5))
         canovanasNode.physicsBody?.isDynamic = false
         canovanasNode.name = "Canóvanas"
         return canovanasNode
     }
     
       func rioGrandeBezierPathToSKSpriteNode(bpRioGrande: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpRioGrande.cgPath)
         let rioGrandeNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         rioGrandeNode.position = CGPoint(x:441.51, y:229.61)
          //rioGrandeNode.zPosition = 1
         rioGrandeNode.physicsBody = SKPhysicsBody(circleOfRadius: rioGrandeNode.size.width/2 * 0.55 , center: CGPoint(x:1.0, y:0.0))
         rioGrandeNode.physicsBody?.isDynamic = false
         rioGrandeNode.name = "Rio Grande"
         return  rioGrandeNode
     }
     
      func luquilloBezierPathToSKSpriteNode(bpLuquillo: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpLuquillo.cgPath)
         let luquilloNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         luquilloNode.position = CGPoint(x:464.64, y:227.19)
         //luquilloNode.zPosition = 1
         luquilloNode.physicsBody = SKPhysicsBody(circleOfRadius: luquilloNode.size.width/2 * 0.4 , center: CGPoint(x:0.0, y:-1.5))
         luquilloNode.physicsBody?.isDynamic = false
         luquilloNode.name = "Luquillo"
         return  luquilloNode
     }
     
      func fajardoBezierPathToSKSpriteNode(bpFajardo: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpFajardo.cgPath)
         let fajardoNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         fajardoNode.position = CGPoint(x:486.08, y:225.53)
         //fajardoNode.zPosition = 1
         fajardoNode.physicsBody = SKPhysicsBody(circleOfRadius: fajardoNode.size.width/2 * 0.15 , center: CGPoint(x:5.0, y:3.5))
         fajardoNode.physicsBody?.isDynamic = false
         fajardoNode.name = "Fajardo"
         return  fajardoNode
     }
     
      func ceibaBezierPathToSKSpriteNode(bpCeiba: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpCeiba.cgPath)
         let ceibaNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         ceibaNode.position = CGPoint(x:477.79, y:201.27)
         ceibaNode.zPosition = 1//FOR LABEL TO BE LEGIBLE
         ceibaNode.physicsBody = SKPhysicsBody(circleOfRadius: ceibaNode.size.width/2 * 0.15 , center: CGPoint(x:-3.5, y:-1.5))
         ceibaNode.physicsBody?.isDynamic = false
         ceibaNode.name = "Ceiba"
         return  ceibaNode
     }
     
      func guraboBezierPathToSKSpriteNode(bpGurabo: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpGurabo.cgPath)
         let guraboNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         guraboNode.position = CGPoint(x:398.05, y:204.61)
         //guraboNode.zPosition = 1
         guraboNode.physicsBody = SKPhysicsBody(circleOfRadius: guraboNode.size.width/2 * 0.45 , center: CGPoint(x:-1.0, y:-2.0))
         guraboNode.physicsBody?.isDynamic = false
         guraboNode.name = "Gurabo"
         return  guraboNode
     }
     
      func juncosBezierPathToSKSpriteNode(bpJuncos: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpJuncos.cgPath)
         let juncosNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         juncosNode.position = CGPoint(x:417.56, y:189.66)
         //juncosNode.zPosition = 1
         juncosNode.physicsBody = SKPhysicsBody(circleOfRadius: juncosNode.size.width/2 * 0.4 , center: CGPoint(x:3.0, y:-7.5))
         juncosNode.physicsBody?.isDynamic = false
         juncosNode.name = "Juncos"
         return  juncosNode
     }
     
      func sanLorenzoBezierPathToSKSpriteNode(bpSanLorenzo: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpSanLorenzo.cgPath)
         let sanLorenzoNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         sanLorenzoNode.position = CGPoint(x:394.13, y:174.38)
         //sanLorenzoNode.zPosition = 1
         sanLorenzoNode.physicsBody = SKPhysicsBody(circleOfRadius: sanLorenzoNode.size.width/2 * 0.45 , center: CGPoint(x:-3.0, y:2.5))
         sanLorenzoNode.physicsBody?.isDynamic = false
         sanLorenzoNode.name = "San Lorenzo"
         return  sanLorenzoNode
     }
     
      func guayamaBezierPathToSKSpriteNode(bpGuayama: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpGuayama.cgPath)
         let guayamaNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         guayamaNode.position = CGPoint(x:354.67, y:135.15)
         //guayamaNode.zPosition = 1
         guayamaNode.physicsBody = SKPhysicsBody(circleOfRadius:guayamaNode.size.width/2 * 0.4 , center: CGPoint(x:-0.5, y:4.5))
         guayamaNode.physicsBody?.isDynamic = false
         guayamaNode.name = "Guayama"
         return  guayamaNode
     }
     
      func arroyoBezierPathToSKSpriteNode(bpArroyo: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpArroyo.cgPath)
         let arroyoNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         arroyoNode.position = CGPoint(x:375.68, y:130.08)
         //arroyoNode.zPosition = 1
         arroyoNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:arroyoNode.size.width/2 * 0.45, height:arroyoNode.size.height/2 * 1.5), center: CGPoint(x:-0.5, y:-1.2))
         arroyoNode.physicsBody?.isDynamic = false
         arroyoNode.name = "Arroyo"
         return arroyoNode
     }
     
      func patillasBezierPathToSKSpriteNode(bpPatillas: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpPatillas.cgPath)
         let patillasNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         patillasNode.position = CGPoint(x:391.39,  y:142.16)
         //patillasNode.zPosition = 1
         patillasNode.physicsBody = SKPhysicsBody(circleOfRadius:patillasNode.size.width/2 * 0.25 , center: CGPoint(x:3.0, y:3.0))
         patillasNode.physicsBody?.isDynamic = false
         patillasNode.name = "Patillas"
         return patillasNode
     }
     
      func maunaboBezierPathToSKSpriteNode(bpMaunabo: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path: bpMaunabo.cgPath)
         let maunaboNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         maunaboNode.position = CGPoint(x:412.87,  y:137.01)
         //maunaboNode.zPosition = 1
         maunaboNode.physicsBody = SKPhysicsBody(circleOfRadius:maunaboNode.size.width/2 * 0.25 , center: CGPoint(x:-1.0, y:3.0))
         maunaboNode.physicsBody?.isDynamic = false
         maunaboNode.name = "Maunabo"
         return maunaboNode
     }
     
      func yabucoaBezierPathToSKSpriteNode(bpYabucoa: UIBezierPath)-> SKSpriteNode{
            
         let shapeNode = SKShapeNode(path:bpYabucoa.cgPath)
         let yabucoaNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         yabucoaNode.position = CGPoint(x:417.44, y:150.51)
         //yabucoaNode.zPosition = 1
         yabucoaNode.physicsBody = SKPhysicsBody(circleOfRadius:yabucoaNode.size.width/2 * 0.3 , center: CGPoint(x:-5.0, y:-0.5))
         yabucoaNode.physicsBody?.isDynamic = false
         yabucoaNode.name = "Yabucoa"
         return  yabucoaNode
     }
     
      func lasPiedrasBezierPathToSKSpriteNode(bpLasPiedras: UIBezierPath)-> SKSpriteNode{
            
         let shapeNode = SKShapeNode(path:bpLasPiedras.cgPath)
         let lasPiedrasNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         lasPiedrasNode.position = CGPoint(x:425.65, y:186.86)
         //lasPiedrasNode.zPosition = 1
         lasPiedrasNode.physicsBody = SKPhysicsBody(circleOfRadius:lasPiedrasNode.size.width/2 * 0.4 , center: CGPoint(x:-1.5, y:0.5))
         lasPiedrasNode.physicsBody?.isDynamic = false
         lasPiedrasNode.name = "Las Piedras"
         return  lasPiedrasNode
     }
     
      func humacaoBezierPathToSKSpriteNode(bpHumacao: UIBezierPath)-> SKSpriteNode{

         let shapeNode = SKShapeNode(path:bpHumacao.cgPath)
         let humacaoNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         humacaoNode.position = CGPoint(x:444.15, y:170.3)
         //humacaoNode.zPosition = 1
         humacaoNode.physicsBody = SKPhysicsBody(circleOfRadius:humacaoNode.size.width/2 * 0.4 , center: CGPoint(x:1.5, y:-2.5))
         humacaoNode.physicsBody?.isDynamic = false
         humacaoNode.name = "Humacao"
         return  humacaoNode
     }
     
       func naguaboBezierPathToSKSpriteNode(bpNaguabo: UIBezierPath)-> SKSpriteNode{
            
         let shapeNode = SKShapeNode(path:bpNaguabo.cgPath)
         let naguaboNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         naguaboNode.position = CGPoint(x:459.97, y:197.89)
         naguaboNode.zPosition = 0//FOR LABEL TO BE LEGIBLE(CEIBA)
         naguaboNode.physicsBody = SKPhysicsBody(circleOfRadius:naguaboNode.size.width/2 * 0.35 , center: CGPoint(x:2.5, y:1.5))
         naguaboNode.physicsBody?.isDynamic = false
         naguaboNode.name = "Naguabo"
         return  naguaboNode
     }
     
       func viequesBezierPathToSKSpriteNode(bpVieques: UIBezierPath)-> SKSpriteNode{
         
         let shapeNode = SKShapeNode(path:bpVieques.cgPath)
         let viequesNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         viequesNode.position = CGPoint(x:512, y:95)//(x:582.85, y:154.19)
         viequesNode.zPosition = 1
         viequesNode.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width:viequesNode.size.width/2 * 1.2, height:viequesNode.size.height/2 * 0.5), center: CGPoint(x:39, y: -10.0))
         viequesNode.physicsBody?.isDynamic = false
         viequesNode.name = "Vieques"
         return viequesNode
     }

       func culebraBezierPathToSKSpriteNode(bpCulebra: UIBezierPath)-> SKSpriteNode{
            
         let shapeNode = SKShapeNode(path:bpCulebra.cgPath)
         let culebraNode: SKSpriteNode = ToSkShapeNodeAndDefaultProperties(nodeShape:shapeNode)
         culebraNode.position = CGPoint(x:493, y:141.5)
         culebraNode.zPosition = 1
         culebraNode.physicsBody = SKPhysicsBody(circleOfRadius:culebraNode.size.width/2 * 0.40 , center: CGPoint(x:-1.5, y:1.5))
         culebraNode.physicsBody?.isDynamic = false
         culebraNode.name = "Culebra"
         return  culebraNode
     }
     
     
     
       func rectangleBezierPathToSKSpriteNode(bpRectangle: UIBezierPath)-> SKSpriteNode{//Big island frame properties
            
         let shapeNode = SKShapeNode(path:bpRectangle.cgPath)
         shapeNode.strokeColor = UIColor.init(red: 0.97, green: 0.56, blue: 0.12, alpha: 1.00)//(red: 0.97, green: 0.56, blue: 0.12, alpha: 1.00)//(red: 1.00, green: 0.40, blue: 0.00, alpha: 1.00)//c1d3c8
         shapeNode.lineWidth = 0.5
         let view = SKView(frame: UIScreen.main.bounds)
         let texture = view.texture(from: shapeNode)!
         let rectangleNode = SKSpriteNode(texture: texture)
         rectangleNode.position = CGPoint(x:280, y:190)
         return  rectangleNode
     }
     
     func rectangleViequesBezierPathToSKSpriteNode(bpViequesRectangle: UIBezierPath)-> SKSpriteNode{//Vieques island frame properties
            
         let shapeNode = SKShapeNode(path:bpViequesRectangle.cgPath)
         shapeNode.strokeColor = UIColor.init(red: 0.97, green: 0.56, blue: 0.12, alpha: 1.00)//c1d3c8
         shapeNode.lineWidth = 0.5
         let view = SKView(frame: UIScreen.main.bounds)
         let texture = view.texture(from: shapeNode)!
         let rectangleViequesNode = SKSpriteNode(texture: texture)
         rectangleViequesNode.position = CGPoint(x:473, y:103.5)
         return  rectangleViequesNode
     }
     
      func rectangleCulebraBezierPathToSKSpriteNode(bpCulebraRectangle: UIBezierPath)-> SKSpriteNode{//Culebra island frame properties
            
         let shapeNode = SKShapeNode(path:bpCulebraRectangle.cgPath)
         shapeNode.strokeColor = UIColor.init(red: 0.97, green: 0.56, blue: 0.12, alpha: 1.00)//c1d3c8
         shapeNode.lineWidth = 0.5
         let view = SKView(frame: UIScreen.main.bounds)
         let texture = view.texture(from: shapeNode)!
         let rectangleCulebraNode = SKSpriteNode(texture: texture)
         rectangleCulebraNode.position = CGPoint(x:493.5, y:141.1)
         return  rectangleCulebraNode
     }
    
}
