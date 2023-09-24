//
//  RegisterVC.swift
//  IOSDevDesafio01
//
//  Created by Bruno Matos Silva on 24/09/23.
//

import UIKit

class RegisterVC: UIViewController {
    
    var screen: RegisterScreen?
    
    override func loadView() {
        screen = RegisterScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        screen?.configTextFieldDelegate(delegate: self)
    }
}

extension RegisterVC: RegisterScreenProtocol {
    
    func tappedRegisterButton() {
        print(#function)
    }
    
    
}

extension RegisterVC: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        let name: String = screen?.nameTextField.text ?? ""
        let email: String = screen?.emailTextField.text ?? ""
        let password: String = screen?.passwordTextField.text ?? ""
        
        if !name.isEmpty && !email.isEmpty && !password.isEmpty {
            screen?.registerButton.isEnabled = true
            screen?.registerButton.backgroundColor = CustomColor.appBlue
            screen?.registerButton.setTitleColor(.white, for: .normal)
        } else {
            screen?.registerButton.isEnabled = false
            screen?.registerButton.backgroundColor = .black.withAlphaComponent(0.4)
            screen?.registerButton.setTitleColor(.white.withAlphaComponent(0.4), for: .normal)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
