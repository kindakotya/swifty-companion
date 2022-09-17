//
//  LoginViewController.swift
//  Swifty Companion
//
//  Created by Godrick Mayweather on 13.09.2022.
//

import UIKit
import Combine
import SnapKit

class LoginViewController: UIViewController {

    private let loginLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Введите имя пользователя"
        label.font = .systemFont(ofSize: 17.0, weight: .regular)
        label.textColor = .black
        label.numberOfLines = 1
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    private let loginTextField: UITextField = {
        let textField: UITextField = UITextField()
        textField.placeholder = "login"
        textField.isEnabled = true
        textField.borderStyle = .roundedRect
        
        return textField
    }()
    
    private lazy var searchButton: UIButton = {
        let button: UIButton = UIButton(type: .system)
        button.setTitle("Search", for: .normal)
        //button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.isEnabled = false
        button.addTarget(self, action: #selector(self.search), for: .touchUpInside)
        return button
    }()

    private let loginStackView: UIStackView = {
        let stack: UIStackView = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.distribution = .fillEqually
        stack.spacing = 10
        return stack
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
        //loginTextField.text?.publisher.assign(to: text, on: loginLabel)
        self.setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
//        self.loginStackView.addArrangedSubview(self.loginLabel)
//        self.loginStackView.addArrangedSubview(self.loginTextField)
//        //self.loginStackView.addArrangedSubview(self.searchButton)
        self.view.addSubview(self.loginLabel)
        self.view.addSubview(self.loginTextField)
        self.view.addSubview(self.searchButton)
        self.setupConstraints()
    }
    
    func setupConstraints() {
        self.loginLabel.snp.makeConstraints() { make in
            make.center.equalToSuperview()
        }
        self.loginTextField.snp.makeConstraints() { make in
            make.leading.equalTo(self.loginLabel.snp.leading)
            make.trailing.equalTo(self.loginLabel.snp.trailing)
            make.top.equalTo(self.loginLabel.snp.bottom).offset(10)
        }
        self.searchButton.snp.makeConstraints() { make in
            make.top.equalTo(self.loginTextField.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
        }
        self.searchButton.isEnabled
//        self.loginStackView.snp.makeConstraints() { make in
//            make.center.equalToSuperview()
//            make.height.equalTo(self.view.frame.height / 3)
//            make.width.equalTo(self.view.frame.width / 2)
//        }
    }
    
    @objc func search() {
        
    }
    
}
extension UITextField {
    public var textPublisher: AnyPublisher<String, Never> {
        NotificationCenter
    }
}
