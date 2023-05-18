//
//  LoginPresenter.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit



class LoginPresenter {
    
    weak var view: LoginViewProtocol?
    private let loginRouter:LoginRouting
    
    init (loginRouter: LoginRouting) {
        self.loginRouter = loginRouter
    }
}

extension LoginPresenter: LoginViewPresentation {
    
    func showSignUp() {
        self.loginRouter.showSignUp()
    }
    func showHomeView() {
        self.loginRouter.showHome()
    }
}
