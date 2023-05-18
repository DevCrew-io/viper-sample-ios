//
//  SignUpPresenter.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import Foundation

class SignUpPresenter {
    weak var view:SignUpViewProtocol?
    private let router:SignUpRouting
    
    init(router: SignUpRouting) {
        
        self.router = router
    }
}

extension SignUpPresenter: SignUpViewPresentation {
    func dismissSignUpVC() {
        self.router.dismissSignUp()
    }
    
}
