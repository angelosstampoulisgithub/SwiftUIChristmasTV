//
//  PlayerView.swift
//  SwiftUIChristmasTV
//
//  Created by Angelos Staboulis on 12/12/24.
//

import Foundation
import UIKit
import AVKit
class PlayerView:UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupPlayerView()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupPlayerView()
    }
    func setupPlayerView(){
        let audio = Bundle.main.path(forResource: "jingle", ofType: "wav")
        let audioPlayer = AVPlayer(url: URL(filePath: audio!))
        let layer = AVPlayerLayer(player: audioPlayer)
        audioPlayer.play()
        self.layer.addSublayer(layer)
    }
}
