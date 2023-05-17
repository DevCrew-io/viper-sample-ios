//
//  LoginViewProtocols.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import Foundation

// MARK: - PRESENTER -> VIEW
protocol LoginViewProtocol: AnyObject {
    
}

// MARK: - VIEW -> PRESENTER
protocol LoginViewPresentation: AnyObject {
    
}

// MARK: - PRESENTER -> INTERACTOR


// MARK: -  INTERACTOR -> PRESENTER


// MARK: - PRESENTER -> ROUTER

protocol LoginRouting {
    func showSignUp()
    func showHome()
}
