//
//  SignUpProtocols.swift
//  ViperDemo
//
//  Created by Ghullam Abbas on 17/05/2023.
//

import UIKit

// MARK: - PRESENTER -> VIEW
protocol SignUpViewProtocol: AnyObject {
    
}

// MARK: - VIEW -> PRESENTER
protocol SignUpViewPresentation: AnyObject {
    func dismissSignUpVC()
}

// MARK: - PRESENTER -> INTERACTOR


// MARK: -  INTERACTOR -> PRESENTER


// MARK: - PRESENTER -> ROUTER

protocol SignUpRouting {
    func dismissSignUp()
    func showHome()
}
