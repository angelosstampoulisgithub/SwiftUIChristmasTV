//
//  PlayerViewTV.swift
//  SwiftUIChristmasTV
//
//  Created by Angelos Staboulis on 12/12/24.
//

import Foundation
import SwiftUI
struct PlayerViewTV:UIViewRepresentable{
    typealias UIViewType = PlayerView
    func makeUIView(context: Context) -> PlayerView {
        return PlayerView()
    }
    func updateUIView(_ uiView: PlayerView, context: Context) {
        
    }
    
}
