//
//  LauchScreenView.swift
//  IOSDevDesafio01
//
//  Created by Bruno Matos Silva on 24/09/23.
//

import UIKit

class LaunchScreenView: UIView {
    
    private lazy var imgLogo: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "logo")
        img.contentMode = .scaleAspectFill
        return img
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = CustomColor.appBlue
        addElements()
        configConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func addElements() {
        addSubview(imgLogo)
    }
    
    private func configConstraints() {
        
        NSLayoutConstraint.activate([
            imgLogo.centerXAnchor.constraint(equalTo: centerXAnchor),
            imgLogo.centerYAnchor.constraint(equalTo: centerYAnchor),
            imgLogo.widthAnchor.constraint(equalToConstant: 210),
            imgLogo.heightAnchor.constraint(equalTo: imgLogo.heightAnchor)
        ])
        
    }
}
