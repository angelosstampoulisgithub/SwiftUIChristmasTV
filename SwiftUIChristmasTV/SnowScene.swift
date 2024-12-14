//
//  SnowScene.swift
//  SwiftUIChristmasTV
//
//  Created by Angelos Staboulis on 12/12/24.
//

import Foundation
import SpriteKit
class SnowScene:SKScene{
    var snowEmitter = SKEmitterNode(fileNamed: "Snow.sks") ?? .init()
    var background = SKSpriteNode(imageNamed: "christmas")

    override func didMove(to view: SKView) {
           background.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
           self.addChild(background)
           self.addChild(snowEmitter)
           snowEmitter.position.y = 600
           snowEmitter.particlePositionRange.dy = self.frame.height * 1.5
           snowEmitter.particlePositionRange.dx = self.frame.width * 2.5
    }
}
