//
//  BigEggs.swift
//  FunnyEggs
//
//  Created by Ульяна Гритчина on 30.05.2022.
//

import Foundation
import SpriteKit
import AVFoundation

class BigEggsScene: SKScene {
    var eggs = 0
    var priEggs = 50
    var priEgg = SKSpriteNode(imageNamed: "egg\(1)")
    var egg = SKSpriteNode(imageNamed: "egg\(Int.random(in: 1...5))")
    
    override func didMove(to view: SKView) {
        
        let background = SKSpriteNode(imageNamed: "back")
        background.scale(to: CGSize(width: 450,
                                    height: 600))
        background.position = CGPoint(x: 210, y: 300)
        background.zPosition = -1
        
        let texture = SKTexture(imageNamed: "tree")
        let tree = SKSpriteNode(texture: texture)
        tree.size = CGSize(width: 100, height: 170)
        tree.position = CGPoint(x: 350, y: 100)
        tree.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 20, height: 170))
        tree.physicsBody?.isDynamic = false
        
        addChild(background)
        addChild(tree)
        
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        eggs += 1
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        if eggs == priEggs {
            if eggs < 200 {
                priEggs += 50
                priEgg = SKSpriteNode(imageNamed: "egg\(eggs)")
                priEgg.position = location
                priEgg.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 90, height: 90))
                priEgg.size = CGSize(width: 100, height: 100)
                addChild(priEgg)
            } else {
                priEggs += 50
                priEgg = SKSpriteNode(imageNamed: "logo")
                priEgg.position = location
                priEgg.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 90, height: 50))
                priEgg.size = CGSize(width: 100, height: 50)
                addChild(priEgg)
            }
        }
        egg = SKSpriteNode(imageNamed: "egg\(Int.random(in: 1...5))")
        egg.position = location
        egg.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 20, height: 40))
        egg.size = CGSize(width: 60, height: 40)
        addChild(egg)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            priEgg.position.x = location.x
            priEgg.position.y = location.y
        }
    }
    
}

