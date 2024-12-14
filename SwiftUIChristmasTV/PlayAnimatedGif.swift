//
//  PlayAnimatedGif.swift
//  SwiftUIChristmasTV
//
//  Created by Angelos Staboulis on 12/12/24.
//

import Foundation
import SwiftUI
class PlayAnimatedGif:UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    func setupView(){
        guard let filename = Bundle.main.path(forResource: "santa", ofType: "gif") else{
            return
        }
        let urlFilename = URL(fileURLWithPath: filename)
        CGAnimateImageAtURLWithBlock(urlFilename as CFURL, nil) { index, image, stop in
                let headerView = UIView(frame: CGRect(x: 20, y: 0, width: 600, height: 90))
                
        
                let rightImage = UIImageView(image: UIImage(cgImage: image))
                rightImage.frame = CGRect(x: 152, y: 420, width: 100, height: 95)
                headerView.addSubview(rightImage)
                
                self.addSubview(headerView)
                headerView.translatesAutoresizingMaskIntoConstraints = false
                headerView.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -225).isActive = true
                headerView.topAnchor.constraint(equalTo: self.topAnchor, constant:-50).isActive = true
        }
    }
  

}
