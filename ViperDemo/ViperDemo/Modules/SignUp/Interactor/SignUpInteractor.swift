//
//  SignUpInteractor.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import Firebase
import KeyChainManager
class SignupInteractor: SignUpViewInteractor {
    
   weak var presenter: SignUpViewPresentation?
    var localDataStorage: LocalDataStorageInterface?
    
    func didCreateUser(email: String, password: String) {
        
        FirebaseAuth.Auth.auth().signIn(withEmail: email, password: password) { [weak self] result, error in
            guard let self = self else { return }
            guard error != nil else {
                self.presenter?.onFailure(errorMessage: error?.localizedDescription ?? "Something went wrong")
                return
            }
            self.showCreateAccount(email: email, password: password)
        }
    }
    
    func showCreateAccount(email: String, password: String) {
        FirebaseAuth.Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            guard let self = self else { return }
            guard error == nil else {
                
                self.presenter?.onFailure(errorMessage: error?.localizedDescription ?? "Something went wrong")
                return
            }
            localDataStorage?.storeUser(email: email)
            self.presenter?.onSuccess()
        }
    }
}

