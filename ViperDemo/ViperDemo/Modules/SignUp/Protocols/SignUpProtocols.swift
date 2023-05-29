//
//  SignUpProtocols.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit

// MARK: - PRESENTER -> VIEW
protocol SignUpViewProtocol: AnyObject {
    var presenter: SignUpViewPresentation? {get set}
    func onSignUpFailure(error: String)
    func showActivityIndicator()
    func hideActivityIndicator()
}

// MARK: - VIEW -> PRESENTER
protocol SignUpViewPresentation: AnyObject {
    var view: SignUpViewProtocol? {get set}
    var router: SignUpRouting? {get set}
    var interactor: SignUpViewInteractor? {get set}
    func dismissSignUpVC()
    func signUp(email: String,password: String)
    func onSuccess()
    func onFailure(errorMessage: String)
    
}

// MARK: - PRESENTER -> INTERACTOR
protocol SignUpViewInteractor {
    var presenter: SignUpViewPresentation? {get set}
    func didCreateUser(email: String,password: String)
    
}

// MARK: - PRESENTER -> ROUTER

protocol SignUpRouting {
    func dismissSignUp()
    func showNewsView()
}
