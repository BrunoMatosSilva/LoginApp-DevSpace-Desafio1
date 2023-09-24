//
//  ThreeSlideScreen.swift
//  IOSDevDesafio01
//
//  Created by Bruno Matos Silva on 24/09/23.
//

import UIKit

protocol ThreeSlideScreenProtocol: AnyObject {
    func tappedNextPageButton()
}

class ThreeSlideScreen: UIView {

    private weak var delegate: ThreeSlideScreenProtocol?
    
    public func delegate(delegate: ThreeSlideScreenProtocol?) {
        self.delegate = delegate
    }
    
    private lazy var imgSlide: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "imgThree")
        img.contentMode = .scaleAspectFill
        return img
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Make connects with explora"
        label.font = UIFont(name: CustomFont.MontserratBold, size: 36)
        label.numberOfLines = 2
        label.textColor = CustomColor.appDarkGray
        return label
    }()
    
    private lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "To your dream trip"
        label.font = UIFont(name: CustomFont.MontserratLight, size: 24)
        label.textColor = CustomColor.appDarkGray
        return label
    }()
    
    private lazy var controllSlide: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "controllPageThree")
        return img
    }()
    
    private lazy var nextButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(UIImage(named: "arrow"), for: .normal)
        btn.tintColor = .white
        btn.clipsToBounds = true
        btn.layer.cornerRadius =  22.5
        btn.backgroundColor = .black
        btn.addTarget(self, action: #selector(tappedNextPageButton), for: .touchUpInside)
        return btn
    }()
    
    @objc func tappedNextPageButton() {
        delegate?.tappedNextPageButton()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addElements()
        configConstaints()
    }
    
    private func addElements() {
        addSubview(imgSlide)
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        addSubview(controllSlide)
        addSubview(nextButton)
    }
    
    private func configConstaints() {
        NSLayoutConstraint.activate([
            
            imgSlide.centerXAnchor.constraint(equalTo: centerXAnchor),
            imgSlide.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 180),
            imgSlide.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            imgSlide.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            imgSlide.heightAnchor.constraint(equalTo: imgSlide.heightAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: imgSlide.bottomAnchor, constant: 36),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            subtitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            controllSlide.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 58),
            controllSlide.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            controllSlide.widthAnchor.constraint(equalToConstant: 46),
            
            nextButton.centerYAnchor.constraint(equalTo: controllSlide.centerYAnchor),
            nextButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            nextButton.widthAnchor.constraint(equalToConstant: 45),
            nextButton.heightAnchor.constraint(equalToConstant: 45),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
