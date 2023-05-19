//
//  SignUpProtocols.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit

// MARK: - PRESENTER -> VIEW
protocol SignUpViewProtocol: AnyObject {
    var presenter:SignUpViewPresentation? {get set}
}

// MARK: - VIEW -> PRESENTER
protocol SignUpViewPresentation: AnyObject {
    var view: SignUpViewProtocol? {get set}
    var router:SignUpRouting? {get set}
    var interactor:SignUpViewInteractorInPut? {get set}
    func dismissSignUpVC()
}

// MARK: - PRESENTER -> INTERACTOR
protocol SignUpViewInteractorInPut {
    var presenter:SignUpViewInteractoOutPut? {get set}
    
}

// MARK: -  INTERACTOR -> PRESENTER
protocol SignUpViewInteractoOutPut {
    
}


// MARK: - PRESENTER -> ROUTER

protocol SignUpRouting {
    func dismissSignUp()
    func showHome()
}
