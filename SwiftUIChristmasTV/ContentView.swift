//
//  ContentView.swift
//  SwiftUIChristmasTV
//
//  Created by Angelos Staboulis on 12/12/24.
//

import SwiftUI
import SpriteKit
struct ContentView: View {
    @State var scene:SnowScene
    @State var text: String = ""
    @State var finalText: String = "Merry, Christmas"
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var position:Int = 0
    var body: some View {
        VStack {
            SpriteView(scene: scene)
                       .frame(width: UIScreen.main.bounds.width,
                              height: UIScreen.main.bounds.height)
                       .ignoresSafeArea()
                       .onAppear(perform: {
                           scene.size = UIScreen.main.bounds.size
                           scene.scaleMode = .fill
            }).overlay {
                Text(text).font(.largeTitle).frame(width:950,alignment:.leading)
                    .position(x:600,y:60)
                ShowAnimatedGif().frame(width:350,height:150)
                PlayerViewTV().onReceive(timer) { output in
                    if position < finalText.count {
                        text.append(finalText[position])
                    }
                    position = position + 1
                }
            }
        }
    }
   
}

#Preview {
    ContentView(scene: .init())
}
extension String {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}
