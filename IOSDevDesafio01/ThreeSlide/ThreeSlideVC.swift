//
//  ThreeSlideVC.swift
//  IOSDevDesafio01
//
//  Created by Bruno Matos Silva on 24/09/23.
//

import UIKit

class ThreeSlideVC: UIViewController {
    
    var screen: ThreeSlideScreen?
    
    override func loadView() {
        screen = ThreeSlideScreen()
        view = screen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
        navigationController?.navigationBar.tintColor = CustomColor.appBlue
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)

    }

}

extension ThreeSlideVC: ThreeSlideScreenProtocol {
    func tappedNextPageButton() {
        let vc = RegisterVC()
        present(vc, animated: true)
    }
    
    
}
