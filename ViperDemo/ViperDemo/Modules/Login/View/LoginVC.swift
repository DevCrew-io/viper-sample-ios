//
//  LoginVC.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit

class LoginVC: UIViewController {
    var loginPresenter:LoginViewPresentation!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - IBAction
    @IBAction func signUpButtonTabed(sender:UIButton) {
        loginPresenter.showHomeView()
    }
   

}

extension LoginVC: LoginViewProtocol {
    
}
