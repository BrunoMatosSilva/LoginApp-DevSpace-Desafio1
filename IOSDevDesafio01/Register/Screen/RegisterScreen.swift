//
//  RegisterScreen.swift
//  IOSDevDesafio01
//
//  Created by Bruno Matos Silva on 24/09/23.
//

import UIKit

protocol RegisterScreenProtocol: AnyObject {
    func tappedRegisterButton()
}

class RegisterScreen: UIView {
    
    private weak var delegate: RegisterScreenProtocol?
    
    public func delegate(delegate: RegisterScreenProtocol?){
        self.delegate = delegate
    }
    
    private lazy var imgSlide: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "register")
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Get Started"
        label.font = UIFont(name: CustomFont.MontserratBold, size: 36)
        label.textColor = CustomColor.appDarkGray
        return label
    }()
    
    private lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "by creating a free account"
        label.font = UIFont(name: CustomFont.MontserratLight, size: 14)
        label.textColor = CustomColor.appDarkGray
        return label
    }()
    
    private lazy var titleFormLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sign Up"
        label.font = UIFont(name: CustomFont.MontserratBold, size: 24)
        label.textColor = CustomColor.appBlue
        return label
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Full Name"
        label.font = UIFont(name: CustomFont.MontserratBold, size: 12)
        label.textColor = .black
        return label
    }()
    
    lazy var nameTextField: UITextField = {
        let input = UITextField()
        input.translatesAutoresizingMaskIntoConstraints = false
        input.autocorrectionType = .no
        input.backgroundColor = CustomColor.appBgInput
        input.borderStyle = .roundedRect
        input.keyboardType = .emailAddress
        input.textColor = .black
        input.clipsToBounds = true
        input.layer.cornerRadius = 8
        input.returnKeyType = .done
        return input
    }()
    
    private lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Email"
        label.font = UIFont(name: CustomFont.MontserratBold, size: 12)
        label.textColor = .black
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let input = UITextField()
        input.translatesAutoresizingMaskIntoConstraints = false
        input.autocorrectionType = .no
        input.backgroundColor = CustomColor.appBgInput
        input.borderStyle = .roundedRect
        input.keyboardType = .emailAddress
        input.textColor = .black
        input.clipsToBounds = true
        input.layer.cornerRadius = 8
        input.keyboardType = .emailAddress
        input.autocapitalizationType = .none
        input.autocorrectionType = .no
        input.returnKeyType = .done
        return input
    }()
    
    private lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Password"
        label.font = UIFont(name: CustomFont.MontserratBold, size: 12)
        label.textColor = .black
        return label
    }()
    
    lazy var passwordTextField: UITextField = {
        let input = UITextField()
        input.translatesAutoresizingMaskIntoConstraints = false
        input.autocorrectionType = .no
        input.backgroundColor = CustomColor.appBgInput
        input.borderStyle = .roundedRect
        input.keyboardType = .emailAddress
        input.textColor = .black
        input.clipsToBounds = true
        input.layer.cornerRadius = 8
        input.textContentType = .oneTimeCode
        input.isSecureTextEntry = true
        input.returnKeyType = .done
        return input
    }()
    
    let checkButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(UIImage(systemName: "square"), for: .normal)
        btn.setImage(UIImage(systemName: "checkmark.square.fill"), for: .selected)
        btn.addTarget(self, action: #selector(checkButtonTapped), for: .touchUpInside)
        return btn
    }()
    
    var isChecked = false
    @objc func checkButtonTapped() {
        isChecked.toggle()
        checkButton.isSelected = isChecked
    }
    
    private lazy var termsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "I agree to the Terms & Conditions and Privacy \nPolicy"
        label.font = UIFont.systemFont(ofSize: 12)
        label.numberOfLines = 0
        label.textAlignment = .left
        label.textColor = .black
        return label
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Create Account", for: .normal)
        button.titleLabel?.font = UIFont(name: CustomFont.MontserratBold, size: 16)
        button.backgroundColor = CustomColor.appBlue
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius =  8
        button.addTarget(self, action: #selector(tappedRegisterButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedRegisterButton(_ sender: UIButton){
        delegate?.tappedRegisterButton()
    }
    
    private lazy var oneLineView: UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1).cgColor
        line.layer.shadowOpacity = 1
        line.layer.shadowOffset = CGSize(width: -10, height: 0)
        line.layer.shadowRadius = 8
        line.layer.shouldRasterize = true
        line.layer.masksToBounds = false
        line.layer.rasterizationScale = UIScreen.main.scale
        line.backgroundColor = CustomColor.appBgInput
        return line
    }()
    
    private lazy var orLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "or"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()
    
    private lazy var twoLineView: UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.layer.shadowColor = UIColor(red: 48/255, green: 42/255, blue: 39/255, alpha: 0.1).cgColor
        line.layer.shadowOpacity = 1
        line.layer.shadowOffset = CGSize(width: 0, height: -10)
        line.layer.shadowRadius = 8
        line.layer.shouldRasterize = true
        line.layer.masksToBounds = false
        line.layer.rasterizationScale = UIScreen.main.scale
        line.backgroundColor = CustomColor.appBgInput
        return line
    }()
    
    private lazy var googleSign: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Sign up with Google", for: .normal)
        btn.setTitleColor(CustomColor.appBlue, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        btn.clipsToBounds = true
        btn.layer.cornerRadius =  8
        btn.layer.borderWidth = 2
        btn.layer.borderColor = CustomColor.appBlue.cgColor
        return btn
    }()
    
    private lazy var logoGoogle: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "google")
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addElements()
        configConstaints()
    }
    
    private func addElements() {
        addSubview(imgSlide)
        imgSlide.addSubview(titleLabel)
        imgSlide.addSubview(subtitleLabel)
        addSubview(titleFormLabel)
        addSubview(nameLabel)
        addSubview(nameTextField)
        addSubview(emailLabel)
        addSubview(emailTextField)
        addSubview(passwordLabel)
        addSubview(passwordTextField)
        addSubview(checkButton)
        addSubview(termsLabel)
        addSubview(registerButton)
        addSubview(oneLineView)
        addSubview(orLabel)
        addSubview(twoLineView)
        addSubview(googleSign)
        googleSign.addSubview(logoGoogle)
    }
    
    private func configConstaints() {
        NSLayoutConstraint.activate([
            
            imgSlide.centerXAnchor.constraint(equalTo: centerXAnchor),
            imgSlide.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            imgSlide.widthAnchor.constraint(equalToConstant: 300),
            imgSlide.heightAnchor.constraint(equalTo: imgSlide.heightAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: imgSlide.topAnchor, constant: 120),
            titleLabel.centerXAnchor.constraint(equalTo: imgSlide.centerXAnchor),
            
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            subtitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            titleFormLabel.topAnchor.constraint(equalTo: subtitleLabel.topAnchor, constant: 50),
            titleFormLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            nameLabel.topAnchor.constraint(equalTo: titleFormLabel.bottomAnchor, constant: 30),
            nameLabel.leadingAnchor.constraint(equalTo: titleFormLabel.leadingAnchor),
            
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
            nameTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            nameTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            nameTextField.heightAnchor.constraint(equalToConstant: 45),
            
            emailLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 20),
            emailLabel.leadingAnchor.constraint(equalTo: titleFormLabel.leadingAnchor),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 5),
            emailTextField.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            emailTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            emailTextField.heightAnchor.constraint(equalTo: nameTextField.heightAnchor),
            
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordLabel.leadingAnchor.constraint(equalTo:titleFormLabel.leadingAnchor ),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 5),
            passwordTextField.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalTo: nameTextField.heightAnchor),
            
            checkButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10),
            checkButton.leadingAnchor.constraint(equalTo: titleFormLabel.leadingAnchor),
            checkButton.widthAnchor.constraint(equalToConstant: 30),
            checkButton.heightAnchor.constraint(equalToConstant: 30),
            
            termsLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 15),
            termsLabel.leadingAnchor.constraint(equalTo: checkButton.trailingAnchor, constant: 7),
            
            registerButton.topAnchor.constraint(equalTo: termsLabel.bottomAnchor, constant: 20),
            registerButton.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            registerButton.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            registerButton.heightAnchor.constraint(equalTo: nameTextField.heightAnchor),
            
            oneLineView.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 25),
            oneLineView.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            oneLineView.widthAnchor.constraint(equalToConstant: 140),
            oneLineView.heightAnchor.constraint(equalToConstant: 1),
            
            orLabel.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 16),
            orLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            twoLineView.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 25),
            twoLineView.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            twoLineView.widthAnchor.constraint(equalToConstant: 140),
            twoLineView.heightAnchor.constraint(equalToConstant: 1),
            
            googleSign.topAnchor.constraint(equalTo: oneLineView.bottomAnchor, constant: 25),
            googleSign.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            googleSign.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            googleSign.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
            
            logoGoogle.centerYAnchor.constraint(equalTo: googleSign.centerYAnchor),
            logoGoogle.trailingAnchor.constraint(equalTo: googleSign.leadingAnchor, constant: 90),
            logoGoogle.widthAnchor.constraint(equalToConstant: 25),
            logoGoogle.heightAnchor.constraint(equalToConstant: 25),
            
        ])
    }
    
    public func configTextFieldDelegate(delegate: UITextFieldDelegate){
        nameTextField.delegate = delegate
        emailTextField.delegate = delegate
        passwordTextField.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
