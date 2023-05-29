//
//  SignUpPresenter.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import Foundation

class SignUpPresenter {
    weak var view: SignUpViewProtocol?
    var router: SignUpRouting?
    var interactor: SignUpViewInteractor?
    
    init(router: SignUpRouting) {
        
        self.router = router
    }
}

extension SignUpPresenter: SignUpViewPresentation {
    func signUp(email: String,password: String) {
        view?.showActivityIndicator()
        self.interactor?.didCreateUser(email:email , password: password)
    }
    func onFailure(errorMessage: String) {
        
        view?.hideActivityIndicator()
        view?.onSignUpFailure(error: errorMessage)
    }
    func onSuccess() {
        view?.hideActivityIndicator()
        self.router?.showNewsView()
    }
    func dismissSignUpVC() {
        self.router?.dismissSignUp()
    }
    
}

