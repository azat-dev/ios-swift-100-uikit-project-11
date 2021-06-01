//
//  GameScene.swift
//  Project11
//
//  Created by Azat Kaiumov on 01.06.2021.
//

import SpriteKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "background.jpg")
        background.zPosition = -1
        background.position = .init(x: 512, y: 384)
        background.blendMode = .replace
        addChild(background)
        
       physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
            return
        }
        
        let box = SKSpriteNode(color: .red, size: .init(width: 64, height: 64))
        box.position = touch.location(in: self)
        box.physicsBody = SKPhysicsBody(rectangleOf: .init(width: 64, height: 64))
        addChild(box)
    }
}
