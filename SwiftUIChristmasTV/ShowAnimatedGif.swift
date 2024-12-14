//
//  ShowAnimatedGif.swift
//  SwiftUIChristmasTV
//
//  Created by Angelos Staboulis on 12/12/24.
//

import Foundation
import SwiftUI
struct ShowAnimatedGif:UIViewRepresentable{
    typealias UIViewType = PlayAnimatedGif
    func makeUIView(context: Context) -> PlayAnimatedGif {
        return PlayAnimatedGif()
    }
    func updateUIView(_ uiView: PlayAnimatedGif, context: Context) {
      
    }
    
}
