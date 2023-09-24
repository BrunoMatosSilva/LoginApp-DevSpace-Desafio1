//
//  ViewController.swift
//  IOSDevDesafio01
//
//  Created by Bruno Matos Silva on 23/09/23.
//

import UIKit

class OneSlideVC: UIViewController {
    
    var screen: OneSlideScreen?
    
    override func loadView() {
        screen = OneSlideScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        screen?.delegate(delegate: self)
    }

}

extension OneSlideVC: OneSlideScreenProtocol {
    func tappedNextPageButton() {
        let vc = TwoSlideVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

