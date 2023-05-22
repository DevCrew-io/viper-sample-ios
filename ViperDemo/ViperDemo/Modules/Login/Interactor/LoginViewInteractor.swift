//
//  LoginViewInteractor.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 22/05/2023.
//
import Firebase

class LoginViewInteractor: LoginViewInteractorProtocol {
    weak var presenter: LoginViewPresentation?
    func login(email: String, password: String) {
        DispatchQueue.main.async {
            FirebaseAuth.Auth.auth().signIn(withEmail: email, password: password) { [weak self] result, error in
                
                guard let self = self else { return}
                
                if error != nil {
                    self.presenter?.loginFailure(errorMessage: error?.localizedDescription ?? "Some thing went wrong.")
                } else {
                    self.presenter?.loginSuccess()
                }
            }
        }
        
    }
}
