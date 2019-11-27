//
//  InteractiveScene.swift
//  InteractiveCharacter
//
//  Created by Pratibha Gupta on 26/11/19.
//  Copyright © 2019 Sapient. All rights reserved.
//

import UIKit
import SpriteKit
import CoreGraphics
let π = CGFloat(M_PI)

public extension CGFloat {
    /**
     * Converts an angle in degrees to radians.
     */
    public func degreesToRadians() -> CGFloat {
        return π * self / 180.0
    }
    
    /**
     * Converts an angle in radians to degrees.
     */
    public func radiansToDegrees() -> CGFloat {
        return self * 180.0 / π
    }
}
class InteractiveScene: SKScene {
    //var shadow: SKNode!
    var lowerTorso: SKNode!
    var upperTorso: SKNode!
    var upperArmFront: SKNode!
   // var lowerArmFront: SKNode!
   //var fistFront: SKNode!
    var head: SKNode!
    var foot: SKNode!
    let upperArmAngleDeg: CGFloat = -10
    let lowerArmAngleDeg: CGFloat = 130
    //var upperArmBack: SKNode!
   // var lowerArmBack: SKNode!
    var upperLeg: SKNode!
    var lowerLeg: SKNode!
    var firstTouch = false
    let targetNode = SKNode()
    let upperLegAngleDeg: CGFloat = 22
    let lowerLegAngleDeg: CGFloat = -30
    

    override func didMove(to view: SKView) {
        lowerTorso = childNode(withName: "torso_lower")
        upperTorso = lowerTorso.childNode(withName: "torso_upper")
        upperArmFront = upperTorso.childNode(withName: "arm_upper_front")
        head = upperTorso.childNode(withName: "head")
        upperLeg = lowerTorso.childNode(withName: "leg_upper_back")
        lowerLeg = upperLeg.childNode(withName: "leg_lower_back")
        

        //lowerArmFront = upperArmFront.childNode(withName: "arm_lower_front")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
//        if !firstTouch {
//            for c in head.constraints! {
//                let constraint = c
//                constraint.enabled = true
//            }
//            firstTouch = true
//        }
        
        for touch: AnyObject in touches {
            let location = touch.location(in: self)
//
//            let moveRight = SKAction.scaleX(to: self.head.xScale, duration: 2)//SKAction.moveBy(x: frame.size.width/2.8, y: 0, duration: 2)
//            let moveLeft = SKAction.scaleX(to: (self.head.xScale * -1), duration: 2)//SKAction.moveBy(x: -frame.size.width/2.8, y: 0, duration: 2)
//            let moveBackAndForth = SKAction.repeatForever(SKAction.sequence([moveRight, moveLeft]))
//            self.head.run(moveBackAndForth)
            let kick = SKAction.reach(to: location, rootNode: upperLeg, duration: 0.1)
            
            let restore = SKAction.run {
                self.upperLeg.run(SKAction.rotate(toAngle: self.upperLegAngleDeg.degreesToRadians(), duration: 0.1))
                self.lowerLeg.run(SKAction.rotate(toAngle: self.lowerLegAngleDeg.degreesToRadians(), duration: 0.1))}
                foot.run(SKAction.sequence([kick, restore]))
        
            
            
            }
        
            
//            if let node = object as? SKSpriteNode {
//            let spark = SKSpriteNode(imageNamed: "spark")
//            spark.position = node.position
//            spark.zPosition = 60
//            self.addChild(spark)
//            let fadeAndScaleAction = SKAction.group([
//                SKAction.fadeOut(withDuration: 0.2),
//                SKAction.scale(to: 0.1, duration: 0.2)])
//            let cleanUpAction = SKAction.removeFromParent()
//            spark.run(SKAction.sequence([fadeAndScaleAction, cleanUpAction]))
//            }
        
            //let lower = location.y < upperTorso.position.y + 10
//            if lower {
//                kickAt(location)
//            }
//            else {
               // let punch = SKAction.reach(to: location, rootNode: upperArmFront, duration: 0.1)
                /*let restore = SKAction.run {
                   // self.upperArmFront.run(SKAction.rotate(toAngle: (CGFloat(-10)).degreesToRadians(), duration: 0.1))
                    //lowerArmNode.run(SKAction.rotate(toAngle: self.lowerArmAngleDeg.degreesToRadians(), duration: 0.1))
                    self.head.xScale =
                        location.x < self.frame.midX ? -1.3 : 1.3
                    self.head.position.x = location.x < self.frame.midX ? 40 : -16
                }*/
              //  let checkIntersection = intersectionCheckAction(for: fistNode)
                //fistNode.run(SKAction.sequence([punch, checkIntersection, restore]))
           // }
           // targetNode.position = location
        
    }
    
}
