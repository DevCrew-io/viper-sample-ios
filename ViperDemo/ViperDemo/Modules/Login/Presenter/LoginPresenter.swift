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
    var interactor: LoginViewInteractorProtocol?
   
    init (loginRouter: LoginRouting) {
        self.loginRouter = loginRouter
    }
}

extension LoginPresenter: LoginViewPresentation {
    
    func loginSuccess() {
        view?.hideActivityIndicator()
        self.showHomeView()
    }
    
    func loginFailure(errorMessage:String) {
        view?.hideActivityIndicator()
        view?.onLoginFailure(errorMessage:errorMessage)
    }
    
    func login(with email: String, password: String) {
        view?.showActivityIndicator()
        interactor?.login(email: email, password: password)
    }
    
    func showSignUp() {
        self.loginRouter.showSignUp()
    }
    func showHomeView() {
        self.loginRouter.showHome()
    }
}
