//
//  LoginViewProtocols.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import Foundation

// MARK: - PRESENTER -> VIEW
protocol LoginViewProtocol: AnyObject {
    var presenter:LoginViewPresentation?{get set}
    func onLoginFailure(errorMessage:String)
    func showActivityIndicator()
    func hideActivityIndicator()
    
}

// MARK: - VIEW -> PRESENTER
protocol LoginViewPresentation: AnyObject {
    var view:LoginViewProtocol?{get set}
    var interactor:LoginViewInteractorProtocol?{get set}
    
    func login(with email:String,password:String)
    func showSignUp()
    func showHomeView()
    func loginSuccess()
    func loginFailure(errorMessage:String)
}

// MARK: - PRESENTER -> INTERACTOR
protocol LoginViewInteractorProtocol {
    var presenter:LoginViewPresentation?{get set}
    func login(email:String,password:String)
}

// MARK: - PRESENTER -> ROUTER

protocol LoginRouting {
    func showSignUp()
    func showNewsView()
}
