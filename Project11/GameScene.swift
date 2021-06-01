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
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
}
