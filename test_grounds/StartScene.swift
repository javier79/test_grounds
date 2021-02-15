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
    let mayaguezTwobp: UIBezierPath! = TestClass().mayaguezTwoDrawBezierPath()
    let anascobp: UIBezierPath! = TestClass().anascoDrawBezierPath()
    let rinconbp: UIBezierPath! = TestClass().rinconDrawBezierPath()
    let aguadabp: UIBezierPath! = TestClass().aguadaDrawBezierPath()
    let aguadillabp: UIBezierPath! = TestClass().aguadillaDrawBezierPath()
    let isabelabp: UIBezierPath! = TestClass().isabelaDrawBezierPath()
    let mocabp:UIBezierPath! = TestClass().mocaDrawBezierPath()
    let sanSebastianbp:UIBezierPath! = TestClass().sanSebastianDrawBezierPath()
    let lasMariasbp:UIBezierPath! = TestClass().lasMariasDrawBezierPath()
    let maricaobp:UIBezierPath! = TestClass().maricaoDrawBezierPath()
    let sanGermanbp:UIBezierPath! = TestClass().sanGermanDrawBezierPath()
    let sabanaGrandebp:UIBezierPath! = TestClass().sabanaGrandeDrawBezierPath()
    let yaucobp:UIBezierPath! = TestClass().yaucoDrawBezierPath()
    let lajasbp:UIBezierPath! = TestClass().lajasDrawBezierPath()
    let guanicabp:UIBezierPath! = TestClass().guanicaDrawBezierPath()
    let guayanillabp:UIBezierPath! = TestClass().guayanillaDrawBezierPath()
    let adjuntasbp:UIBezierPath! = TestClass().adjuntasDrawBezierPath()
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
    let loizaTwobp:UIBezierPath! = TestClass().loizaTwoDrawBezierPath()
    let canovanasbp:UIBezierPath! = TestClass().canovanasDrawBezierPath()
    let rioGrandebp:UIBezierPath! = TestClass().rioGrandeDrawBezierPath()
    let luquillobp:UIBezierPath! = TestClass().luquilloDrawBezierPath()
    let fajardobp:UIBezierPath! = TestClass().fajardoDrawBezierPath()
    let ceibabp:UIBezierPath! = TestClass().ceibaDrawBezierPath()
    var containerNode = SKNode()
    //let loizaBackground = SKSpriteNode()

    
     override func didMove(to view: SKView){
        
        self.backgroundColor = SKColor.blue
        containerNode = nodesContainer()
        let backgroundSKSpriteNode: SKSpriteNode = prBackground()
        


        let caboRojoSKSpriteNode: SKSpriteNode = TestClass().caboRojoBezierPathToSKSpriteNode(bpCaboRojo: caboRojobp)
        containerNode.addChild(caboRojoSKSpriteNode)
        
        let hormiguerosSKSpriteNode:SKSpriteNode = TestClass().hormiguerosBezierPathToSKSpriteNode(bphormigueros: hormiguerosbp)
        containerNode.addChild(hormiguerosSKSpriteNode)
        
        let mayaguezSKSpriteNode:SKSpriteNode = TestClass().mayaguezBezierPathToSKSpriteNode(bpMayaguez: mayaguezbp)
         containerNode.addChild(mayaguezSKSpriteNode)
        
        let mayaguezTwoSKSpriteNode:SKSpriteNode = TestClass().mayaguezTwoBezierPathToSKSpriteNode(bpMayaguezTwo: mayaguezTwobp)
         containerNode.addChild(mayaguezTwoSKSpriteNode)
        
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
        
        let sanSebastianSKSpriteNode: SKSpriteNode = TestClass().sanSebastianBezierPathToSKSpriteNode(bpSanSebastian: sanSebastianbp)
        containerNode.addChild(sanSebastianSKSpriteNode)
        
        let lasMariasSKSpriteNode: SKSpriteNode = TestClass().lasMariasBezierPathToSKSpriteNode(bpLasMarias: lasMariasbp)
        containerNode.addChild(lasMariasSKSpriteNode)
        
        let maricaoSKSpriteNode: SKSpriteNode = TestClass().maricaoBezierPathToSKSpriteNode(bpMaricao:maricaobp)
        containerNode.addChild(maricaoSKSpriteNode)
        
        let sanGermanSKSpriteNode:SKSpriteNode = TestClass().sanGermanBezierPathToSKSpriteNode(bpSanGerman: sanGermanbp)
        containerNode.addChild(sanGermanSKSpriteNode)
        
        let sabanaGrandeSKSpriteNode: SKSpriteNode = TestClass().sabanaGrandeBezierPathToSKSpriteNode(bpSabanaGrande: sabanaGrandebp)
        containerNode.addChild(sabanaGrandeSKSpriteNode)
        
        let yaucoSKSpriteNode: SKSpriteNode = TestClass().yaucoBezierPathToSKSpriteNode(bpYauco:yaucobp)
        containerNode.addChild(yaucoSKSpriteNode)
        
        let lajasSKSpriteNode: SKSpriteNode = TestClass().lajasBezierPathToSKSpriteNode(bpLajas:lajasbp)
        containerNode.addChild(lajasSKSpriteNode)
        
        let guanicaSKSpriteNode: SKSpriteNode = TestClass().guanicaBezierPathToSKSpriteNode(bpGuanica:guanicabp)
        containerNode.addChild(guanicaSKSpriteNode)
        
        let guayanillaSKSpriteNode:SKSpriteNode = TestClass().guayanillaBezierPathToSKSpriteNode(bpGuayanilla:guayanillabp)
        containerNode.addChild(guayanillaSKSpriteNode)
        
        let adjuntasSKSpriteNode:SKSpriteNode = TestClass().adjuntasBezierPathToSKSpriteNode(bpAdjuntas: adjuntasbp)
        containerNode.addChild(adjuntasSKSpriteNode)
        
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
        
        let barcelonetaSKSpriteNode:SKSpriteNode = TestClass().barcelonetaBezierPathToSKSpriteNode(bpBarceloneta:barcelonetabp)
        containerNode.addChild(barcelonetaSKSpriteNode)
        
        let hatilloSKSpriteNode:SKSpriteNode = TestClass().hatilloBezierPathToSKSpriteNode(bpHatillo:hatillobp)
        containerNode.addChild(hatilloSKSpriteNode)
        
        let areciboSKSpriteNode:SKSpriteNode = TestClass().areciboBezierPathToSKSpriteNode(bpArecibo:arecibobp)
        containerNode.addChild(areciboSKSpriteNode)
        
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
        
        let cayeySKSpriteNode:SKSpriteNode = TestClass().cayeyBezierPathToSKSpriteNode(bpCayey: cayeybp)
        containerNode.addChild(cayeySKSpriteNode)
        
       let santaIsabelSKSpriteNode:SKSpriteNode = TestClass().santaIsabelBezierPathToSKSpriteNode(bpSantaIsabel: santaIsabelbp)
        containerNode.addChild(santaIsabelSKSpriteNode)
        
       let cidraSKSpriteNode:SKSpriteNode = TestClass().cidraBezierPathToSKSpriteNode(bpCidra: cidrabp)
        containerNode.addChild(cidraSKSpriteNode)
        
        let salinasSKSpriteNode:SKSpriteNode = TestClass().salinasBezierPathToSKSpriteNode(bpSalinas: salinasbp)
        containerNode.addChild(salinasSKSpriteNode)
        
        let vegaAltaSKSpriteNode:SKSpriteNode = TestClass().vegaAltaBezierPathToSKSpriteNode(bpVegaAlta: vegaAltabp)
        containerNode.addChild(vegaAltaSKSpriteNode)
        
        let doradoSKSpriteNode:SKSpriteNode = TestClass().doradoBezierPathToSKSpriteNode(bpDorado: doradobp)
        containerNode.addChild(doradoSKSpriteNode)
        
        let bayamonSKSpriteNode:SKSpriteNode = TestClass().bayamonBezierPathToSKSpriteNode(bpBayamon: bayamonbp)
        containerNode.addChild(bayamonSKSpriteNode)
      
        let toaAltaSKSpriteNode:SKSpriteNode = TestClass().toaAltaBezierPathToSKSpriteNode(bpToaAlta: toaAltabp)
        containerNode.addChild(toaAltaSKSpriteNode)
        
        let toaBajaSKSpriteNode:SKSpriteNode = TestClass().toaBajaBezierPathToSKSpriteNode(bpToaBaja: toaBajabp)
        containerNode.addChild(toaBajaSKSpriteNode)
        
        let catanoSKSpriteNode:SKSpriteNode = TestClass().catanoBezierPathToSKSpriteNode(bpCatano: catanobp)
        containerNode.addChild(catanoSKSpriteNode)
        
        let guaynaboSKSpriteNode:SKSpriteNode = TestClass().guaynaboBezierPathToSKSpriteNode(bpGuaynabo:guaynabobp)
        containerNode.addChild(guaynaboSKSpriteNode)
        
        let sanJuanSKSpriteNode:SKSpriteNode = TestClass().sanJuanBezierPathToSKSpriteNode(bpSanJuan: sanJuanbp)
        containerNode.addChild(sanJuanSKSpriteNode)
        
        let carolinaSKSpriteNode:SKSpriteNode = TestClass().carolinaBezierPathToSKSpriteNode(bpCarolina: carolinabp)
        containerNode.addChild(carolinaSKSpriteNode)
        
        let caguasSKSpriteNode:SKSpriteNode = TestClass().caguasBezierPathToSKSpriteNode(bpCaguas: caguasbp)
        containerNode.addChild(caguasSKSpriteNode)
        
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
        
        
        
        
        self.addChild(backgroundSKSpriteNode)
        self.addChild(containerNode)
        //self.addChild(containerNodeTwo)

        //self.addChild(caboRojoSKSpriteNode)
        //self.addChild(hormiguerosSKSpriteNode)
        

        }

       func nodesContainer() -> SKNode{
           let nodes_Container = SKNode()
           //nodes_Container.color = UIColor.white
           //nodes_Container.size = CGSize(width: self.size.width * 0.90, height:self.size.height * 0.90)
           //nodes_Container.anchorPoint = CGPoint.zero
           //nodes_Container.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
           return  nodes_Container
       }
    
        func nodesContainerTwo() -> SKNode{
            let nodes_ContainerTwo = SKNode()
            //nodes_Container.color = UIColor.white
            //nodes_Container.size = CGSize(width: self.size.width * 0.90, height:self.size.height * 0.90)
            //nodes_Container.anchorPoint = CGPoint.zero
            //nodes_Container.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
            return  nodes_ContainerTwo
        }
    
        func prBackground() ->SKSpriteNode {
        let backgroundNode = SKSpriteNode()
        backgroundNode.color = UIColor.black
        backgroundNode.size = CGSize(width: self.size.width * 0.90, height:self.size.height * 0.90)
        //nodes_Container.anchorPoint = CGPoint.zero
        backgroundNode.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        return backgroundNode
            
    }
       override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            guard let touch = touches.first else {
            return
        }
             
        let touchLocation = touch.location(in: self)
        let touchedNode = self.physicsWorld.body(at:touchLocation)

        for child in containerNode.children {
            if let spriteNode = child as? SKSpriteNode {
                    if(touchedNode?.node?.name == spriteNode.name){
                        spriteNode.color = .brown
                        spriteNode.colorBlendFactor = 0.5
                    }

                  }

                }
        /*for childTwo in containerNodeTwo.children {
            if let spriteNodeTwo = childTwo as? SKSpriteNode {
                //if (touchedNode.contains(child.physicsBody)){
                    if(touchedNode.name == spriteNodeTwo.name){
                        spriteNodeTwo.color = .brown
                        spriteNodeTwo.colorBlendFactor = 0.5
                    }

                  }

                }*/
               
            

            
          }
}
/*                   override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    guard let touch = touches.first else {
    return
}
     
let touchLocation = touch.location(in: self)
let touchedNode = self.atPoint(touchLocation)
for i in nodeNames.indices{
    if(touchedNode.name == nodeNames[i]){
        for child in containerNode.children {
            if let spriteNode = child as? SKSpriteNode {
                if(touchedNode.name == spriteNode.name){
                spriteNode.color = .brown
                spriteNode.colorBlendFactor = 0.5
            }

          }

        }
       }
    

    }
  }**/

