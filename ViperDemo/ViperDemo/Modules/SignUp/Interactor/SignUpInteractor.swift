//
//  SignUpInteractor.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import Firebase
class SignupInteractor:SignUpViewInteractor {
    
   weak var presenter: SignUpViewPresentation?
    
    func didCreateUser(email: String, password: String) {
        
        FirebaseAuth.Auth.auth().signIn(withEmail: email, password: password) { [weak self] result, error in
            guard let self = self else { return }
            guard error != nil else {
                self.presenter?.onFailure(errorMessage: error?.localizedDescription ?? "Some thing went wrong")
                return
            }
            self.showCreateAccount(email: email, password: password)
        }
    }
    
    func showCreateAccount(email: String, password: String) {
        FirebaseAuth.Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            guard let self = self else { return }
            guard error == nil else {
                
                self.presenter?.onFailure(errorMessage: error?.localizedDescription ?? "Some thing went wrong")
                return
            }
            
            self.presenter?.onSuccess()
        }
    }
}

