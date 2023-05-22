//
//  LoginVC.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit
import Firebase
import PKHUD

class LoginVC: UIViewController {
    
    // MARK: - UIControlls
    private let scrollView :UIScrollView = {
        let scrollView = UIScrollView()
        return scrollView
    }()
    private let logoImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.tintColor = .link
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    private let emailField: UITextField = {
        let field = UITextField()
        field.autocorrectionType = .no
        field.autocapitalizationType = .none
        field.returnKeyType = .continue
        field.layer.cornerRadius = 12
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.lightGray.cgColor
        field.placeholder = "Email address..."
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
        field.leftViewMode = .always
        field.backgroundColor = .secondarySystemBackground
        return field
    }()
    private let passwordField: UITextField = {
        let field = UITextField()
        field.autocorrectionType = .no
        field.autocapitalizationType = .none
        field.returnKeyType = .done
        field.layer.cornerRadius = 12
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.lightGray.cgColor
        field.placeholder = "Password..."
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
        field.leftViewMode = .always
        field.backgroundColor = .secondarySystemBackground
        field.isSecureTextEntry = true
        return field
    }()
    
    private let loginButton:UIButton = {
        let button = UIButton()
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .link
        button.layer.cornerRadius = 12
        button.layer.masksToBounds = true
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return button
    }()
   
    // MARK: - Properties
    var presenter: LoginViewPresentation?
    
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Log In"
        view.backgroundColor = .systemBackground
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign Up", style: .done, target: self, action: #selector(didTabSignUp))
        loginButton.addTarget(self, action: #selector(loginButtonTabed), for: .touchUpInside)
        emailField.delegate = self
        passwordField.delegate = self
        
        
        // Add subviews
        self.view.addSubview(scrollView)
        scrollView.addSubview(logoImageView)
        scrollView.addSubview(emailField)
        scrollView.addSubview(passwordField)
        scrollView.addSubview(loginButton)
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        scrollView.frame = self.view.bounds
        let size = view.width/4
        logoImageView.frame = CGRect(x: (view.width-size)/2, y: 60, width:size , height: size)
        emailField.frame = CGRect(x: 30, y: logoImageView.bottom+10, width: scrollView.width-60, height: 52)
        passwordField.frame = CGRect(x: 30, y: emailField.bottom+10, width: scrollView.width-60, height: 52)
        loginButton.frame = CGRect(x: 30, y: passwordField.bottom+10, width: scrollView.width-60, height: 52)
       
    }
    // MARK: - IBAction
    @objc func loginButtonTabed() {
        guard let email = emailField.text, let password = passwordField.text,
              !email.isEmpty, !password.isEmpty, password.count >= 6 else {
                  alertUserLoginError()
                  return
              }
        self.presenter?.login(with: email, password: password)

    }
   
    func alertUserLoginError(message:String = "Please enter all information to login...") {
        let alert = UIAlertController(title: "Oops", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler:nil))
        self.present(alert, animated: true)
    }
    @objc func didTabSignUp() {
        self.presenter?.showSignUp()
//        let vc = RegisteredViewController()
//        vc.title = "Sign up"
//        navigationController?.pushViewController(vc, animated: true)
    }
    
}
// MARK: - UITextField Delegate
extension LoginVC:UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if (textField == emailField) {
            passwordField.becomeFirstResponder()
        }
        else if (textField == passwordField) {
            loginButtonTabed()
        }
        return true
    }
}


// MARK: - LoginView Protocol Implementation
extension LoginVC: LoginViewProtocol {
    func onLoginFailure(errorMessage:String) {
        self.alertUserLoginError(message: errorMessage)
    }
    func showActivityIndicator() {
        HUD.show(.progress)
    }
    func hideActivityIndicator() {
        HUD.hide()
    }
}
