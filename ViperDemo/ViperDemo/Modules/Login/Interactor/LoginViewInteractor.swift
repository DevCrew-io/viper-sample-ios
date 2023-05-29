//
//  LoginViewInteractor.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 22/05/2023.
//
import Firebase
import KeyChainManager

class LoginViewInteractor: LoginViewInteractorProtocol {
    weak var presenter: LoginViewPresentation?
    var localDataStorage: LocalDataStorageInterface?
    func alreadyLogedIn() {
        if (localDataStorage?.userAlreadyLogedIn(forKey: "email"))! { self.presenter?.loginSuccess()
        }

    }
    func login(email: String, password: String) {
        DispatchQueue.main.async {
            FirebaseAuth.Auth.auth().signIn(withEmail: email, password: password) { [weak self] result, error in
                
                guard let self = self else { return}
                
                if error != nil {
                    self.presenter?.loginFailure(errorMessage: error?.localizedDescription ?? "Something went wrong.")
                } else {
                    localDataStorage?.storeUser(email: email)
                    self.presenter?.loginSuccess()
                }
            }
        }
        
    }
}
