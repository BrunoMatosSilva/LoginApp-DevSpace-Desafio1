//
//  TwoSlideVC.swift
//  IOSDevDesafio01
//
//  Created by Bruno Matos Silva on 24/09/23.
//

import UIKit

class TwoSlideVC: UIViewController {
    
    var screen: TwoSlideScreen?
    
    override func loadView() {
        screen = TwoSlideScreen()
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

extension TwoSlideVC: TwoSlideScreenProtocol {
    func tappedNextPageButton() {
        let vc = ThreeSlideVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
